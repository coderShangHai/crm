<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">

</style>
<div class="crm_system_function">
	<fieldset>
	    <legend><a name="direct" class="up"></a>基础设置</legend>
	    <table>
	    	<tr>
	    		<td>默认风格:</td>
	    		<td>
	    			<label><input type="radio" name="style" checked="checked"/>Site</label>
	    			<label><input type="radio" name="style"/>Contror</label>
	    			<label><input type="radio" name="style"/>Desktop</label>
	    		</td>
	    		<td>支付接口:</td>
	    		<td>
	    			<select class="easyui-combobox" name="sex" style="width:150px;height:32px;">
						<option value="" selected="selected">在线支付 - 2001131129</option>
					</select>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>实盘软件:</td>
	    		<td>
	    			<input class="textbox" value=""/>
	    		</td>
	    		<td>模拟盘软件:</td>
	    		<td>
	    			<input class="textbox" value=""/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>邮件反馈:</td>
	    		<td>
	    			<input class="textbox" value="" placeholder="邮箱"/>
	    		</td>
	    	</tr>
	    </table>
	</fieldset>
	<fieldset>
	    <legend><a name="direct" class="up"></a>开户控制</legend>
	    <table>
	    	<tr>
	    		<td>模拟账户:</td>
	    		<td>
					<label><input type="checkbox"/>需校验码</label>
					<label><input type="checkbox"/>需要审核</label>
					<label><input type="checkbox"/>邮件通知</label>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>真实账户:</td>
	    		<td>
					<label><input type="checkbox"/>需校验码</label>
					<label><input type="checkbox" checked="checked"/>需要审核</label>
					<label><input type="checkbox" checked="checked"/>邮件通知</label>
					<label><input type="checkbox"/>启用临时账户</label>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>代理账户:</td>
	    		<td>
					<label><input type="checkbox"/>需校验码</label>
					<label><input type="checkbox" checked="checked"/>需要审核</label>
					<label><input type="checkbox" checked="checked"/>邮件通知</label>
					<label><input type="checkbox"/>启用临时账户</label>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>资料更改:</td>
	    		<td>
					<label><input type="checkbox"/>需校验码</label>
					<label><input type="checkbox"/>需要审核</label>
					<label><input type="checkbox"/>邮件通知</label>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>开户证件:</td>
	    		<td>
					<label><input type="checkbox" checked="checked"/>身份证(正)</label>
					<label><input type="checkbox" checked="checked"/>身份证(反)</label>
					<label><input type="checkbox"/>银行卡(正)</label>
					<label><input type="checkbox"/>银行卡(反)</label>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>杠杆:</td>
	    		<td>
					<input class="textbox" value="100"/>
	    		</td>
	    	</tr>
	    </table>
	</fieldset>
	<fieldset>
	    <legend><a name="direct" class="up"></a>账户入金设置</legend>
	    <table>
	    	<tr>
	    		<td>汇率方式:</td>
	    		<td>
	    			<label><input type="checkbox"/>实时汇率</label>
	    		</td>
	    		<td>汇率:</td>
	    		<td>
	    			<input class="textbox" value="6.7831"/>
	    		</td>
	    		<td>单笔最小</td>
	    		<td>
	    			<input class="textbox" value="500"/>
	    		</td>
	    		<td>单笔最大:</td>
	    		<td>
					<input class="textbox" value="100000"/>
				</td>
	    	</tr>
	    	<tr>
	    		<td>功能控制</td>
	    		<td colspan="7">
	    			<label><input type="checkbox"/>需校验码</label>
					<label><input type="checkbox"/>邮件通知</label>
	    		</td>
	    	</tr>
	    </table>
	</fieldset>
	<fieldset>
	    <legend><a name="direct" class="up"></a>账户出金设置</legend>
	    <table>
	    	<tr>
	    		<td>汇率方式:</td>
	    		<td>
	    			<label><input type="checkbox"/>实时汇率</label>
	    		</td>
	    		<td>汇率:</td>
	    		<td>
	    			<input class="textbox" value="6.6803"/>
	    		</td>
	    		<td>单笔最小</td>
	    		<td>
	    			<input class="textbox" value="100"/>
	    		</td>
	    		<td>单笔最大:</td>
	    		<td>
					<input class="textbox" value="100000"/>
				</td>
	    	</tr>
	    	<tr>
	    		<td>功能控制</td>
	    		<td colspan="7">
	    			<label><input type="checkbox" checked="checked"/>需校验码</label>
					<label><input type="checkbox" checked="checked"/>邮件通知</label>
	    		</td>
	    	</tr>
	    </table>
	</fieldset>
	<fieldset>
	    <legend><a name="direct" class="up"></a>转账设置</legend>
	    <table>
	    	<tr>
	    		<td width="10%">转账:</td>
	    		<td>
	    			<label><input type="checkbox"/>启用</label>
	    		</td>
	    	</tr>
	    </table>
	</fieldset>
	<fieldset>
	    <legend><a name="direct" class="up"></a>返佣设置</legend>
	    <table>
	    	<tr>
	    		<td width="10%">返佣:</td>
	    		<td>
	    			<label><input type="checkbox"/>启用</label>
	    		</td>
	    	</tr>
	    </table>
	</fieldset>
	<div style="width:100%;text-align:right;">
		<a name="save" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存信息</a>
		<a name="cancel" style="margin-left:10px;margin-right:20px;" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">取消操作</a>
	</div>
</div>