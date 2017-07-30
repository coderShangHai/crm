<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/buiness/deposit/index.js"></script>
<div id="crm_buiness_deposit_main_div" style="width:100%;height:100%;">
	<div>
		<select class="easyui-combobox">
			<option value="0" selected="selected">等待处理</option>
		    <option value="1">失败</option>
		    <option value="">全部</option>
		</select>
		<select class="easyui-combobox" data-options="prompt:'组...'">
			<option value=""></option>
			<option value="IB-7001">IB-7001</option>
		    <option value="IB-7002">IB-7002</option>
		    <option value="IB-7003">IB-7003</option>
		    <option value="IB-7004">IB-7004</option>
		    <option value="IB-7005">IB-7005</option>
		    <option value="IB-7006">IB-7006</option>
		</select>
		<select class="easyui-combobox" data-options="prompt:'业务员...'">
			<option value=""></option>
			<option value="scadmin">软件商 scadmin</option>
		    <option value="admin">平台商 admin</option>
		    <option value="fxeie">平台商</option>
		</select>
		<input type="text" class="textbox" placeholder="账号...">
		<input type="text" class="textbox" placeholder="关键字...">
		<a name="search" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
		<a name="reset" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-refresh'"> </a>
		<a name="reset" class="refresh"> </a>
		<a name="search" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" style="float:right;margin-top:2px;">删除</a>
	</div>
	<div name="list" style="overflow:auto;height:100%;width:100%;">
		<div id="crm_buiness_deposit_list"></div>
	</div>
</div>