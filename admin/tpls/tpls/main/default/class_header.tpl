<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<{$class_meta_keyword}>" />
<meta name="description" content="<{$class_meta_description}>" />
<title><{$title}></title>
<link href="/themes/default/page.css" rel="stylesheet" type="text/css" />
<link id="skin" href="/themes/default/skins/blue/page.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/themes/default/js/ylmf.cai.js"></script>
<script type="text/javascript" src="/themes/default/js/config.js"></script>
<script type="text/javascript" src="/themes/default/js/base.js"></script>
<script type="text/javascript">
var PageSkin = (function(){
	var PageskinCookie = userCookie.init();
	if(PageskinCookie.is("style")){
		var skins = ["blue","orange","green","purple","blue2"];
		var skinName = skins[Number(PageskinCookie.get("style"))];
		document.getElementById("skin").href = "/themes/default/skins/"+skinName+"/page.css";
	}
	return{
		cookie:PageskinCookie
	}
})()
</script>
<base target="_blank" />
</head>
<body>
<div id="page">
<script type="text/javascript">
	(function(){
		if(PageSkin.cookie.is("bg")){
			var value = PageSkin.cookie.get("bg");
			var img = "/themes/default/images/bg/"+Yl.trim(value);
			if(Yl.trim(value)!=="default"){
				$("#page").setStyle("background","url("+img+")");
			}else{
				$("#page").setStyle("background","");
			}
		}else{
			return;
		}
	})()
</script>
    <div class="wrap">
        <div id="header" class="clearfix">
            <h1 id="logo"><a href="/" target="_parent"><img src="/static/images/logo.gif" height="69" width="117" /></a></h1>

        </div><!--/ header-->
