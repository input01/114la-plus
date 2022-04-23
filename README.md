如果当年114la用thinkphp或者laravel作为web开发框架，不知道会不会更舒服一点，一激动哪天重构一下。

------------------------------------
# 114la-plus, 基于V1.15-utf8版

演示站点：  
http://80443.com

-------------------------------------------------
安装说明：
0.运行环境，基于PHP 5.3和MySQL 5.7，推荐用宝塔面板。

1.下载源码zip并解压。

2.把upload目录下的所有文件上传至空间根目录下。同时确认以下目录或文件属性为(777)可写模式。(Win 主机的可以略过此步)  
    chmod 777 ./admin/config/cfg_database.php  
    chmod 777 ./static/js  
    chmod 777 ./install  
    chmod 777 ./admin/data  
    chmod 777 ./admin/data/backup  
    chmod 777 ./admin/data/cache  
    chmod 777 ./admin/data/conf  
    chmod 777 ./admin/data/db  
    chmod 777 ./admin/data/session  
    chmod 777 ./admin/data/lang  
    chmod 777 ./admin/data/log  
    chmod 777 ./admin/data/plan  
    chmod 777 ./admin/data/update  
    chmod 777 ./admin/tpls/cache  
    chmod 777 ./admin/tpls/compile  
    chmod 777 ./admin/tpls/tpls/admin  
    chmod 777 ./admin/tpls/tpls/main  
    chmod 777 ./index.html  

3. 通过浏览器访问 "http://您的域名/install/" ，然后根据提示填写 mysql 配置信息、管理员账号信息

4. 程序将自动导入114啦数据库，并生成您刚才的配置信息。一般需要1分钟即可，如果出现502，很可能服务器硬盘性能太差，导致的web服务器超时。可以设置增大服务器超时时间，或者直接换成好一点的磁盘；安装程序本身没问题。

5. 若该目录有修改权限，将自动删除install目录，否则请您自行删除 install 目录

6. 进入管理后台系统管理>>>资料设置>>>设置站点的相关资料>>>然后转到>>>静态生成>>>一键生成全站。

7. 完成安装！

--------------------------------------------------

其它下载方式：
https://www.jb51.net/codes/34083.html
