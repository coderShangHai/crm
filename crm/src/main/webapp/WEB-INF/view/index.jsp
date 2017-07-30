<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
    <link href="${pageContext.request.contextPath}/easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/common.js"></script>
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
    <title>MT4 CRM首页</title>
    <style type="text/css">
        .crm_menu_footer, .crm_menu_header {
            height: 30px !important;
            border-width: 0px;
            border-bottom: 1px solid #d4d4d4;
            width: 100%;
        }

        .crm_menu_footer a, .crm_menu_header a {
            display: block;
            width: 24px;
            border-right: 1px solid #d4d4d4;
            height: 16px;
            float: left;
            margin-left: 10px;
            cursor: pointer;
            margin-top: 6px;
        }

        .crm_menu_footer a:nth-child(1) {
            background: url(${pageContext.request.contextPath}/images/home.png) no-repeat;
        }

        .crm_menu_footer a:nth-child(2) {
            background: url(${pageContext.request.contextPath}/images/phone-message.png) no-repeat;
        }

        .crm_menu_footer a:nth-child(3) {
            background: url(${pageContext.request.contextPath}/images/email.png) no-repeat;
            border-right: 0px;
        }

        .crm_menu_header a:nth-child(1) {
            background: url(${pageContext.request.contextPath}/images/person.png) no-repeat;
        }

        .crm_menu_header a:nth-child(2) {
            background: url(${pageContext.request.contextPath}/images/login.png) no-repeat;
            border-right: 0px;
        }

        .crm_menu_header a:nth-child(3) {
            background: url(${pageContext.request.contextPath}/images/exit.png) no-repeat;
            border-right: 0px;
            float: right !important;
        }

        .tabs li {
            cursor: pointer;
        }

        .tabs li a {
            cursor: pointer;
        }

        .tabs li a span {
            cursor: pointer;
        }
    </style>
</head>
<body class="easyui-layout" id="mt4_crm_main_div" data-options="fit:true">
<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">north region</div>
<div data-options="region:'west',split:true,title:'总经办：平台商'" style="width:220px;">
    <div class="crm_menu_header tabs-header">
        <a title="更新我的资料"></a>
        <a title="修改登录信息"></a>
        <a title="退出系统"></a>
    </div>
    <div class="easyui-accordion" style="width:95%;height:87%;">
        <div title="系统管理" data-options="iconCls:'icon-system'" style="overflow:auto;padding:10px;">
            <ul class="easyui-tree" name="mt4_crm_tree">
                <li>
                    <span>系统设置</span>
                    <ul>
                        <li><a data-model="window" data-url="${pageContext.request.contextPath}/global/index">全局配置</a>
                        </li>
                        <li><a data-model="window" data-url="${pageContext.request.contextPath}/mt4/index">MT4 组管理</a>
                        </li>
                        <li><a data-model="window" data-url="${pageContext.request.contextPath}/function/index">功能配置</a>
                        </li>
                        <li><a data-model="tab" data-url="${pageContext.request.contextPath}/protocol/index">协议设置</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <span>工单系统</span>
                    <ul>
                        <li><a data-model="tab" data-url="${pageContext.request.contextPath}/consult/index">站内查询</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div title="业务管理" data-options="iconCls:'icon-business'" style="padding:10px;">
            <ul class="easyui-tree" name="mt4_crm_tree">
                <li>
                    <span>业务处理</span>
                    <ul>
                        <li><a data-model="tab" data-url="${pageContext.request.contextPath}/accountType/index">账户审核</a>
                        </li>
                        <li><a data-model="tab" data-url="${pageContext.request.contextPath}/deposit/index">入金审核</a></li>
                        <li>出金审核</li>
                    </ul>
                </li>
                <li>
                    <span>账户管理</span>
                    <ul>
                        <li>模拟账户</li>
                        <li>真实账户</li>
                        <li>代理账户</li>
                        <li>全局同步</li>
                        <li>权限分配</li>
                    </ul>
                </li>
                <li>
                    <span>出入金管理</span>
                    <ul>
                        <li>入金管理</li>
                        <li>出金管理</li>
                        <li>转账记录</li>
                    </ul>
                </li>
                <li>
                    <span>代理相关</span>
                    <ul>
                        <li>返佣设置</li>
                        <li>佣金查询</li>
                    </ul>
                </li>
            </ul>
        </div>
        <div title="分析监控" data-options="iconCls:'icon-chart'" style="padding:10px;">
            <ul class="easyui-tree" name="mt4_crm_tree">
                <li>
                    <span>报表管理</span>
                    <ul>
                        <li>日报表</li>
                        <li>月报表</li>
                        <li>综合报表</li>
                    </ul>
                </li>
            </ul>
        </div>
        <div title="常用工具" data-options="iconCls:'icon-tool'" style="padding:10px;">
            <ul class="easyui-tree" name="mt4_crm_tree">
                <li>
                    <span>信息系统</span>
                    <ul>
                        <li>
                            <a data-model="tab" data-url="${pageContext.request.contextPath}/enterpriseMail/index">企业邮件</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="crm_menu_footer tabs-header">
        <a title="客户系统"></a>
        <a title="发送短信"></a>
        <a title="发送邮件"></a>
    </div>
</div>
<div data-options="region:'center'">
    <div name="right_tab" class="easyui-tabs" style="width:100%;height:100%"></div>
</div>
<div id="mt4_crm_main_div_right" class="easyui-menu" style="width:120px;">
    <div name="refresh" data-options="iconCls:'icon-refresh'">刷新</div>
    <div name="close" data-options="iconCls:'icon-close'">关闭当前</div>
    <div name="closeOther" data-options="iconCls:'icon-close'">关闭其他</div>
    <div name="closeAll" data-options="iconCls:'icon-close'">关闭所有</div>
</div>
<script type="text/javascript">
    $(function () {
        var main_div = $("#mt4_crm_main_div");
        $(document).bind("contextmenu", function (e) {
            return false;
        });

        function addPanel(_title, _url) {
            if ($("div[name='right_tab']", main_div).tabs('exists', _title)) {
                $("div[name='right_tab']", main_div).tabs('select', _title);
            } else {
                if (_url.indexOf("http://") > -1) {
                    var content = '<iframe scrolling="auto" frameborder="0"  src="' + _url + '" style="width:100%;height:100%;"></iframe>';
                    $("div[name='right_tab']", main_div).tabs('add', {
                        title: _title,
                        content: content,
                        closable: true
                    });
                } else {
                    $("div[name='right_tab']", main_div).tabs('add', {
                        title: _title,
                        href: _url,
                        closable: true
                    });
                }
            }
            $(".easyui-tabs .panel-body", main_div).height($(window).height() - 50 - 30 - 15);
        }

        $("ul[name='mt4_crm_tree'").tree({
            onClick: function (node) {
                if (!node.children) {
                    var model = $(node.text).data("model");
                    var _url = $(node.text).data("url");
                    var _title = $(node.text).html();
                    if (model == "window") {
                        $.EasyUI.Window({
                            url: _url,
                            type: "get",
                            width: 1000,
                            height: 550,
                            title: _title
                        });
                    } else {
                        if (_url != undefined && _url != "") {
                            addPanel(_title, _url);
                        }
                    }
                }
            }
        });
        $("div[name='refresh']", main_div).click(function () {
            var tab = $("div[name='right_tab']", main_div).tabs('getSelected');
            tab.panel('open').panel('refresh');
        });
        $("div[name='close']", main_div).click(function () {
            var tab = $("div[name='right_tab']", main_div).tabs('getSelected');
            var index = $("div[name='right_tab']", main_div).tabs('getTabIndex', tab);
            $("div[name='right_tab']", main_div).tabs('close', index);
        });
        $("div[name='closeAll']", main_div).click(function () {
            var tablist = $("div[name='right_tab']", main_div).tabs('tabs');
            for (var i = tablist.length - 1; i >= 0; i--) {
                $("div[name='right_tab']", main_div).tabs('close', i);
            }
        });
        $("div[name='closeOther']", main_div).click(function () {
            var tablist = $("div[name='right_tab']", main_div).tabs('tabs');
            var tab = $("div[name='right_tab']", main_div).tabs('getSelected');
            var index = $("div[name='right_tab']", main_div).tabs('getTabIndex', tab);
            for (var i = tablist.length - 1; i > index; i--) {
                $("div[name='right_tab']", main_div).tabs('close', i);
            }
            var num = index - 1;
            for (var i = num; i >= 0; i--) {
                $("div[name='right_tab']", main_div).tabs('close', 0);
            }
        });
        main_div.on("contextmenu", "ul[class='tabs'] li", function (e) {
            e.preventDefault();
            $('#mt4_crm_main_div_right').menu('show', {
                left: e.pageX,
                top: e.pageY
            });
        });
    })
</script>
</body>
</html>