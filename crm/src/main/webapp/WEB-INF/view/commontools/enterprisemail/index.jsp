<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table class="easyui-treegrid"
       data-options="url:'get_data.php',idField:'id',treeField:'sendDate',fit:true">
    <thead>
    <tr>
        <th data-options="align:'center',colspan:4">发件信息</th>
        <th data-options="align:'center',colspan:3">收件信息</th>
        <th data-options="field:'title',align:'center',rowspan:2,width:150">邮件标题</th>
        <th data-options="field:'option',align:'center',rowspan:2,width:80">操作</th>
        <th data-options="field:'rsend',align:'center',rowspan:2,width:80">重发</th>
    </tr>
    <tr>
        <th data-options="field:'sendTime',width:100">发件时间</th>
        <th data-options="field:'nature,width:400'">邮件性质</th>
        <th data-options="field:'sendResult,width:200'">发送结果</th>
        <th data-options="field:'explain',width:400">说明</th>
        <th data-options="field:'receiveMailbox',width:200">收件邮箱</th>
        <th data-options="field:'account',width:200">账号</th>
        <th data-options="field:'recipients',width:200">收件人</th>
    </tr>
    </thead>
</table>
