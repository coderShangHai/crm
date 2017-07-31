<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<style type="text/css">
    .crm_system_global table {
        width: 100%;
    }

    .crm_system_global table input {
        height: 32px !important;
        width: 150px !important;
    }

    .crm_system_global fieldset {
        border: 1px solid #d4d4d4;
        border-radius: 5px;
    }

    .crm_system_global .up {
        background: url(${pageContext.request.contextPath}/images/up.png) no-repeat center center;
        display: block;
        width: 20px;
        height: 20px;
        float: left;
    }

    .crm_system_global .down {
        background: url(${pageContext.request.contextPath}/images/down.png) no-repeat center center;
        display: block;
        width: 20px;
        height: 20px;
        float: left;
    }

    .crm_system_global legend {
        cursor: pointer;
    }

    .crm_system_global table input[type='radio'] {
        width: 17px !important;
        height: 17px !important;
    }

    .crm_system_global div a {
        height: 30px;
        width: 90px;
        margin-top: 10px;
    }

    .crm_system_global div a .l-btn-text {
        line-height: 28px;
    }
</style>
<script type="text/javascript">
    $(function () {
        var main_div = $("#crm_system_global_main_div");
        $("legend", main_div).click(function () {
            if ($("a[name='direct']", $(this)).hasClass("up")) {
                $("a[name='direct']", $(this)).addClass("down").removeClass("up");
                $(this).closest("fieldset").find("table").hide();
            } else {
                $("a[name='direct']", $(this)).addClass("up").removeClass("down");
                $(this).closest("fieldset").find("table").show();
            }
        });
    })
</script>
<div class="crm_system_global" id="crm_system_global_main_div">
    <fieldset>
        <legend><a name="direct" class="up"></a>系统信息</legend>
        <table>
            <tr>
                <td>英文名称:</td>
                <td>
                    <input class="easyui-textbox" name="englishName" value="Elaine Emily Ingleton Ltd"/>
                </td>
                <td>中文名称:</td>
                <td>
                    <input class="easyui-textbox" name="chinaName" value="易艾金融"/>
                </td>
                <td>简称/别名:</td>
                <td>
                    <input class="easyui-textbox" name="shortName" value="易艾金融"/>
                </td>
            </tr>
            <tr>
                <td>电话:</td>
                <td>
                    <input class="easyui-textbox" name="telphone" value="+044 161 7680360"/>
                </td>
                <td>传真:</td>
                <td>
                    <input class="easyui-textbox" name="fax" value=""/>
                </td>
                <td>邮箱:</td>
                <td>
                    <input class="easyui-textbox" name="email" value="info@fxeie.cn"/>
                </td>
            </tr>
            <tr>
                <td>企业QQ:</td>
                <td>
                    <input class="easyui-textbox" name="qq" value=""/>
                </td>
                <td>网址:</td>
                <td colspan="3">
                    <input style="width:420px !important" class="easyui-textbox" name="url"
                           value="http://www.fxeie.com"/>
                </td>
            </tr>
            <tr>
                <td>中文地址:</td>
                <td colspan="2">
                    <input style="width:220px !important" class="easyui-textbox" name="chinaAddress"
                           value="Unit 46 Cariocca business park 2 Sawley road miles platting Manchester"/>
                </td>
                <td>英文地址:</td>
                <td colspan="2">
                    <input style="width:220px !important;" class="easyui-textbox" name="englishAddress"
                           value="Unit 46 Cariocca business park 2 Sawley road miles platting Manchester"/>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset>
        <legend><a name="direct" class="up"></a>系统配置</legend>
        <table>
            <tr>
                <td>系统本位币:</td>
                <td>
                    <select class="easyui-combobox" name="currency" style="width:150px;height:32px;">
                        <option value="0" selected="selected">美金</option>
                        <option value="1">人民币</option>
                    </select>
                </td>
                <td>拼音格式:</td>
                <td>
                    <input class="easyui-textbox" name="chinaName" value="易艾金融"/>
                </td>
                <td>优先显示:</td>
                <td>
                    <label><input type="radio" name="defaultLanguage">英文</label>
                    <label><input type="radio" name="defaultLanguage" checked="checked">中文</label>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset>
        <legend><a name="direct" class="up"></a>邮件接口配置</legend>
        <table>
            <tr>
                <td>SMTP:</td>
                <td>
                    <input class="easyui-textbox" name="smtp" value="smtp.qiye.163.com"/>
                </td>
                <td>端口:</td>
                <td>
                    <input class="easyui-textbox" name="smtpPort" value="25"/>
                </td>
                <td><label><input type="checkbox" style="width:20px !important;height:20px !important;">SSL</label></td>
                <td>账号:</td>
                <td>
                    <input class="easyui-textbox" name="account" value="info@fxeie.cn"/>
                </td>
            </tr>
            <tr>
                <td>POP3:</td>
                <td>
                    <input class="easyui-textbox" name="pop3" value="Elaine Emily Ingleton Ltd"/>
                </td>
                <td>端口:</td>
                <td>
                    <input class="easyui-textbox" name="pop3Port" value="0"/>
                </td>
                <td><label><input type="checkbox" style="width:20px !important;height:20px !important;">SSL</label></td>
                <td>密码:</td>
                <td>
                    <input class="easyui-textbox" type="password" name="password" value="123456"/>
                </td>
            </tr>
        </table>
    </fieldset>
    <div style="width:100%;text-align:right;">
        <a name="save" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存信息</a>
        <a name="upload" style="margin-left:10px;" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-upload'">上传标志</a>
        <a name="cancel" style="margin-left:10px;margin-right:20px;" href="#" class="easyui-linkbutton"
           data-options="iconCls:'icon-cancel'">取消操作</a>
    </div>
</div>