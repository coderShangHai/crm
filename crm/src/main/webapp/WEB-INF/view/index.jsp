<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/static/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/static/themes/icon.css">
    <script type="text/javascript" src="/static/jquery.min.js"></script>
    <script type="text/javascript" src="/static/jquery.easyui.min.js"></script>
</head>
<body>
<div id="cc" class="easyui-layout" data-options="fit:true">
    <div data-options="region:'north'" style="height:50px"></div>
    <div data-options="region:'south'" style="height:5px;"></div>
    <div data-options="region:'east'" style="width:5px;"></div>

    <div data-options="region:'west',split:true" title="总经办：平台商" style="width:200px;">
        <div id="treePanel" class="easyui-accordion" data-options="fit:true">
            <div title="系统管理" data-options="iconCls:'icon-save',selected:true" style="overflow:auto;padding:10px;">
                <ul id="setting" class="easyui-tree" data-options="lines:true">
                    <li>
                        <span>系统设置</span>
                        <ul>
                            <li>
                                <span>全局配置</span>
                            </li>
                            <li>
                                <span>MT4组管理</span>
                            </li>
                            <li>
                                <span>功能配置</span>
                            </li>
                            <li>
                                <span>协议设置</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>工作系统</span>
                        <ul>
                            <li>
                                <span>站内咨询</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div title="业务管理" data-options="iconCls:'icon-save'" style="padding:10px;">
                <ul id="serviceManagement" class="easyui-tree" data-options="lines:true">
                    <li>
                        <span>业务处理</span>
                        <ul>
                            <li>
                                <span>账户审核</span>
                            </li>
                            <li>
                                <span>入金审核</span>
                            </li>
                            <li>
                                <span>出金审核</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>帐户管理</span>
                        <ul>
                            <li>
                                <span>模拟账户</span>
                            </li>
                            <li>
                                <span>真实账户</span>
                            </li>
                            <li>
                                <span>代理账户</span>
                            </li>
                            <li>
                                <span>全局同步</span>
                            </li>
                            <li>
                                <span>权限分配</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>出入金管理</span>
                        <ul>
                            <li>
                                <span>入金管理</span>
                            </li>
                            <li>
                                <span>出金管理</span>
                            </li>
                            <li>
                                <span>转账记录</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>代理相关</span>
                        <ul>
                            <li>
                                <span>返佣设置</span>
                            </li>
                            <li>
                                <span>佣金查询</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div title="分析监控">
                <ul id="analysisMonitoring" class="easyui-tree" data-options="lines:true">
                    <li>
                        <span>报表管理</span>
                        <ul>
                            <li>
                                <span>日报表</span>
                            </li>
                            <li>
                                <span>月报表</span>
                            </li>
                            <li>
                                <span>综合报表</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div title="常用工具">
                <ul id="commonTools" class="easyui-tree" data-options="lines:true">
                    <li>
                        <span>信息系统</span>
                        <ul>
                            <li>
                                <span>企业邮件</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div data-options="region:'center',title:'桌面'"></div>
</div>
</body>
</html>