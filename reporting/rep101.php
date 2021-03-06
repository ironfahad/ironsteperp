<?php
/**********************************************************************
    Copyright (C) FrontAccounting, LLC.
	Released under the terms of the GNU General Public License, GPL, 
	as published by the Free Software Foundation, either version 3 
	of the License, or (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
    See the License here <http://www.gnu.org/licenses/gpl-3.0.html>.
***********************************************************************/
$page_security = 'SA_CUSTPAYMREP';

// ----------------------------------------------------------------
// $ Revision:	2.0 $
// Creator:	Joe Hunt
// date_:	2005-05-19
// Title:	Customer Balances
// ----------------------------------------------------------------
$path_to_root="..";

include_once($path_to_root . "/includes/session.inc");
include_once($path_to_root . "/includes/date_functions.inc");
include_once($path_to_root . "/includes/data_checks.inc");
include_once($path_to_root . "/gl/includes/gl_db.inc");
include_once($path_to_root . "/sales/includes/db/customers_db.inc");

//----------------------------------------------------------------------------------------------------

print_customer_balances();

function get_open_balance($debtorno, $to)
{
	if($to)
		$to = date2sql($to);
	$sql = "SELECT SUM(IF(t.type = ".ST_SALESINVOICE." OR (t.type IN ( ".ST_BANKPAYMENT.") AND t.ov_amount>0),
             -abs(t.ov_amount + t.ov_gst + t.ov_freight + t.ov_freight_tax + t.ov_discount), 0)) AS charges,";

	$sql .= "SUM(IF(t.type != ".ST_SALESINVOICE." AND NOT(t.type IN (".ST_JOURNAL." , ".ST_BANKPAYMENT.") AND t.ov_amount>0),
             abs(t.ov_amount + t.ov_gst + t.ov_freight + t.ov_freight_tax + t.ov_discount) * -1, 0)) AS credits,";		

    $sql .= "SUM(IF(t.type != ".ST_SALESINVOICE." AND NOT(t.type IN (".ST_JOURNAL." , ".ST_BANKPAYMENT.")), t.alloc * -1, t.alloc)) AS Allocated,";

 	$sql .=	"SUM(IF(t.type = ".ST_SALESINVOICE." OR (t.type IN ( ".ST_BANKPAYMENT.") AND t.ov_amount>0), 1, -1) *
 			(abs(t.ov_amount + t.ov_gst + t.ov_freight + t.ov_freight_tax + t.ov_discount) - abs(t.alloc))) AS OutStanding
		FROM ".TB_PREF."debtor_trans t
    	WHERE t.debtor_no = ".db_escape($debtorno)
		." AND t.type NOT IN ( ".ST_CUSTDELIVERY.",0,11)";
    if ($to)
    	$sql .= " AND t.tran_date < '$to'";
	$sql .= " GROUP BY debtor_no";

    $result = db_query($sql,"No transactions were returned");
    return db_fetch($result);
}
function get_open_balance_credit($debtorno, $to)
{
	if($to)
		$to = date2sql($to);
	$sql = "SELECT SUM(t.ov_amount + t.ov_gst + t.ov_freight + t.ov_freight_tax + t.ov_discount)
		FROM ".TB_PREF."debtor_trans t
    	WHERE t.debtor_no = ".db_escape($debtorno)
		." AND t.type IN('11') ";
    if ($to)
    	$sql .= " AND t.tran_date < '$to'";
	$sql .= " GROUP BY debtor_no";

    $result = db_query($sql,"No transactions were returned");
    $row=db_fetch_row($result);
    return $row[0];
}
function get_open_balance_jv($debtorno, $to)
{
	if($to)
		$to = date2sql($to);
	$sql = "SELECT SUM(t.ov_amount + t.ov_gst + t.ov_freight + t.ov_freight_tax + t.ov_discount)
		FROM ".TB_PREF."debtor_trans t
    	WHERE t.debtor_no = ".db_escape($debtorno)
		." AND t.type IN('0') ";
    if ($to)
    	$sql .= " AND t.tran_date < '$to'";
	$sql .= " GROUP BY debtor_no";

    $result = db_query($sql,"No transactions were returned");
    $row=db_fetch_row($result);
    return $row[0];
}


function get_transactions($debtorno, $from, $to)
{
	$from = date2sql($from);
	$to = date2sql($to);

 	$allocated_from = 
 			"(SELECT trans_type_from as trans_type, trans_no_from as trans_no, date_alloc, sum(amt) amount
 			FROM ".TB_PREF."cust_allocations alloc
 				WHERE person_id=".db_escape($debtorno)."
 					AND date_alloc <= '$to'
 				GROUP BY trans_type_from, trans_no_from) alloc_from";
 	$allocated_to = 
 			"(SELECT trans_type_to as trans_type, trans_no_to as trans_no, date_alloc, sum(amt) amount
 			FROM ".TB_PREF."cust_allocations alloc
 				WHERE person_id=".db_escape($debtorno)."
 					AND date_alloc <= '$to'
 				GROUP BY trans_type_to, trans_no_to) alloc_to";

     $sql = "SELECT trans.*,
 		(trans.ov_amount + trans.ov_gst + trans.ov_freight + trans.ov_freight_tax + trans.ov_discount) AS TotalAmount,
 		IFNULL(alloc_from.amount, alloc_to.amount) AS Allocated,
 		((trans.type = ".ST_SALESINVOICE.")	AND trans.due_date < '$to') AS OverDue
     	FROM ".TB_PREF."debtor_trans trans
 			LEFT JOIN ".TB_PREF."voided voided ON trans.type=voided.type AND trans.trans_no=voided.id
 			LEFT JOIN $allocated_from ON alloc_from.trans_type = trans.type AND alloc_from.trans_no = trans.trans_no
 			LEFT JOIN $allocated_to ON alloc_to.trans_type = trans.type AND alloc_to.trans_no = trans.trans_no

     	WHERE trans.tran_date >= '$from'
 			AND trans.tran_date <= '$to'
 			AND trans.debtor_no = ".db_escape($debtorno)."
 			AND trans.type <> ".ST_CUSTDELIVERY."
 			AND ISNULL(voided.id)
     	ORDER BY trans.tran_date";
    return db_query($sql,"No transactions were returned");
}
function get_transactions2($debtorno, $from, $to, $transno,$type)
{
  //  display_error($debtorno."--".$transno);
	$from = date2sql($from);
	$to = date2sql($to);

    $sql = "SELECT ".TB_PREF."debtor_trans.*, ".TB_PREF."debtor_trans_details.*

    	FROM ".TB_PREF."debtor_trans, ".TB_PREF."debtor_trans_details
    	WHERE ".TB_PREF."debtor_trans.tran_date >= '$from'
		AND ".TB_PREF."debtor_trans.tran_date <= '$to'
		AND ".TB_PREF."debtor_trans.debtor_no = ".db_escape($debtorno)."
		AND ".TB_PREF."debtor_trans_details.debtor_trans_type  =  ".TB_PREF."debtor_trans.type
		AND ".TB_PREF."debtor_trans_details.debtor_trans_no =  ".TB_PREF."debtor_trans.trans_no
		AND ".TB_PREF."debtor_trans_details.debtor_trans_no =  ".db_escape($transno)."
	AND ".TB_PREF."debtor_trans_details.debtor_trans_type =$type
	
    	ORDER BY ".TB_PREF."debtor_trans.tran_date";

    return db_query($sql,"No transactions were returned");
}
//----------------------------------------------------------------------------------------------------

function print_customer_balances()
{
    	global $path_to_root, $systypes_array;

    	$from = $_POST['PARAM_0'];
    	$to = $_POST['PARAM_1'];
    	$fromcust = $_POST['PARAM_2'];
    	$show_balance = $_POST['PARAM_3'];
    	$currency = $_POST['PARAM_4'];
    	$no_zeros = $_POST['PARAM_5'];
    	$customer_ledger = $_POST['PARAM_6'];
    	$comments = $_POST['PARAM_7'];
	$orientation = $_POST['PARAM_8'];
	$destination = $_POST['PARAM_9'];
	if ($destination)
		include_once($path_to_root . "/reporting/includes/excel_report.inc");
	else
		include_once($path_to_root . "/reporting/includes/pdf_report.inc");

	$orientation = ($orientation ? 'L' : 'P');
	if ($fromcust == ALL_TEXT)
		$cust = _('All');
	else
		$cust = get_customer_name($fromcust);
    	$dec = user_price_dec();

	if ($show_balance) $sb = _('Yes');
	else $sb = _('No');

	if ($currency == ALL_TEXT)
	{
		$convert = true;
		$currency = _('Balances in Home Currency');
	}
	else
		$convert = false;

	if ($no_zeros) $nozeros = _('Yes');
	else $nozeros = _('No');

	$cols = array(0, 95, 140, 200,	250, 320, 385, 450,	515);
	if($customer_ledger==1)
	{
$headers = array(_('Date'), _('Naration'), _('Quantity'), _('Rate'), _('Amount/Sales'),
			_('Recovery'),_('Adjustment'),_('Balance'));
	}
			else
$headers = array(_('Date'), _('Naration'), _(''), _(''), _('Sales'),
			_('Recovery'),_('Adjustment'),_('Balance'));

	if ($show_balance)
		$headers[7] = _('Balance');
	$aligns = array('left',	'left',	'left',	'left',	'right', 'right', 'right', 'right');

    $params =   array( 	0 => $comments,
    				    1 => array('text' => _('Period'), 'from' => $from, 		'to' => $to),
    				    2 => array('text' => _('Customer'), 'from' => $cust,   	'to' => ''),
    				    3 => array('text' => _('Show Balance'), 'from' => $sb,   	'to' => ''),
    				    4 => array('text' => _('Currency'), 'from' => $currency, 'to' => ''),
						5 => array('text' => _('Suppress Zeros'), 'from' => $nozeros, 'to' => ''));

    $rep = new FrontReport(_('Customer Balances'), "CustomerBalances", user_pagesize(), 9, $orientation);
    if ($orientation == 'L')
    	recalculate_cols($cols);
    $rep->Font();
    $rep->Info($params, $cols, $headers, $aligns);
    $rep->NewPage();

	$grandtotal = array(0,0,0,0);

$grand_credit=0;
	$sql = "SELECT debtor_no, name, curr_code FROM ".TB_PREF."debtors_master ";
	if ($fromcust != ALL_TEXT)
		$sql .= "WHERE debtor_no=".db_escape($fromcust);
	$sql .= " ORDER BY name";
	$result = db_query($sql, "The customers could not be retrieved");

	while ($myrow = db_fetch($result))
	{
		if (!$convert && $currency != $myrow['curr_code']) continue;
		
		$accumulate = 0;
		$rate = $convert ? get_exchange_rate_from_home_currency($myrow['curr_code'], Today()) : 1;
		$bal = get_open_balance($myrow['debtor_no'], $from, $convert);
		$op_credit=get_open_balance_credit($myrow['debtor_no'], $from, $convert);
		$op_jv=get_open_balance_jv($myrow['debtor_no'], $from, $convert);
		$init[0] = $init[1] = 0.0;
		$init[0] = round2(abs($bal['charges']*$rate), $dec);
		$init[1] = round2(Abs($bal['credits']*$rate), $dec);
		$init[2] = round2($bal['Allocated']*$rate, $dec);
	//	$credit_jv_op=round2(abs($bal1['cjbalance']*$rate), $dec);
	//	display_error($bal1);
		if ($show_balance)
		{
			$init[3] = $init[0] - $init[1]-$op_credit+$op_jv;
			$accumulate += $init[3];
		}	
		else	
			$init[3] = round2($bal['OutStanding']*$rate, $dec);

		$res = get_transactions($myrow['debtor_no'], $from, $to);
		if ($no_zeros && db_num_rows($res) == 0) continue;

		$rep->fontSize += 2;
		$rep->TextCol(0, 2, $myrow['name']);
		if ($convert)
		//	$rep->TextCol(2, 3,	$myrow['curr_code']);
		$rep->fontSize -= 2;
		$rep->TextCol(3, 4,	_("Open Balance"));
		$rep->AmountCol(4, 5, $init[0], $dec);
		$rep->AmountCol(5, 6, $init[1], $dec);
		
		$rep->AmountCol(6, 7, $op_credit+$op_jv, $dec);
		
		$rep->AmountCol(7, 8, $init[0]-$init[1]-$op_credit+$op_jv, $dec);
		$open_balance=$init[0]-$init[1]-$op_credit+$op_jv;
		$total = array(0,0,0,0);
		$total_credit=0;
		for ($i = 0; $i < 4; $i++)
		{
			$total[$i] += $init[$i];
			$grandtotal[$i] += $init[$i];
		}
		$rep->NewLine(1, 2);
		$rep->Line($rep->row + 4);
		if (db_num_rows($res)==0) {
			$rep->NewLine(1, 2);
			continue;
		}
		while ($trans = db_fetch($res))
		{
            if ($no_zeros) {
                if ($show_balance) {
                    if ($trans['TotalAmount'] == 0) continue;
                } else {
                    if (floatcmp($trans['TotalAmount'], $trans['Allocated']) == 0) continue;
                }
            }
			$rep->NewLine(1, 2);
			$rep->TextCol(1, 3, $systypes_array[$trans['type']]."  (".$trans['trans_no'].")");
			$rep->DateCol(0, 1,	$trans['tran_date'], true);
			$item[0] = $item[1] = 0.0;
			if ( $trans['type'] == ST_CUSTPAYMENT || $trans['type'] == ST_BANKDEPOSIT)
				$trans['TotalAmount'] *= -1;
			if ($trans['TotalAmount'] > 0.0)
			{
				
				$rep->SetTextColor(18,117,174);
				if($trans['type'] == ST_CUSTCREDIT || $trans['type'] == ST_JOURNAL)
				{  $item[0] = round2(abs($trans['TotalAmount']) * $rate, $dec);
				    	$jv += $item[0];
				    $rep->SetTextColor(194,47,48);
				$rep->AmountCol(6, 7, $item[0], $dec);
				if($trans['type'] == ST_JOURNAL)
				$accumulate += $item[0];
				else
				$accumulate -= $item[0];
				}
				else
				{
				    $item[0] = round2(abs($trans['TotalAmount']) * $rate, $dec);
				    $rep->AmountCol(4, 5, $item[0], $dec);
				    	$accumulate += $item[0];
				}
				
				$rep->SetTextColor();
			
				$item[2] = round2($trans['Allocated'] * $rate, $dec);
			}
			else
			{
				
				if($trans['type'] != ST_CUSTCREDIT  || $trans['type'] != ST_JOURNAL)
				{
				    $item[1] = round2(Abs($trans['TotalAmount']) * $rate, $dec);
				    $rep->SetTextColor(70,111,21);
				    $rep->AmountCol(5, 6, $item[1], $dec);
				    $rep->SetTextColor();
				    $accumulate -= $item[1];
				}
				
			
					
				
				$item[2] = round2($trans['Allocated'] * $rate, $dec) * -1;
			}
			//$rep->AmountCol(6, 7, $item[2], $dec);
			if ( $trans['type'] == ST_SALESINVOICE || $trans['type'] == ST_BANKPAYMENT)
			{
			    $item[3] = $item[0] - $item[2];
			    //display_error($item[1]."A".$item[2]);
			}
				
			else	
				$item[3] = -$item[1] - $item[2];
				//display_error($item[1]."B".$item[2]);
				
				$rep->Font('bold');
			if ($show_balance)	
				$rep->AmountCol(7, 8, $accumulate, $dec);
			else	
				$rep->AmountCol(7, 8, $accumulate+$open_balance, $dec);
				$rep->Font('');
			for ($i = 0; $i < 4; $i++)
			{
				$total[$i] += $item[$i];
				$grandtotal[$i] += $item[$i];
			}
			if ($show_balance)
				$total[3] = $total[0] - $total[1];
				
				
				/////
				if($customer_ledger==1)
				{
				    $memo = get_comments_string($trans['type'], $trans['trans_no']);
				$res2 = get_transactions2($myrow['debtor_no'], $from, $to, $trans['trans_no'],$trans['type']);
				$rep->NewLine();
						$rep->TextCol(2, 6, "   ".$memo, $dec);	
				while ($trans2 = db_fetch($res2))
		
 				{				
				$rep->NewLine();				
				
				$rep->AmountCol(3, 4, $trans2['unit_price'], $dec);
				$rep->AmountCol(2, 3, $trans2['quantity'], $dec);
                $rep->AmountCol(4, 5, $trans2['quantity']*$trans2['unit_price'], $dec);
			   $rep->TextCol(0, 2, "   ".$trans2['description'], $dec);
				$t_qty +=$trans2['quantity'];
				$total_amount +=$trans2['quantity']*$trans2['unit_price'];
				
              }//while
              if($t_qty!=0 )
              {
                            $rep->SetDrawColor(128,0,0);
							$rep->Line($rep->row-2);
							$rep->NewLine();
							$rep->Font('bold');
							$rep->TextCol(1, 2,_('Total:'));
							$rep->Font();
							$rep->TextCol(2, 3,$t_qty);
							$rep->AmountCol(4,5,$total_amount,$dec);
							$rep->NewLine();
							$rep->SetDrawColor();
							$t_qty=0;
							$total_amount=0;
              }
				}
			$rep->Line($rep->row  - 4);	
		}
		$rep->Line($rep->row - 8);
		$rep->NewLine(2);
		$rep->TextCol(0, 3, _('Total'));
		//for ($i = 0; $i < 4; $i++)
			//$rep->AmountCol($i + 4, $i + 5, $total[$i], $dec);
		//	$rep->NewLine(2);
		$grand_credit +=$jv+$op_credit+$op_jv;
		$grand_bal +=$accumulate+$open_balance;
		$grand_sal +=$total[0]-$jv;
		$rep->SetTextColor(18,117,174);

			$rep->AmountCol(4,  5, $total[0]-$jv, $dec);
			$rep->SetTextColor(70,111,21);
			$rep->AmountCol(5, 6, $total[1], $dec);
			
				$rep->SetTextColor(194,47,48);
			$rep->AmountCol( 6, 7, $jv+$op_credit+$op_jv, $dec);
				$rep->SetTextColor();
			$rep->Font('bold');
			$rep->AmountCol(7, 8, $accumulate+$open_balance, $dec);
			$rep->Font('');
			$total_credit=$jv=$bal1=0;
   		$rep->Line($rep->row  - 4);
   		$rep->NewLine(2);
	}
	$rep->fontSize += 2;
	$rep->TextCol(0, 3, _('Grand Total'));
	$rep->fontSize -= 2;
	if ($show_balance)
		$grandtotal[3] = $grandtotal[0] - $grandtotal[1];
//	for ($i = 0; $i < 4; $i++)
		//$rep->AmountCol($i + 4, $i + 5, $grandtotal[$i], $dec);
		//$g_recovery=$grandtotal[1]-$grand_credit+$jv+$bal1;
		//$rep->NewLine(2);
			$rep->SetTextColor(18,117,174);
			$rep->AmountCol(4,  5, $grand_sal, $dec);
			$rep->SetTextColor(70,111,21);
			$rep->AmountCol(5, 6,$grandtotal[1] , $dec);
			$rep->SetTextColor(194,47,48);
			$rep->AmountCol( 6, 7, $grand_credit, $dec);
			$rep->SetTextColor();
			$rep->Font('bold');
			$rep->AmountCol(7, 8, $grand_bal, $dec);
		
	$rep->Line($rep->row  - 4);
	$rep->NewLine();
    	$rep->End();
}

