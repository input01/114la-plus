<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<{$index_meta_keyword}>" />
<meta name="description" content="<{$index_meta_description}>" />
<title><{$title}></title>
<link href="/public/home/base.css" rel="stylesheet" type="text/css" />
<style id="temp-css" type="text/css"></style>
<script type="text/javascript" src="/public/home/js/base.js"></script>
<script type="text/javascript" src="/public/home/js/core.js"></script>
<base target="_blank" />
</head>
<body>
<div id="wrap">
    <div id="top" class="clearfix">
        <div id="weather" style="margin-top: -8px;"><script>if(top.location == self.location){document.write('<iframe width="400px" height="30px" frameborder="0" scrolling="no" hspace="0" src="https://myip.ipip.net"></iframe>')} </script> </div>
        <ul id="set">
            <li id="skinlist"><a class="blue" title="蓝色">1</a><a class="green" title="绿色">2</a><a class="pink" title="粉色">3</a></li>
            <li class="setting"><a target="_self" href="javascript:void(0);" id="showSetting">个性设置</a></li>
        </ul>
    </div>
    <div id="header">
        <div class="box clearfix">
            <h1 id="logo"><a href="/" target="_parent" title=""><img src="/static/images/logo.gif" height="69" width="117" /></a></h1>
            <div id="bn">
                <ul id="cal">
                    <li class="date"><script type="text/javascript">document.write(Calendar.day());</script> </li>
                    <li class="lcal"><script type="text/javascript">document.write(Calendar.cnday());</script> </li>
                    <li class="m"><a href="https://www.laohuangli.net/" class="hl">黄历</a><a href="https://www.xzw.com/" class="yc">运程</a><a href="public/widget/clock/index.html" class="clock">闹钟</a></li>
                </ul>
                <div id="bn2">
                <script type="text/javascript" src="static/js/header.js"></script>
                </div>
            </div>
        </div>
    </div>
        
    <div id="search">
        <div id="ex">
        <{foreach from = $notice_list item = i}>
            <p><a href="<{$i.url}>"<{if $i.color}> style="color:<{$i.color}>"<{/if}>><{$i.name}></a></p>
        <{/foreach}>
        </div>
        <div id="sm" class="clearfix">
            <ul id="sm_tab">
                <{foreach from=$search_class item=search_class1}>
                <li s_tab="js_type_<{$search_class1.classid}>" <{if $search_class1.is_default}> class="active" default="1"<{/if}>><{$search_class1.classname}></li>
                <{/foreach}>
            </ul>
        </div>
        <div id="sb" class="clearfix">

            <{foreach from=$search_class item=search_class2}>
            <div id="js_type_<{$search_class2.classid}>" <{if $search_class2.is_default!=1}> style="display:none;"<{/if}>>
                <div class="sw">
                    <p id="sw_<{$search_class2.classid}>">
                        <{foreach from=$search_keyword item=keyword}>
                            <{if $keyword.class == $search_class2.classid}>
                                <a href="<{$keyword.url}>"><{$keyword.name}></a>
                            <{/if}>
                        <{/foreach}>
                    </p><!--/ keywords-->
                </div>
                <div class="sf">
                    <form action="#" method="get" target="_blank">
                        <a href="#" id="sf_label" rel="lk"><img src="" width="105" height="35" rel="img" /></a><input type="text" name="q" class="int" autocomplete="off" rel="kw"/><input class="searchint" type="submit" value="默认搜索" rel="btn" />
                        <div class="ctrl">
                        <{foreach from=$search item=row1}>
                            <{if $row1.class == $search_class2.classid}>
                            <label><input class="radio" type="radio" value="engine_<{$row1.id}>" name="search_select" rad="engine_<{$row1.id}>" <{if $row1.is_default}> checked="checked"<{/if}> /><{$row1.search_select}></label>
                            <{/if}>
                        <{/foreach}>
                        </div>
                    </form>
                </div>
            </div>
            <{/foreach}>
           
            <div id="suggest" style="display:none"></div>
        </div>
    </div>
    
        
    <div id="hot"><{*名站上方广告*}>
        <{foreach from = $advert_search_footer item = i}><a <{if $i.color=='#FF0000' || $i.color=='red'}>class="red"<{elseif $i.color=='#008000' || $i.color=='green'}>class="green"<{elseif $i.color=='#0000FF' || $i.color=='blue'}>class="blue"<{elseif $i.color!=''}>style="color:<{$i.color}>;"<{/if}> target="_blank" href="<{$i.link}>"><{$i.title}></a><{/foreach}>
    </div>
    <div id="content">
        <div id="cate"><b class="rc-tp"><b></b></b>
            <div class="box">
                <div id="tool">
                    <h2 class="tool-title">实用工具</h2>
                    <ul>
                        <{*实用工具*}>
                        <{foreach from = $tools item = i}>
                            <li><a href="<{$i.url}>"<{if $i.color}> style="color:<{$i.color}>"<{/if}>><{$i.name}></a></li>
                        <{/foreach}>
                    </ul>
                </div>
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
        <b class="rc-bt"><b></b></b></div>
        <div id="main">
            <div id="bm"><b class="rc-tp"><b></b></b>
                <ul id="bm_tab" class="clearfix">
                    <li id="bm-def" class="active" rel="fm">名站导航</li>
                    <{foreach from = $famous_tab item = tab key = i}>
                    <li rel="bb<{$i}>" url="<{$tab.url}>" nocache=<{$tab.nocache}>><{$tab.name}></li>
                    <{/foreach}>
                </ul><div id="qs"><b class="l"></b><div id="q_int" class="n"><div class="button-wrap"><input type="text" /></div></div><b class="r"></b></div>
            </div>
            <div id="bb">
                <div class="box">
                    <div id="fm">
                        <ul id="topsite" class="clearfix">
                            <{*TOP 名站*}>
                                <{foreach from = $mz_top item = i}>
                                <{$i.html}>
                            <{/foreach}>
                        </ul>
                        <ul id="fmsite" class="clearfix">
                            <{*名站*}>
                            <{foreach from = $mz_list item = i}>
                            <li><a href="<{$i.url}>" <{if $i.namecolor=='#FF0000' || $i.namecolor=='red'}>class="red"<{elseif $i.namecolor=='#008000' || $i.namecolor=='green'}>class="green"<{elseif $i.namecolor=='#0000FF' || $i.namecolor=='blue'}>class="blue"<{elseif $i.namecolor!=''}>style="color:<{$i.namecolor}>;"<{/if}>><{$i.name}></a></li>
                            <{/foreach}>
                        </ul>
                    </div>
                    <div id="qs-result" style="display:none;"></div>
                </div>
                <b class="rc-bt"><b></b></b></div>
            <div id="hot2">
                <{*名站下方广告*}>
                <{$advert_notice}>
            </div>
            <div id="ls"><b class="rc-tp"><b></b></b>
                <div class="box">
                    <{*城市导航*}>
                    <dl id="local" class="alt" style="visibility:hidden;">
                        <dt id="loc_t"></dt>
                        <dd class="l" id="loc_c"></dd>
                        <dd class="m" id="loc_m"></dd>
                    </dl>
                    <{*酷站导航*}>
                    <{foreach from = $kz_list key ='key' item = 'item' name = n}>
                    <dl <{if $smarty.foreach.n.iteration % 2 eq 0}>class="alt"<{/if}>id="ls<{$smarty.foreach.n.iteration}>">
                        <dt><a href="<{$item.url}>"><{$key}></a></dt>
                        <dd class="l">
                            <{foreach key='k' item='v' from=$item.son}>
                                <a href="<{$v.url}>" <{if $v.namecolor=='#FF0000' || $v.namecolor=='red'}>class="red"<{elseif $v.namecolor=='#008000' || $v.namecolor=='green'}>class="green"<{elseif $v.namecolor=='#0000FF' || $v.namecolor=='blue'}>class="blue"<{elseif $v.namecolor!=''}>style="color:<{$v.namecolor}>;"<{/if}>><{$v.name}></a>
                            <{/foreach}>
                        </dd>
                        <dd class="m"><a href="<{$item.url}>">更多 &raquo;</a></dd>
                    </dl>
                    <{/foreach}>
                </div>
                <b class="rc-bt"><b></b></b></div>
        </div>
    </div>
    <div id="meta"><b class="rc-tp"><b></b></b>
        <div class="box">
            <ul>
            <{*专题*}>
        <{foreach from = $topics item = parent}>
        <li class="bd">
            <strong><a href="<{$URL_HTML}>/topic/<{$parent.path}>/index.htm"><{$parent.name}></a></strong>
            <{if !empty($parent.son)}>
            <{foreach from = $parent.son item = v}>
            <a href="<{if $v.url}><{$v.url}><{else}><{$URL_HTML}>/topic/<{$parent.path}>/index.htm#<{$v.id}><{/if}>"><{$v.name}></a>
            <{/foreach}>
            <{/if}>
            <span class="more"><a href="<{$URL_HTML}>/topic/<{$parent.path}>/index.htm">更多 &raquo;</a></span>
        </li>
        <{/foreach}>
         <{if $links}>
         <li class="bd">
            <strong><a href="<{$URL_HTML}>/catalog/links.htm">友情链接</a></strong>
            <{foreach from=$links item=links}>
            <a  href="<{$links.site_url}>" title="<{$links.site_name}>"><{$links.site_name}></a>
            <{/foreach}>
            <span class="more"><a href="<{$URL_HTML}>/catalog/links.htm">更多 &raquo;</a></span>
         </li>
         <{/if}>
            </ul>
        </div>
    </div>
    <div id="fs">
        <b class="rc-bt"><b></b></b>
    </div>
    <div id="footer">
        <div class="link"><a href="#">关于本站</a> | <a href="/url-submit/">免费收录</a> | <a href="/feedback">意见反馈</a> | <a href="https://github.com/input01/114la-plus/archive/refs/heads/main.zip">源码下载</a><br />
        </div>
        <div class="hr"></div>
        <p class="copyright">Powered by 114啦网址导航&copy;2005-<script type="text/javascript">document.write(new Date().getFullYear());</script>. All Rights Reserved. <a href="http://www.miibeian.gov.cn/"><{$icp}></a></p>

    </div>
<script type="text/javascript" src="/public/home/js/config.js"></script>
<script type="text/javascript" src="/public/home/js/main.js"></script>
<script type="text/javascript">
    try{
        if(window.SR){
            SR.SearchData = {
                <{foreach from=$search item=row2}>
                    engine_<{$row2.id}>: {
                        action: "<{$row2.action}>",
                        name: "<{$row2.name}>",
                        btn: "<{$row2.btn}>",
                        img: ["<{$row2.img_text}>","<{$row2.img_url}>"],
                        url: "<{$row2.url}>",
                        params: {
                            <{$row2.params}>
                        }
                    },
                <{/foreach}>
                none:{}
            }   
        }
        
        var sbBox = document.getElementById('sb');
        var sbForms = sbBox.getElementsByTagName('form');
        for(var i = 0,len = sbForms.length; i < len; i++){
            sbForms[i].reset();
        }
        
        var sbRadios = sbBox.getElementsByTagName('input');
        var inputTxtArr = [];
        if(sbRadios.length){
            var setRadios = [];
            for(var i = 0,len = sbRadios.length; i < len; i++){
                var input = sbRadios[i];
                if(input.getAttribute("rad") && input.checked){
                    setRadios.push(input);
                }
                else if(input.getAttribute("rel") == "kw"){
                    var key = inputTxtArr.push(input);
                    input.setAttribute("index",key - 1);
                    
                }
            }
            try{
            for(var i = 0,len = setRadios.length; i < len; i++){
                var input = setRadios[i];
                
                SR.RadioMod.ClickRadio(input);
            }
            }catch(e){}
        }
    }catch(e){}
    </script>
<div class="tongji"><{$tongji}></div>

</div>

</body>
</html>

