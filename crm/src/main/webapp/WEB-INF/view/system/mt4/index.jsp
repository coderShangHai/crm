<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/mt4/index.js"></script>
<div id="crm_mt4_main_div" style="width:100%;height:100%;">
	<div class="search_form" style="padding-top:10px;padding-left:10px;">
		<select class="easyui-combobox" name="isEnabled" style="width:150px;height:32px;" data-options="prompt:'启用状态...'">
			<option value="">启用状态...</option>
			<option value="0">已禁用</option>
		    <option value="1">已启用</option>
		</select>
		<input class="easyui-textbox" name="keyword" data-options="prompt:'关键字...'" placeholder="关键字...">
		<a name="search" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
		<a name="reset" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-refresh'">重置</a>
		<a name="sync" href="#" style="float:right;margin-right:10px;" class="easyui-linkbutton" data-options="iconCls:'icon-sync'">同步组</a>
	</div>
	<div name="list" style="margin-top:10px;">
		<div id="crm_mt4_list" style="overflow:auto;width:100%;height:100%;"></div>
	</div>
	<div name="btn_div" style="width:100%;height:40px;line-height:40px;background-color:#d4d4d4;">
		<a name="close" style="margin-right:20px;float:right;margin-top:7px;" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">关闭窗口</a>
	</div>
</div>