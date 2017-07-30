<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/buiness/account/detail.js"></script>
<style type="text/css">
#crm_buiness_account_detail_main_div .crm_system_function input[type='text'] {width:180px !important;}
.crm_system_function table.history td:nth-child(odd){width:70px;}
</style>
<div id="crm_buiness_account_detail_main_div" style="width:100%;height:100%;">
	<div class="easyui-tabs" style="width:100%;height:100%;">
	    <div title="账户资料" style="display:none;">
			<div class="easyui-accordion" style="width:100%;height:100%;">
				<div title="申请资料" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
					<div class="crm_system_function">
						<fieldset>
						    <legend><a name="direct" class="up"></a>申请资料</legend>
						    <table>
						    	<tr>
						    		<td>姓名:</td>
						    		<td><input type="text" class="textbox" value="李细娇"/></td>
						    		<td><input type="text" class="textbox" value="LiXiJiao"/></td>
						    		<td>联络:</td>
						    		<td><input type="text" class="textbox" value="15204789615"/></td>
						    		<td><input type="text" class="textbox" value="2963971900@qq.com"/></td>
						    	</tr>
						    	<tr>
						    		<td>证件:</td>
						    		<td><input type="text" class="textbox" value="中国"/></td>
						    		<td><input type="text" class="textbox" value="152801196908270361"/></td>
						    		<td>住址:</td>
						    		<td><input type="text" class="textbox" value="中国"/></td>
						    		<td><input type="text" class="textbox" value="内蒙古巴...."/></td>
						    	</tr>
						    </table>
						</fieldset>
						<fieldset>
						    <legend><a name="direct" class="up"></a>账户信息</legend>
						    <table>
						    	<tr>
						    		<td style="width:80px;">权限:</td>
						    		<td><input type="text" class="textbox" value="实盘权限"/></td>
						    		<td style="width:80px;">组:</td>
						    		<td><input type="text" class="textbox" value="IB-7006"/></td>
						    		<td style="width:80px;">代理:</td>
						    		<td><input type="text" class="textbox" value="706026" style="width:70px !important;"/>
						    			<input type="text" class="textbox" value="王帅龙" style="width:110px !important;"/>
						    		</td>
						    		<td style="width:80px;">业务员:</td>
						    		<td><input type="text" class="textbox" value="LiXiJiao"/></td>
						    	</tr>
						    	<tr>
						    		<td style="width:80px;">税率:</td>
						    		<td><input type="text" class="textbox" value="0"/></td>
						    		<td style="width:80px;">杠杆:</td>
						    		<td><input type="text" class="textbox" value="100"/></td>
						    		<td style="width:80px;">创建时间:</td>
						    		<td><input type="text" class="textbox" value="2017-07-07 10:10:33"/></td>
						    		<td style="width:80px;">最后更新:</td>
						    		<td><input type="text" class="textbox" value="2017-07-17 10:10:33"/></td>
						    	</tr>
						    	<tr>
						    		<td style="width:80px;">MT4国家:</td>
						    		<td><input type="text" class="textbox" value=""/></td>
						    		<td style="width:80px;">MT4省份:</td>
						    		<td><input type="text" class="textbox" value=""/></td>
						    		<td style="width:80px;">MT4城市:</td>
						    		<td><input type="text" class="textbox" value=""/></td>
						    		<td style="width:80px;">MT4注释:</td>
						    		<td><input type="text" class="textbox" value=""/></td>
						    	</tr>
						    	<tr>
						    		<td style="width:80px;">备注:</td>
						    		<td colspan="7">
						    			<textarea rows="3" cols="5" class="textbox" style="width:1030px !important;height:60px !important;"></textarea>
						    		</td>
						    	</tr>
						    </table>
						</fieldset>
						<fieldset>
						    <legend><a name="direct" class="up"></a>交易历史</legend>
						    <table class="history">
						    	<tr>
						    		<td>入金:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>笔数:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>出金:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>笔数:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>信用:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>笔数:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td style="width:80px;">净入金:</td>
						    		<td><input type="text" class="textbox" value="0"/>
						    		</td>
						    	</tr>
						    	<tr>
						    		<td>成交量:</td>
						    		<td colspan="3"><input type="text" class="textbox" value="0"/></td>
						    		<td>盈利:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>笔数:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>佣金:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>利息:</td>
						    		<td><input type="text" class="textbox" value="0" style="width:70px !important;"/></td>
						    		<td>交易收入:</td>
						    		<td><input type="text" class="textbox" value="0"/></td>
						    	</tr>
						    </table>
						</fieldset>
						<fieldset>
						    <legend><a name="direct" class="up"></a>账户余额</legend>
						    <table>
						    	<tr>
						    		<td style="width:80px;">账户余额:</td>
						    		<td><input type="text" class="textbox" value="0"/></td>
						    		<td style="width:80px;">净值:</td>
						    		<td><input type="text" class="textbox" value="0"/></td>
						    		<td style="width:80px;">保证金:</td>
						    		<td><input type="text" class="textbox" value="0"/>
						    		</td>
						    		<td style="width:80px;">可用:</td>
						    		<td><input type="text" class="textbox" value="0"/></td>
						    	</tr>
						    </table>
						</fieldset>
					</div>
				</div>
				<div title="银行卡与证件" data-options="iconCls:'icon-help'">
					<div class="btn_div" style="float:right;">
						<a name="add" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加银行卡</a>
						<a name="add" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">删除</a>
						<a name="refresh" class="refresh"></a>
					</div>
					<div name="list">
						<div id=""></div>
					</div>	
				</div>
			</div>
	    </div>
	    <div title="出入金" style="overflow:auto;padding:20px;display:none;">
			出入金
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
</div>