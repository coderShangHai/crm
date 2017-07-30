/**
 * system  mt4  index.js
 */
$(function(){
	var main_div = $("#crm_buiness_money_main_div");
	initGrid();
	function initGrid(){
		var jsonData = {};
		var gridId = $("#crm_buiness_money_list");
		$("div[name='list']",main_div).height(470);
		$.EasyUI.DataGrid({
			gridId:gridId,
			/*striped:true,*/
			url: "/account/money",
			queryParams: jsonData,//关键之处
			fitColumns: true,
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
				field:"time",
				title:"时间",
				width:100,
				align:"center"
			},{
				field:"order",
				title:"订单",
				width:200,
				align:"center"
			},{
				field:"type",
				title:"交易类型",
				width:200,
				align:"center"
			},{
				field:"money",
				title:"金额",
				width:100,
				align:"center",
				formatter:function(value){
					return "$"+value;
				}
			}]],onLoadSuccess:function(){
			}
		});
	};
});