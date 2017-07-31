<%@ page contentType="text/html;charset=UTF-8" %>
<script type="text/javascript" src="/jquery/datagrid-groupview.js"></script>
<div id="enterpriseMail_tb">
    <select id="mailNature" class="easyui-combobox" name="dept" style="width:200px;" data-options="prompt:'邮件类型'">
        <option value="0">申请模拟账户</option>
        <option value="1">申请真实账户</option>
        <option value="2">账户取款</option>
        <option value="3">系统通知</option>
        <option value="4">帐号返佣</option>
        <option value="5">申请代理帐户</option>
        <option value="6">修正账户资料</option>
        <option value="7">账户存款</option>
        <option value="8">账户转账</option>
        <option value="9">验证码</option>
    </select>
    <input id="startDate" class="easyui-datebox" data-options="width:50,prompt:'发送日期从'">
    <input id="endDate" class="easyui-datebox" data-options="width:50,prompt:'发送日期至'">
    <input class="easyui-textbox" data-options="prompt:'关键字'" style="width:300px">
    <a id="enterpriseMail_search" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
    <a id="enterpriseMail_clear" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-clear'"></a>
</div>
<table id="enterpriseMailTable">
</table>
<script>
    $(function () {

        $('#enterpriseMailTable').datagrid({
            url: '/enterpriseMail/list',
            rownumbers: true,
            fitColumns: true,
            fit: true,
            toolbar: '#enterpriseMail_tb',
            pagination: true,
            singleSelect: true,
            pageSize: 30,
            onClickRow: function (rowIndex, rowData) {
                $(this).datagrid('unselectRow', rowIndex);
            },
            columns: [
                [
                    {title: '发件信息', align: 'center', colspan: 4},
                    {title: '收件信息', align: 'center', colspan: 3},
                    {title: '邮件标题', field: 'title', align: 'center', rowspan: 2, width: 300},
                    {title: '操作', field: 'option', align: 'center', rowspan: 2, width: 80,
                        formatter: function (value, row, index) {
                            return "<a name='enterpriseMail_option' mailId='" + row.id + "'" + ">" + "<img  src='/images/details.png'>" + "</a>";

                        }},
                    {
                        title: '重发', field: 'resend', align: 'center', rowspan: 2, width: 80,
                        formatter: function (value, row, index) {
                            return "<a name='enterpriseMail_resend' mailId='" + row.id + "'" + ">" + "<img  src='/images/action.png'>" + "</a>";

                        }
                    }
                ],
                [
                    {title: '发件时间', field: 'sendTime', width: 100},
                    {title: '邮件性质', field: 'nature', width: 200},
                    {title: '发送结果', field: 'sendResult', width: 200},
                    {title: '说明', field: 'explain', width: 200},
                    {title: '账号', field: 'receiveMailbox', width: 200},
                    {title: '收件邮箱', field: 'account', width: 200},
                    {title: '收件人', field: 'recipients', width: 200}
                ]
            ],
            view: groupview,
            groupField: 'sendDate',
            groupFormatter: function (value, rows) {
                return value + "&nbsp;&nbsp;&nbsp;&nbsp;共" + rows.length + "条";
            },
            onLoadSuccess: function (data) {
                $("a[name='enterpriseMail_resend']").click(function () {
                    console.info($(this).attr("mailId"));
                });
                $('#mailNature').combobox('clear');
            }
        });

    })
</script>
