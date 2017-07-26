/**
 * system  mt4  index.js
 */
$(function(){
	var main_div = $("#crm_consult_main_div");
	initGrid();
	function initGrid(){
		var jsonData = {};
		var gridId = $("#crm_consult_list");
		$("div[name='list']",main_div).height(main_div.height()-65);
		$.EasyUI.DataGrid({
			gridId:gridId,
			/*striped:true,*/
			url: "/consult/list",
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
				field:"consultDate",
				title:"咨询日期",
				width:100,
				align:"center",
				formatter:function(value){
					return value;
				}
			},{
				field:"nickName",
				title:"用户",
				width:100,
				align:"center"
			},{
				field:"question",
				title:"问题",
				width:100,
				align:"center"
			},{
				field:"content",
				title:"内容",
				width:100,
				align:"center"
			},{
				field:"state",
				title:"解决状态",
				width:100,
				align:"center",
				formatter:function(value,row){
					var btn = "";
					return btn;
				}
			}]],onLoadSuccess:function(){
			}
		});
	};
});