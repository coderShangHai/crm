<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table id="reportManagementDailyTable">
</table>
<script>
    $(function () {

        $('#reportManagementDailyTable').datagrid({
            url: '/reportManagement/daily/list',
            rownumbers: true,
            fitColumns: true,
            fit: true,
            singleSelect: true,
            showFooter: true,
            onClickRow: function (rowIndex, rowData) {
            },
            columns: [
                [
                    {title: '账单日期', field: 'billDate', rowspan: 2, width: 20},
                    {title: '出入金', align: 'center', colspan: 3},
                    {title: '交易', align: 'center', colspan: 6}
                ],
                [
                    {title: '入金', field: 'inGlod', width: 10},
                    {title: '出金', field: 'outGlod', width: 10},
                    {title: '净入金', field: 'nettedGlod', width: 10},
                    {title: '成交量', field: 'volume', width: 10},
                    {title: '盈利', field: 'profit', width: 10},
                    {title: '佣金', field: 'commision', width: 10},
                    {title: '税金', field: 'tax', width: 10},
                    {title: '利息', field: 'interest', width: 10},
                    {title: '交易收入', field: 'income', width: 10}
                ]
            ],
            onLoadSuccess: function (data) {
            }
        });

    })
</script>