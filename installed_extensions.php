<?php

/* List of installed additional extensions. If extensions are added to the list manually
	make sure they have unique and so far never used extension_ids as a keys,
	and $next_extension_id is also updated. More about format of this file yo will find in 
	FA extension system documentation.
*/

$next_extension_id = 31; // unique id for next installed extension

$installed_extensions = array (
  1 => 
  array (
    'name' => 'Inventory Items CSV Import',
    'package' => 'import_items',
    'version' => '2.4.0-3',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/import_items',
  ),
  2 => 
  array (
    'name' => 'osCommerce Order and Customer Import Module',
    'package' => 'osc_orders',
    'version' => '2.4.0-3',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/osc_orders',
  ),
  3 => 
  array (
    'name' => 'Cash Flow Statement Report',
    'package' => 'rep_cash_flow_statement',
    'version' => '2.4.0-2',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/rep_cash_flow_statement',
  ),
  4 => 
  array (
    'name' => 'Dated Stock Sheet',
    'package' => 'rep_dated_stock',
    'version' => '2.4.0-1',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/rep_dated_stock',
  ),
  5 => 
  array (
    'name' => 'Inventory History',
    'package' => 'rep_inventory_history',
    'version' => '2.4.0-1',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/rep_inventory_history',
  ),
  6 => 
  array (
    'name' => 'Sales Summary Report',
    'package' => 'rep_sales_summary',
    'version' => '2.4.0-1',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/rep_sales_summary',
  ),
  7 => 
  array (
    'name' => 'Tax inquiry and detailed report on cash basis',
    'package' => 'rep_tax_cash_basis',
    'version' => '2.4.0-1',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/rep_tax_cash_basis',
  ),
  8 => 
  array (
    'name' => 'Requisitions',
    'package' => 'requisitions',
    'version' => '2.4.0-3',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/requisitions',
  ),
  9 => 
  array (
    'name' => 'Theme Anterp',
    'package' => 'anterp',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/anterp',
  ),
  10 => 
  array (
    'name' => 'Theme Bluecollar',
    'package' => 'bluecollar',
    'version' => '2.4.0-3',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/bluecollar',
  ),
  11 => 
  array (
    'name' => 'Theme Classic',
    'package' => 'classic',
    'version' => '2.4.1-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/classic',
  ),
  12 => 
  array (
    'name' => 'Theme Dynamic',
    'package' => 'dynamic',
    'version' => '2.4.0-3',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/dynamic',
  ),
  13 => 
  array (
    'name' => 'Theme Elegant',
    'package' => 'elegant',
    'version' => '2.4.0-2',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/elegant',
  ),
  14 => 
  array (
    'name' => 'Theme Exclusive',
    'package' => 'exclusive',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/exclusive',
  ),
  15 => 
  array (
    'name' => 'Theme Exclusive for Dashboard',
    'package' => 'exclusive_db',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/exclusive_db',
  ),
  16 => 
  array (
    'name' => 'Theme Fancy',
    'package' => 'fancy',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/fancy',
  ),
  17 => 
  array (
    'name' => 'Theme Flatcolor',
    'package' => 'flatcolor',
    'version' => '2.4.1-2',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/flatcolor',
  ),
  18 => 
  array (
    'name' => 'Theme Flatcolor2',
    'package' => 'flatcolor2',
    'version' => '2.4.1-2',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/flatcolor2',
  ),
  19 => 
  array (
    'name' => 'Theme Grayblue',
    'package' => 'grayblue',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/grayblue',
  ),
  20 => 
  array (
    'name' => 'Theme Graylime',
    'package' => 'graylime',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/graylime',
  ),
  21 => 
  array (
    'name' => 'Theme Graypink',
    'package' => 'graypink',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/graypink',
  ),
  22 => 
  array (
    'name' => 'Theme Greyred',
    'package' => 'greyred',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/greyred',
  ),
  23 => 
  array (
    'name' => 'Theme Modern',
    'package' => 'modern',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/modern',
  ),
  24 => 
  array (
    'name' => 'Theme Newwave',
    'package' => 'newwave',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/newwave',
  ),
  25 => 
  array (
    'name' => 'Theme Response',
    'package' => 'response',
    'version' => '2.4.0-4',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/response',
  ),
  26 => 
  array (
    'name' => 'Theme Studio',
    'package' => 'studio',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/studio',
  ),
  27 => 
  array (
    'name' => 'Thinker theme',
    'package' => 'thinker-theme',
    'version' => '2.4.0-1',
    'type' => 'theme',
    'active' => false,
    'path' => 'themes/thinker',
  ),
  28 => 
  array (
    'name' => 'Import Transactions',
    'package' => 'import_transactions',
    'version' => '2.4.0-6',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/import_transactions',
  ),
  29 => 
  array (
    'name' => 'Import Multiple Journal Entries',
    'package' => 'import_multijournalentries',
    'version' => '2.4.0-3',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/import_multijournalentries',
  ),
  30 => 
  array (
    'name' => 'FrontHrm',
    'package' => 'fronthrm',
    'version' => '2.4.0-1',
    'type' => 'extension',
    'active' => false,
    'path' => 'modules/FrontHrm',
  ),
);
