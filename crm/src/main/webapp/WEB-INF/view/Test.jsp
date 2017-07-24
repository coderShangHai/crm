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
    <div data-options="region:'south',split:true" style="height:5px;"></div>
    <div data-options="region:'west',split:true" title="总经办：平台商" style="width:200px;">

        <div id="aa" class="easyui-accordion" data-options="fit:true">
            <div title="系统管理" data-options="iconCls:'icon-save',selected:true" style="overflow:auto;padding:10px;">
                <ul id="setting" class="easyui-tree">
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
                <ul id="serviceManagement" class="easyui-tree">
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
                </ul>
            </div>
            <div title="Title3">
            </div>
        </div>
    </div>
    <div data-options="region:'center',title:'桌面'"></div>
</div>
</body>
</html>