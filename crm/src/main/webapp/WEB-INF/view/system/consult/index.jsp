<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/consult/index.js"></script>
<div id="crm_consult_main_div" style="width:100%;height:100%;">
	<div class="easyui-layout" style="width:100%;height:100%;">
		<div data-options="region:'west',split:true,iconCls:'icon-ok'" title="客户咨询与反馈" style="width:70%;">
			<div class="btn_div" style="background-color:#F2F2F2;width：100%；height:30px;">
				<select class="easyui-combobox" name="state" style="width:150px;height:32px;" data-options="prompt:'启用状态...'">
					<option value="0">未解决</option>
				    <option value="1">已解决</option>
				</select>
				<input class="easyui-textbox" name="keyword" data-options="prompt:'关键字...'" placeholder="关键字...">
				<a name="search" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
				<a name="reset" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-refresh'">重置</a>
			</div>
			<div name="list">
				<div id="crm_consult_list" style="overflow:auto;width:100%;height:100%;"></div>
			</div>
		</div>
		<div data-options="region:'center',title:'客户追问与客服回复',iconCls:'icon-ok'">
		</div>
	</div>
</div>