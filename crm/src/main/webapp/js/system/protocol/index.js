/**
 * system  protocol  index.js
 */
$(function(){
	var main_div = $("#crm_protocol_main_div");
	initGrid();
	function initGrid(){
		var jsonData = {};
		var gridId = $("#crm_protocol_list");
		$("div[name='list']",main_div).height($(window).height()-125);
		$.EasyUI.DataGrid({
			gridId:gridId,
			/*striped:true,*/
			url: "/protocol/list",
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
				field:"name",
				title:"协议名称(简)",
				width:100,
				align:"center"
			},{
				field:"traditionalName",
				title:"协议名称(繁)",
				width:100,
				align:"center"
			},{
				field:"englishName",
				title:"协议名称(英)",
				width:100,
				align:"center"
			},{
				field:"_id",
				title:"操作",
				width:100,
				align:"center",
				formatter:function(value,row){
					return "<a name='operator' class='easyui-linkbutton'>操作</a>"
				}
			}]],onLoadSuccess:function(){
			}
		});
	};
});