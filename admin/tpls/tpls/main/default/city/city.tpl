<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><{$title}> - <{$current_city}>导航</title>
        <meta name="description" content="<{$current_city}>导航，提供<{$current_city}>生活导航信息" />
        <link rel="stylesheet" type="text/css" href="/static/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/static/css/city.css" media="all" />
        <base target="_blank" />
        <style type="text/css">
            body,td,th {
                font-family: Tahoma, Helvetica, Arial, \5b8b\4f53, sans-serif;
            }
        </style>
    </head>
    <body>
        <div id="page" class="container">
            <div id="header">
                <div class="con clearfix">
                    <h1 id="logo"><a href="/"><img src="/static/images/logo.gif" alt="" /></a></h1>
                </div>
            </div>
            <div class="guide clearfix">
                <span class="location">
                    <strong>您当前的位置：</strong>
                    <a href="/" target="_parent">导航首页</a> &raquo; <{$current_city}>城市导航
                </span>
                <span class="meta">
                    <a href="/feedback/" class="feedback">留言反馈</a>
                </span>
            </div>
            <!-- / giude-->


            <div id="content" class="clearfix">
                <div id="side"> <b class="rc-tp1"><b></b></b>
                    <div class="con">
                        <div id="tool">
                            <h2 class="tool-title">实用工具<span><a href="#" rel="nr">更多&raquo;</a></span></h2>
                            <ul>
                                 <{*实用工具*}>
                                 <{foreach from = $tools item = i}>
                                 <li><a href="<{$i.url}>"<{if $i.color}> style="color:<{$i.color}>"<{/if}>><{$i.name}></a></li>
                                 <{/foreach}>
                            </ul>
                        </div>
                        <!-- / tool-->

                        <{*网站分类*}>
                        <{foreach from = $site_class key = k item = parent}>
                        <h2><{$k}></h2>
                        <ul<{if $parent.0.classname_len > 6}> class="c2"<{/if}>>
                            <{foreach from = $parent item = i}>
                            <li ><a href="<{$i.urlpath}>"><{$i.classname}></a></li>
                            <{/foreach}>
                        </ul>
                        
                        <{/foreach}>

                    </div>
                    <!-- / con-->
                    <b class="rc-bt"><b></b></b> </div>
                <!-- / size-->

                <div id="main">

                    <div id="board"> <b class="rc-tp1"><b></b></b>
                        <div class="box">
                            <div id="bm">
                                <ul id="bm_tab" class="clearfix">
                                    <li id="bm-def" class="active" rel="fm"><{$current_city}>名站</li>
                                </ul>
                            </div>
                            <!-- / bm-->
                            <{*名站分类*}>
                            <div id="bb">
                                <div class="con">
                                    <ul id="fm" class="clearfix">
                                        <{if $mingzhan_list}>
                                        <{foreach from=$mingzhan_list item=mingzhan}>
                                        <li><a href="<{$mingzhan.url}>"><{$mingzhan.name}></a></li>
                                        <{/foreach}>
                                        <{/if}>
                                    </ul>

                                </div>
                                <!-- / con-->
                            </div>
                            <!-- / bb-->
                        </div>

                        <!-- / box-->
                        <b class="rc-bt"><b></b></b> </div>
                    <!-- / board-->

                    <div id="ls"> <b class="rc-tp1"><b></b></b>
                        <div class="box">
                            <{*酷站分类*}>
                            <{if $coolclass_list}>
                            <{foreach from=$coolclass_list item=parent name=foo}>
                            <dl <{if $smarty.foreach.foo.index is not odd}>class="alt"<{/if}> id="ls<{$smarty.foreach.foo.index}>">
                                <dt><a href="<{$parent.path}>"><{$parent.name}></a></dt>
                                <dd class="l">
                                    <{if $parent.son}>
                                    <ul>
                                        <{foreach from=$parent.son item=son}>
                                        <li><a href="<{$son.url}>" ><{$son.name}></a></li>
                                        <{/foreach}>
                                    </ul>
                                    <{/if}>
                                </dd>
                                <dd class="m"><a href="<{$parent.path}>">更多 &raquo;</a></dd>
                            </dl>
                            <{/foreach}>
                            <{/if}>
                        </div>
                        <!-- / box-->
                        <b class="rc-bt"><b></b></b> </div>
                </div>
                <!-- / main-->

            </div>
            <!-- / content-->

            <div id="citys"> <b class="rc-tp1"><b></b></b>

                <div class="box">
                    <div class="con"> <strong>其它城市：</strong> <{if $other_city_list}><{foreach from=$other_city_list item=other_city}><a href="<{$URL_HTML}>/city/<{$other_city.path}>/index.htm"><{$other_city.name}></a> <{/foreach}><{/if}></div>
                </div>
                <b class="rc-bt"><b></b></b> </div>
            <!-- / citys-->

            <div id="footer" class="clearfix"> <a href="/" target="_parent" class="goback">返回首页</a> </div>
            <div id="gotop"><a href="#page" target="_self">返回顶部</a></div>
        </div>
        <script type="text/javascript" src="/static/js/backtop.js"></script>
    </body>
</html>
