<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/buiness/account/index.js"></script>
<div id="crm_buiness_account_main_div" style="width:100%;height:100%;">
	<div class="easyui-tabs" style="width:100%;height:95%;">
	    <div title="账户资料" style="display:none;width:100%;" data-options="href:'/account/info'">
	    </div>
	    <div title="出入金" style="overflow:auto;display:none;" data-options="href:'/account/money'">
	    </div>
	    <div title="订单" style="padding:20px;display:none;">
			订单
	    </div>
	    <div title="挂单" style="padding:20px;display:none;">
			挂单
	    </div>
	    <div title="持仓" style="padding:20px;display:none;">
			持仓
	    </div>
	    <div title="报表" style="padding:20px;display:none;">
			报表
	    </div>
	</div>
	<div class="btn_div">
		<a name="close" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-close'" style="float:right;margin-right:20px;">关闭窗口</a>
	</div>
</div>