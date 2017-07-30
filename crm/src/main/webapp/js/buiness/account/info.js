/**
 * system  mt4  index.js
 */
$(function(){
	var main_div = $("#crm_account_info");
	initGrid();
	function initGrid(){
		var jsonData = {};
		var gridId = $("#crm_account_bank_list");
		$("div[name='list']",main_div).height(200);
		$.EasyUI.DataGrid({
			gridId:gridId,
			/*striped:true,*/
			url: "/account/bank",
			queryParams: jsonData,//关键之处
			fitColumns: true,
			collapsible:false,
			nowrap: true,
			singleSelect: true,
			pagination: false,
			remoteSort: true,
			border: true,
			rownumbers: true,
			rowStyler:function(){
				return "height:35px";
			},
			columns: [[{
				field:"mainBank",
				title:"开户行",
				width:100,
				align:"center"
			},{
				field:"branchBank",
				title:"支行",
				width:300,
				align:"center"
			},{
				field:"name",
				title:"户名",
				width:100,
				align:"center"
			},{
				field:"account",
				title:"账号",
				width:100,
				align:"center"
			},{
				field:"_id",
				title:"上传",
				width:100,
				align:"center"
			}]],onLoadSuccess:function(){
			}
		});
	};
});