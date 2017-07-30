/**
 * system  mt4  index.js
 */
$(function(){
	var main_div = $("#crm_buiness_account_type_main_div");
	initGrid();
	function initGrid(){
		var jsonData = {};
		var gridId = $("#crm_buiness_account_type_list");
		$("div[name='list']",main_div).height(main_div.height()-65);
		$.EasyUI.DataGrid({
			gridId:gridId,
			/*striped:true,*/
			url: "/accountType/list",
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
				field:"tempAccount",
				title:"临时账户",
				width:100,
				align:"center",
				rowspan:2
			},{
				field:"_applyUser",
				title:"申请人信息",
				align:"center",
				colspan:7
			},{
				field:"_account",
				title:"账户信息",
				align:"center",
				colspan:3
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
				rowspan:2
			}],[{
				field:"applyDate",
				title:"申请时间",
				width:100,
				align:"center"
			},{
				field:"nickName",
				title:"姓名",
				width:100,
				align:"center"
			},{
				field:"phoneNum",
				title:"手机",
				width:100,
				align:"center"
			},{
				field:"email",
				title:"邮箱",
				width:100,
				align:"center"
			},{
				field:"idCard",
				title:"证件",
				width:150,
				align:"center",
				formatter:function(value,row){
					return row.country+" "+value;
				}
			},{
				field:"address",
				title:"地址",
				width:100,
				align:"center"
			},{
				field:"sameAccountNum",
				title:"同名账户",
				width:100,
				align:"center"
			},{
				field:"accountType",
				title:"账户类型",
				width:100,
				align:"center"
			},{
				field:"lever",
				title:"杠杆",
				width:100,
				align:"center"
			},{
				field:"proxy",
				title:"代理",
				width:100,
				align:"center"
			},{
				field:"state",
				title:"状态",
				width:100,
				align:"center"
			},{
				field:"explain",
				title:"说明",
				width:100,
				align:"center"
			}]],onLoadSuccess:function(){
			}
		});
	};
});