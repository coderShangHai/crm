<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/buiness/account/money.js"></script>
<div id="crm_buiness_money_main_div" style="width:100%;height:100%;">
	<div>
		<input type="text" class="easyui-datebox" name="startDate" data-options="prompt:'日期从...'">
		<input type="text" class="easyui-datebox" name="endDate" data-options="prompt:'日期至...'">
		<input type="text" class="textbox" placeholder="关键字...">
		<a name="search" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
		<a name="reset" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-refresh'"> </a>
		<a name="reset" class="refresh"> </a>
	</div>
	<div name="list" style="overflow:auto;height:100%;width:100%;">
		<div id="crm_buiness_money_list"></div>
	</div>
</div>