<?php
/**
 * 首页，可以理解为最外层的权限过滤器（类似Java的前置过滤器），load_controller相当于是继续接管控制权，类似配置的SpringMVC总入口xml配置。
 */
require '../init.php';

//mod_defend::defend();
if(empty($_GET['c']) || ($_GET['c']=='login' and (empty($_GET['a']) || $_GET['a']=='login')) || $_GET['c']=='securimage')
{}
else
{
    mod_auth::instance(); //权限
    session_write_close();
}


// index.php  index.php?c=login   index.php?c=login&a=login
load_controller();
?>
