/**
 * system  mt4  index.js
 */
$(function(){
	var main_div = $("#crm_buiness_deposit_main_div");
	main_div.on("click","a[name='right']",function(){
		$.EasyUI.message("正在进行审核操作");
	});
	initGrid();
	function initGrid(){
		var jsonData = {};
		var gridId = $("#crm_buiness_deposit_list");
		$("div[name='list']",main_div).height(main_div.height()-29);
		$.EasyUI.DataGrid({
			gridId:gridId,
			/*striped:true,*/
			url: "/deposit/list",
			queryParams: jsonData,//关键之处
			fitColumns: false,
			collapsible:false,
			nowrap: true,
			singleSelect: true,
			pagination: true,
			remoteSort: true,
			border: true,
			rownumbers: true,
			rowStyler:function(){
				return "height:35px";
			},
			columns: [[{
				field:"account",
				title:"账户",
				width:100,
				align:"center",
				rowspan:2
			},{
				field:"_applyUser",
				title:"入金信息",
				align:"center",
				colspan:7
			},{
				field:"_account",
				title:"客户信息",
				align:"center",
				colspan:5
			},{
				field:"_shenhe",
				title:"审核信息",
				align:"center",
				colspan:2
			},{
				field:"_oper",
				title:"操作",
				width:100,
				align:"center",
				rowspan:2,
				formatter:function(value){
					return "<a name='right' class='oper_right' /></a>"
				}
			}],[{
				field:"beijingTime",
				title:"北京时间",
				width:100,
				align:"center"
			},{
				field:"utc",
				title:"UTC",
				width:100,
				align:"center"
			},{
				field:"depositType",
				title:"入金类型",
				width:100,
				align:"center"
			},{
				field:"payBank",
				title:"付款银行",
				width:100,
				align:"center"
			},{
				field:"usd",
				title:"USD",
				width:150,
				align:"center"
			},{
				field:"cny",
				title:"CNY",
				width:100,
				align:"center"
			},{
				field:"exchangeRate",
				title:"汇率",
				width:100,
				align:"center"
			},{
				field:"name",
				title:"姓名",
				width:100,
				align:"center"
			},{
				field:"phone",
				title:"手机",
				width:100,
				align:"center"
			},{
				field:"email",
				title:"邮箱",
				width:100,
				align:"center"
			},{
				field:"totalDeposit",
				title:"累计入金",
				width:100,
				align:"center"
			},{
				field:"totalGold",
				title:"累计出金",
				width:100,
				align:"center"
			},{
				field:"state",
				title:"状态",
				width:100,
				align:"center",
				formatter:function(value){
					return "<img src='../images/state.png' />"
				}
			},{
				field:"explain",
				title:"说明",
				width:100,
				align:"center"
			}]],onLoadSuccess:function(){
			},onDblClickRow: function (rowIndex, rowData) {
				$.EasyUI.Window({
                    url: "/account/index",
                    type: "get",
                    width: 1200,
                    height: 600,
                    title: "账户详情 "+rowData.account
                });
			}
		});
	};
});