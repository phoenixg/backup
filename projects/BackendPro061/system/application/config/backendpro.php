<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
define('BEP_VERSION','0.6.1');

/*
 |--------------------------------------------------------------------------
 | BackendPro Database Table Prefix
 |--------------------------------------------------------------------------
 | This is the table prefix which will be placed before
 | each table name which BackendPro uses
 */
$config['backendpro_table_prefix'] = 'be_';

/*
 |--------------------------------------------------------------------------
 | View File Locations
 |--------------------------------------------------------------------------
 | Contains variables setting where the default view file directories are located.
 | All must be defined with trailing slashes, apart from BE_template_dir which is
 | blank by default
 */
$config['backendpro_template_dir'] = "";
$config['backendpro_template_public'] = $config['backendpro_template_dir'] . "public/";
$config['backendpro_template_admin'] = $config['backendpro_template_dir'] . "admin/";

