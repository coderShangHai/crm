/**
 * system  mt4  index.js
 */
$(function(){
	var main_div = $("#crm_mt4_main_div");
	main_div.on("click","a[name='close']",function(){
		$.EasyUI.Window.close(main_div);
	});
	initGrid();
	function initGrid(){
		var jsonData = {};
		var gridId = $("#crm_mt4_list");
		$("div[name='list']",main_div).height(313);
		$.EasyUI.DataGrid({
			gridId:gridId,
			/*striped:true,*/
			url: "/mt4/list",
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
				field:"groupName",
				title:"组名",
				width:400,
				align:"center",
				formatter:function(value){
					return "<a name='detail' data-id='"+value+"'>"+value+"</a>"
				}
			},{
				field:"_id",
				title:"启用",
				width:100,
				align:"center",
				formatter:function(value,row){
					var btn = "";
					btn += "<input name='isEnabled' type='checkbox' ";
					if(row.isEnabled){
						btn+=" checked='checked' "
					}
					btn+="/>";
					return btn;
				}
			}]],onLoadSuccess:function(){
			}
		});
	};
});