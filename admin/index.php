<?php
/**
 * 首页
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
