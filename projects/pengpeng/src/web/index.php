<?php
define('PROJECT_ROOT', realpath(dirname(__FILE__) . DIRECTORY_SEPARATOR . '..') . DIRECTORY_SEPARATOR);
define('FRAMEWORK_ROOT',
       realpath(dirname(__FILE__) .
                DIRECTORY_SEPARATOR . '..' .
                DIRECTORY_SEPARATOR . '..' .
                DIRECTORY_SEPARATOR . 'addons' .
                DIRECTORY_SEPARATOR . 'nb') . DIRECTORY_SEPARATOR);
require_once(FRAMEWORK_ROOT . 'autoload' . DIRECTORY_SEPARATOR . 'lib' . DIRECTORY_SEPARATOR . 'nbInitAutoload.class.php');
nbInitAutoload::register();
nbHelper::loadApp('framework/coreConfig', array('coreConfigClass' => 'nbCoreConfig'));

echo '<pre>';print_r(get_defined_constants());echo '</pre>';
echo '<pre>';print_r(get_declared_classes());echo '</pre>';
/*
[PROJECT_ROOT] => /home/phoenix/public_html/phpmytest/pengpeng/src/
[FRAMEWORK_ROOT] => /home/phoenix/public_html/phpmytest/pengpeng/addons/nb/
[SERVER_TYPE] => production
[SERVER_LEVEL] => 100
[ADDONS_ROOT] => /home/phoenix/public_html/phpmytest/pengpeng/addons/
[CACHE_ROOT] => /home/phoenix/public_html/phpmytest/pengpeng/src/cache/
[UPLOAD_ROOT] => /home/phoenix/public_html/phpmytest/pengpeng/src/web/data/
[HTTP_ROOT] => /home/phoenix/public_html/phpmytest/pengpeng/src/web/
[URL_ROOT] => http://173.230.150.168/
[UPLOAD_URL_ROOT] => http://173.230.150.168/web/data/
 */
//nbHelper::loadApp('framework/init');
