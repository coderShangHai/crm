/**
 * system  mt4  index.js
 */
$(function(){
	var main_div = $("#crm_buiness_account_main_div");
	main_div.on("click","a[name='close']",function(){
		$.EasyUI.Window.close(main_div);
	});
});