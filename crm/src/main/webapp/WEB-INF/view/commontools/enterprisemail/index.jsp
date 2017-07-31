<%@ page contentType="text/html;charset=UTF-8" %>
<script type="text/javascript" src="/jquery/datagrid-groupview.js"></script>
<table id="enterpriseMailTable">
</table>
<script>
    $(function () {

        $('#enterpriseMailTable').datagrid({
            url: '/enterpriseMail/list',
            rownumbers: true,
            fitColumns: true,
            fit: true,
            pagination: true,
            singleSelect:true,
            onClickRow: function (rowIndex, rowData) {
                $(this).datagrid('unselectRow', rowIndex);
            },
            columns: [
                [
                    {title: '发件信息', align: 'center', colspan: 4},
                    {title: '收件信息', align: 'center', colspan: 3},
                    {title: '邮件标题', field: 'title', align: 'center', rowspan: 2, width: 300},
                    {title: '操作', field: 'option', align: 'center', rowspan: 2, width: 80},
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
                })
            }
        });
    })
</script>
