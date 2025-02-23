<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache"/>
<meta HTTP-EQUIV="Expires" CONTENT="-1"/>
<link rel="shortcut icon" href="images/favicon.png"/>
<link rel="icon" href="images/favicon.png"/>
<title>软件中心 - koolproxyR</title>
<link rel="stylesheet" type="text/css" href="index_style.css"/>
<link rel="stylesheet" type="text/css" href="form_style.css"/>
<link rel="stylesheet" type="text/css" href="usp_style.css"/>
<link rel="stylesheet" type="text/css" href="css/element.css">
<link rel="stylesheet" type="text/css" href="/device-map/device-map.css">
<link rel="stylesheet" type="text/css" href="/res/softcenter.css">
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/state.js"></script>
<script type="text/javascript" src="/popup.js"></script>
<script type="text/javascript" src="/validator.js"></script>
<script type="text/javascript" src="/general.js"></script>
<script type="text/javascript" src="/switcherplugin/jquery.iphone-switch.js"></script>
<script type="text/javascript" src="/client_function.js"></script>
<script type="text/javascript" src="/help.js"></script>
<script type="text/javascript" src="/res/softcenter.js"></script>
<style>
.kp_btn {
	border: 1px solid #222;
	background: linear-gradient(to bottom, #003333  0%, #000000 100%); /* W3C */
	font-size:10pt;
	color: #fff;
	padding: 5px 5px;
	border-radius: 5px 5px 5px 5px;
	width:14%;
}
.kp_btn:hover {
	border: 1px solid #222;
	background: linear-gradient(to bottom, #27c9c9  0%, #279fd9 100%); /* W3C */
	font-size:10pt;
	color: #fff;
	padding: 5px 5px;
	border-radius: 5px 5px 5px 5px;
	width:14%;
}
#log_content3, #loading_block2, #log_content1 {line-height:1.5}
#log_content3, #log_content1 { -ms-overflow-style: none; overflow: auto; } /* for IE hide scrollbar on ss node ta */
#log_content3::-webkit-scrollbar, #log_content1::-webkit-scrollbar {
    width: 0px;  /* remove scrollbar space */
    background: transparent;  /* optional: just make scrollbar invisible */
}
#log_content3:focus, #log_content1:focus {
	outline: none;
}
#log_content3, #log_content1 {overflow: -moz-scrollbars-none;}
.contentM_qis {
	position: absolute;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius:10px;
	z-index: 10;
	background-color:#2B373B;
	margin-left: -215px;
	top: 240px;
	width:980px;
	return height:auto;
	box-shadow: 3px 3px 10px #000;
	background: rgba(0,0,0,0.85);
	display:none;
}
.user_title{
	text-align:center;
	font-size:18px;
	color:#99FF00;
	padding:10px;
	font-weight:bold;
}
.input_option{
	height:25px;
	background-color:#475a5f;
	border: 0px solid #222;
	color:#FFFFFF;
	font-family: Lucida Console;
	font-size:12px;
}
.FormTable1{
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
	border: 1px solid #000000;
	border-collapse: collapse;
}
.FormTable1 th{
	font-family:Arial, Helvetica, sans-serif;
	background-color:#1F2D35;
	color:#FFFFFF;	/*Viz add*/
	/*font-weight:normal;*/
	line-height:15px;
	height: 22px;
	text-align:left;
	font-size:12px;
	width:35%;	/*Viz add*/
	padding-left: 10px;
	border-collapse: collapse;
	background:#2F3A3E;
	border: 1px solid #000000;
}
.FormTable1 thead td{
	color: #FFF;
	font-size:12px;
	background-color:#4D595D;
	text-align:left;
	font-weight:bolder;
	border: 1px solid #222;
	padding: 3px;
	padding-left: 10px;
	border-collapse: collapse;
 	background: #92A0A5; /* Old browsers */
	background: -moz-linear-gradient(top, #92A0A5  0%, #66757C 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#92A0A5 ), color-stop(100%,#66757C)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #92A0A5  0%, #66757C 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top,  #92A0A5 0%, #66757C 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top,  #92A0A5  0%, #66757C 100%); /* IE10+ */
	background: linear-gradient(to bottom, #92A0A5  0%, #66757C 100%); /* W3C */
}
.FormTable1 td{
	/*padding-left: 10px;*/
	background-color:#475A5F;
	border: 1px solid #000000;
	border-collapse: collapse;
	word-break: break-word;
}
.input_ss_table {
	font-size: 12px;
	font-family: Arial, Helvetica, sans-serif;
}
input[type=button]:focus {
	outline: none;
}
textarea{
	width:97%;
	padding-left:10px;
	padding-right:10px;
	font-family:'Courier New', Courier, mono; 
	font-size:11px;
	color:#FFFFFF;
	outline: none;
	background:#475A5F;
	border:1px solid #222;
}
</style>
<script>
var dbus = {};
var _responseLen;
var noChange = 0;
var reload = 0;
var acl_node_max = 0;
var rule_node_max = 0;
var x = 6;
var edit_falg;
function init() {
	show_menu(menu_hook);
	get_dbus_data();
}
function get_dbus_data(){
	$.ajax({
	  	type: "GET",
	 	url: "/dbconf?p=koolproxyR_",
	  	dataType: "script",
	 	success: function(data){
	 	 	dbus = db_koolproxyR_;
			conf2obj();
			refresh_acl_table();
			refresh_rule_table();
			update_visibility();
			get_user_rule();
			hook_event();
			get_kp_status();
			showDropdownClientList('setClientIP', 'ip', 'all', 'ClientList_Block', 'pull_arrow', 'online');
		}
	});
}
function hook_event(){
	$("#log_content2").click(
		function() {
		x = -10;
	});
	$("#download_cert").click(
	function() {
		location.href = "http://110.110.110.110";
	});
	$("#koolproxy_github").click(
		function() {
		window.open("https://github.com/koolproxy/koolproxy_rules");
	});
	$("#koolproxyR_enable").click(
		function(){
		if(E('koolproxyR_enable').checked){
			dbus["koolproxyR_enable"] = "1";
			dbus["koolproxyR_basic_action"] = "1";
			E("policy_tr").style.display = "";
			E("kp_status").style.display = "";
			E("auto_reboot_switch").style.display = "";
			E("rule_table_div").style.display = "";
			E("cert_download_tr").style.display = "";
			E("klloproxy_com").style.display = "";
			E("acl_method_tr").style.display = "";
			E("ACL_table_div").style.display = "";
			E("ACL_note").style.display = "";
			E("rul_table_div").style.display = "";
		}else{
			dbus["koolproxyR_enable"] = "0";
			dbus["koolproxyR_basic_action"] = "0";
			E("policy_tr").style.display = "none";
			E("kp_status").style.display = "none";
			E("auto_reboot_switch").style.display = "none";
			E("rule_table_div").style.display = "none";
			E("cert_download_tr").style.display = "none";
			E("klloproxy_com").style.display = "none";
			E("acl_method_tr").style.display = "none";
			E("ACL_table_div").style.display = "none";
			E("ACL_note").style.display = "none";
			E("rul_table_div").style.display = "none";
		}
	});
}
function generate_options(){
	for(var i = 0; i < 24; i++) {
		$("#koolproxyR_reboot_hour").append("<option value='"  + i + "'>" + i + "点</option>");
		$("#koolproxyR_reboot_hour").val(3);
		$("#koolproxyR_reboot_inter_hour").append("<option value='"  + i + "'>" + i + "时</option>");
		$("#koolproxyR_reboot_inter_hour").val(6);
	}
	for(var i = 0; i < 60; i++) {
		$("#koolproxyR_reboot_min").append("<option value='"  + i + "'>" + i + "分</option>");
		$("#koolproxyR_reboot_inter_min").append("<option value='"  + i + "'>" + i + "分</option>");
		$("#koolproxyR_reboot_min").val(30);
		$("#koolproxyR_reboot_inter_min").val(0);
	}
}

function get_kp_status(){
	var maxid = parseInt($("#rule_table > tbody > tr:eq(-2) > td:nth-child(1) > input").attr("id").split("_")[3]);
	//var id = parseInt(Math.random() * 100000000);
	//var postData = {"id": id, "method": "koolproxyR_status.sh", "params":[2], "fields": ""};
	$.ajax({
		url: '/logreaddb.cgi?p=koolproxyR.log&script=koolproxyR_status.sh',
		dataType: 'html',
		success: function(response){
			kp_status = response.replace("XU6J03M6", " ");
			E("koolproxyR_status").innerHTML = kp_status.split("@@")[0];
			$("#kp_rule_1").html(kp_status.split("@@")[1])
			$("#kp_rule_2").html(kp_status.split("@@")[2])
			$("#kp_rule_3").html(kp_status.split("@@")[3])
			$("#kp_rule_4").html(kp_status.split("@@")[4])
			$("#kp_rule_5").html(kp_status.split("@@")[5])
			$("#kp_rule_6").html(kp_status.split("@@")[6])
			for ( var i = 7; i < kp_status.split("@@").length; i++) {
				var va = kp_status.split("@@")[i].split("&&")[0];
				var nu = kp_status.split("@@")[i].split("&&")[1];
				if (E("koolproxyR_rule_nu_" + parseInt(nu))){
					$("#koolproxyR_rule_nu_" + parseInt(nu)).html(va);
				}
			}
			setTimeout("get_kp_status();", 10000);
		},
		error: function(){
			E("koolproxyR_status").innerHTML = "获取运行状态失败！";
			$("#kp_rule_1").html("获取规则状态失败")
			$("#kp_rule_2").html("获取规则状态失败")
			$("#kp_rule_3").html("获取规则状态失败")
			$("#kp_rule_4").html("获取规则状态失败")
			$("#kp_rule_5").html("获取规则状态失败")
			$("#kp_rule_6").html("获取规则状态失败")
			setTimeout("get_kp_status();", 5000);
		}
	});
}
function get_user_rule() {
	$.ajax({
		url: '/res/koolproxyR_user.htm',
		dataType: 'html',
		success: function(res) {
			$('#usertxt').val(res);
		}
	});
}
function menu_hook(title, tab) {
	tabtitle[tabtitle.length -1] = new Array("", "软件中心", "离线安装", "koolproxyR");
	tablink[tablink.length -1] = new Array("", "Main_Soft_center.asp", "Main_Soft_setting.asp", "Module_koolproxyR.asp");
}
function conf2obj(){
	var params = ["koolproxyR_mode", "koolproxyR_reboot", "koolproxyR_reboot_hour", "koolproxyR_reboot_min", "koolproxyR_reboot_inter_hour", "koolproxyR_reboot_inter_min", "koolproxyR_acl_method"];
	var params_chk = ["koolproxyR_enable", "koolproxyR_rule_enable_d1", "koolproxyR_rule_enable_d2", "koolproxyR_rule_enable_d3", "koolproxyR_rule_enable_d4", "koolproxyR_rule_enable_d5", "koolproxyR_rule_enable_d6"];
	for (var i = 0; i < params.length; i++) {
		if(dbus[params_chk[i]]){
			E(params_chk[i]).checked = dbus[params_chk[i]] == "1";
		}
	}
	for (var i = 0; i < params.length; i++) {
		if(dbus[params[i]]){
			E(params[i]).value = dbus[params[i]];
		}
	}
}
function update_visibility(r){
	if(dbus["koolproxyR_enable"] == "1"){
		E("policy_tr").style.display = "";
		E("kp_status").style.display = "";
		E("auto_reboot_switch").style.display = "";
		E("rule_table_div").style.display = "";
		E("cert_download_tr").style.display = "";
		E("klloproxy_com").style.display = "";
		E("acl_method_tr").style.display = "";
		E("ACL_table_div").style.display = "";
		E("ACL_note").style.display = "";
		E("rul_table_div").style.display = "";
	}else{
		E("policy_tr").style.display = "none";
		E("kp_status").style.display = "none";
		E("auto_reboot_switch").style.display = "none";
		E("rule_table_div").style.display = "none";
		E("cert_download_tr").style.display = "none";
		E("klloproxy_com").style.display = "none";
		E("acl_method_tr").style.display = "none";
		E("ACL_table_div").style.display = "none";
		E("ACL_note").style.display = "none";
		E("rul_table_div").style.display = "none";
	}
	showhide("koolproxyR_reboot_hour_span", (E("koolproxyR_reboot").value == 1));
	showhide("koolproxyR_reboot_interval_span", (E("koolproxyR_reboot").value == 2));
	var maxrule = parseInt($("#rule_table > tbody > tr:eq(-2) > td:nth-child(1) > input").attr("id").split("_")[3]);
	if($(r).attr("id") == "koolproxyR_mode"){
		if(E("koolproxyR_mode").value == 3){
			E("koolproxyR_rule_enable_d1").checked = false;
			E("koolproxyR_rule_enable_d2").checked = false;
			E("koolproxyR_rule_enable_d3").checked = true;
			E("koolproxyR_rule_enable_d4").checked = false;
			E("koolproxyR_rule_enable_d5").checked = false;
			E("koolproxyR_rule_enable_d6").checked = false;
			for ( var i = 1; i <= maxrule; ++i ) {
				if (E("koolproxyR_rule_enable_" + i)){
					E("koolproxyR_rule_enable_" + i).checked = false;
				}
			}
		}else{
			E("koolproxyR_rule_enable_d1").checked = true;
			E("koolproxyR_rule_enable_d2").checked = true;
			E("koolproxyR_rule_enable_d3").checked = true;
			E("koolproxyR_rule_enable_d4").checked = true;
			E("koolproxyR_rule_enable_d5").checked = true;
			E("koolproxyR_rule_enable_d6").checked = true;
			for ( var i = 1; i <= maxrule; ++i ) {
				if (E("koolproxyR_rule_enable_" + i)){
					E("koolproxyR_rule_enable_" + i).checked = true;
				}
			}
		}
	}
}
function start_update() {
	
	dbus["action_script"] = "kp_update.sh";
	dbus["action_mode"] = " Refresh ";
	dbus["current_page"] = "Module_koolproxyR.asp";


	if(dbus["koolproxyR_enable"] == "1"){
		dbus["koolproxyR_basic_action"] = "5";
	}else{
		dbus["koolproxyR_basic_action"] = "0";
	}

	$.ajax({
		type: "POST",
		url: '/applydb.cgi?p=koolproxyR',
		contentType: "application/x-www-form-urlencoded",
		dataType: 'text',
		data: $.param(dbus),
		success: function(response) {
			showKPLoadingBar();
			noChange = 0;
			setTimeout("get_log();", 200);
		}
	});
}
function get_log(){
	$.ajax({
		url: '/res/koolproxyR_run.htm',
		dataType: 'html',
		success: function(response) {
			var retArea = E("log_content3");
			if (response.search("XU6J03M6") != -1) {
				retArea.value = response.replace("XU6J03M6", " ");
				E("ok_button").style.display = "";
				retArea.scrollTop = retArea.scrollHeight;
				if (reload == 1){
					x = 6;
					count_down_close();
					return true;
				}else{
					E("ok_button").style.display = "";
					return true;
				}
			}
			if (_responseLen == response.length) {
				noChange++;
			} else {
				noChange = 0;
			}
			if (noChange > 1000) {
				return false;
			} else {
				setTimeout("get_log();", 50);
			}
			retArea.value = response.replace("XU6J03M6", " ");
			retArea.scrollTop = retArea.scrollHeight;
			_responseLen = response.length;
		}
	});
}
function showKPLoadingBar(seconds){
	if(window.scrollTo)
		window.scrollTo(0,0);
	disableCheckChangedStatus();
	
	htmlbodyforIE = document.getElementsByTagName("html");  //this both for IE&FF, use "html" but not "body" because <!DOCTYPE html PUBLIC.......>
	htmlbodyforIE[0].style.overflow = "hidden";	  //hidden the Y-scrollbar for preventing from user scroll it.
	
	winW_H();
	var blockmarginTop;
	var blockmarginLeft;
	if (window.innerWidth)
		winWidth = window.innerWidth;
	else if ((document.body) && (document.body.clientWidth))
		winWidth = document.body.clientWidth;
	
	if (window.innerHeight)
		winHeight = window.innerHeight;
	else if ((document.body) && (document.body.clientHeight))
		winHeight = document.body.clientHeight;
	if (document.documentElement  && document.documentElement.clientHeight && document.documentElement.clientWidth){
		winHeight = document.documentElement.clientHeight;
		winWidth = document.documentElement.clientWidth;
	}
	if(winWidth >1050){
	
		winPadding = (winWidth-1050)/2;	
		winWidth = 1105;
		blockmarginLeft= (winWidth*0.3)+winPadding-150;
	}
	else if(winWidth <=1050){
		blockmarginLeft= (winWidth)*0.3+document.body.scrollLeft-160;
	}
	
	if(winHeight >660)
		winHeight = 660;
	
	blockmarginTop= winHeight*0.3-140		
	E("loadingBarBlock").style.marginTop = blockmarginTop+"px";
	E("loadingBarBlock").style.marginLeft = blockmarginLeft+"px";
	E("loadingBarBlock").style.width = 770+"px";
	E("LoadingBar").style.width = winW+"px";
	E("LoadingBar").style.height = winH+"px";
	loadingSeconds = seconds;
	progress = 100/loadingSeconds;
	y = 0;
	LoadingKPProgress(seconds);
}
function LoadingKPProgress(seconds){
	E("LoadingBar").style.visibility = "visible";
	if (E("koolproxyR_enable").checked == false){
		E("loading_block3").innerHTML = "koolproxyR关闭中 ..."
		$("#loading_block2").html("<li><font color='#ffcc00'><a href='http://www.koolshare.cn' target='_blank'></font>koolproxyR工作有问题？请来我们的<font color='#ffcc00'>论坛www.koolshare.cn</font>反应问题...</font></li>");
	} else {
		$("#loading_block2").html("<font color='#ffcc00'>----------------------------------------------------------------------------------------------------------------------------------");
		if (dbus["koolproxyR_basic_action"] == 1){
			E("loading_block3").innerHTML = "开启koolproxyR ..."
		}else if (dbus["koolproxyR_basic_action"] == 2){
			E("loading_block3").innerHTML = "更新koolproxyR规则列表 ..."
		}else if (dbus["koolproxyR_basic_action"] == 3){
			E("loading_block3").innerHTML = "上传证书 ..."
		}else if (dbus["koolproxyR_basic_action"] == 4){
			E("loading_block3").innerHTML = "保存user.txt ..."
		}else if (dbus["koolproxyR_basic_action"] == 5){
			E("loading_block3").innerHTML = "手动更新规则中 ..."
		}
	}
}
function hideKPLoadingBar(){
	x = -1;
	E("LoadingBar").style.visibility = "hidden";
	refreshpage();
}
function count_down_close() {
	if (x == "0") {
		hideKPLoadingBar();
	}
	if (x < 0) {
		E("ok_button1").value = "手动关闭"
		return false;
	}
	E("ok_button1").value = "自动关闭（" + x + "）"
		--x;
	setTimeout("count_down_close();", 1000);
}
function getACLConfigs() {
	var dict = {};
	for (var field in dbus) {
		names = field.split("_");
		dict[names[names.length - 1]] = 'ok';
	}
	acl_confs = {};
	var p = "koolproxyR_acl";
	var params = ["ip", "name", "mode"];
	for (var field in dict) {
		var obj = {};
		if (typeof dbus[p + "_mac_" + field] == "undefined") {
			obj["mac"] = '';
		} else {
			obj["mac"] = dbus[p + "_mac_" + field];
		}
		for (var i = 0; i < params.length; i++) {
			var ofield = p + "_" + params[i] + "_" + field;
			if (typeof dbus[ofield] == "undefined") {
				obj = null;
				break;
			}
			obj[params[i]] = dbus[ofield];
		}
		if (obj != null) {
			var node_a = parseInt(field);
			if (node_a > acl_node_max) {
				acl_node_max = node_a;
			}
			obj["acl_node"] = field;
			acl_confs[field] = obj;
		}
	}
	return acl_confs;
}
function addTr() {
	var acls = {};
	var p = "koolproxyR_acl";
	acl_node_max += 1;
	var params = ["ip", "name", "mac", "mode"];
	for (var i = 0; i < params.length; i++) {
		acls[p + "_" + params[i] + "_" + acl_node_max] = $('#' + p + "_" + params[i]).val();
	}
	//var id = parseInt(Math.random() * 100000000);
	//var postData = {"id": id, "method": "dummy_script.sh", "params":[2], "fields": acls};
	acls["action_script"] = "koolproxyR_config.sh";
	acls["action_mode"] = "clean";
	acls["current_page"] = "Module_koolproxyR.asp";
	$.ajax({
		type: "POST",
		contentType: "application/x-www-form-urlencoded",
		url: "/applydb.cgi?p=koolproxyR_acl",
		data: $.param(acls),
		dataType: "text",
		success: function(response) {
			//if (response.result == id){
				refresh_acl_table();
				E("koolproxyR_acl_name").value = "";
				E("koolproxyR_acl_ip").value = "";
				E("koolproxyR_acl_mac").value = "";
				E("koolproxyR_acl_mode").value = "1";
			//}
		}
	});
	aclid = 0;
}
function delTr(o) {
	var id = $(o).attr("id");
	var ids = id.split("_");
	var p = "koolproxyR_acl";
	id = ids[ids.length - 1];
	var acls = {};
	var params = ["ip", "name", "mac", "mode"];
	for (var i = 0; i < params.length; i++) {
		acls[p + "_" + params[i] + "_" + id] = "";
	}
	//var id = parseInt(Math.random() * 100000000);
	//var postData = {"id": id, "method": "dummy_script.sh", "params":[2], "fields": acls};
	acls["action_script"] = "koolproxyR_config.sh";
	acls["action_mode"] = "clean";
	acls["current_page"] = "Module_koolproxyR.asp";
	$.ajax({
		url: '/applydb.cgi?use_rm=1&p=koolproxyR_acl',
		contentType: "application/x-www-form-urlencoded",
		dataType: 'text',
		data: $.param(acls),
		success: function(response) {
			refresh_acl_table();
		}
	});
}
function refresh_acl_table() {
	$.ajax({
		type: "GET",
		url: '/dbconf?p=koolproxyR_',
		dataType: 'html',
		success: function(response){
			dbus=db_koolproxyR_;
			$("#ACL_table").find("tr:gt(2)").remove();
			$('#ACL_table tr:last').after(refresh_acl_html());
			for (var i = 1; i < acl_node_max + 1; i++) {
				$('#koolproxyR_acl_mode_' + i).val(dbus["koolproxyR_acl_mode_" + i]);
				$('#koolproxyR_acl_name_' + i).val(dbus["koolproxyR_acl_name_" + i]);
			}
			if (typeof dbus["koolproxyR_acl_default"] !== "undefined"){
				$('#koolproxyR_acl_default').val(dbus["koolproxyR_acl_default"]);
			}else{
				$('#koolproxyR_acl_default').val("1");
			}
	  	}
	});
}
function refresh_acl_html() {
	acl_confs = getACLConfigs();
	var n = 0;
	for (var i in acl_confs) {
		n++;
	}
	var code = '';
	for (var field in acl_confs) {
		var ac = acl_confs[field];
		code = code + '<tr>';
		code = code + '<td>';
		code = code + '<input type="text" placeholder="" id="koolproxyR_acl_ip_' + ac["acl_node"] + '" name="koolproxyR_acl_ip_' + ac["acl_node"] + '" class="input_ss_table" maxlength="50" style="width:140px;" value="' + ac["ip"] + '" />';
		code = code + '</td>';
		code = code + '<td>';
		code = code + '<input type="text" placeholder="" id="koolproxyR_acl_mac_' + ac["acl_node"] + '" name="koolproxyR_acl_mac_' + ac["acl_node"] + '" class="input_ss_table" maxlength="50" style="width:140px;" value="' + ac["mac"] + '" />';
		code = code + '</td>';
		code = code + '<td>';
		code = code + '<input type="text" placeholder="" id="koolproxyR_acl_name_' + ac["acl_node"] + '" name="koolproxyR_acl_name_' + ac["acl_node"] + '" class="input_ss_table" maxlength="50" style="width:140px;" placeholder="" />';
		code = code + '</td>';
		code = code + '<td>';
		code = code + '<select id="koolproxyR_acl_mode_' + ac["acl_node"] + '" name="koolproxyR_acl_mode_' + ac["acl_node"] + '" style="width:140px;margin:-1px 0px 0px 2px;" class="input_option">';
		code = code + '<option value="1">http only</option>';
		code = code + '<option value="2">http + https</option>';
		code = code + '<option value="0">不过滤</option>';
		code = code + '</select>'
		code = code + '</td>';
		code = code + '<td>';
		code = code + '<input style="margin: -3px 0px -5px 6px;" id="acl_node_' + ac["acl_node"] + '" class="remove_btn" type="button" onclick="delTr(this);" value="">'
		code = code + '</td>';
		code = code + '</tr>';
	}
	code = code + '<tr>';
	if (n == 0) {
		code = code + '<td style="text-align: center;">所有主机</td>';
	} else {
		code = code + '<td style="text-align: center;">其它主机</td>';
	}
	code = code + '<td style="text-align: center;">缺省规则</td>';
	code = code + '<td style="text-align: center;">缺省规则</td>';
	code = code + '<td>';
	code = code + '<select id="koolproxyR_acl_default" name="koolproxyR_acl_default" style="width:140px;margin:-1px 0px 0px 2px;" class="input_option";">';
	code = code + '<option value="1" selected>http only</option>';
	code = code + '<option value="2">http + https</option>';
	code = code + '<option value="0">不过滤</option>';
	code = code + '</select>';
	code = code + '</td>';
	code = code + '<td>';
	code = code + '</td>';
	code = code + '</tr>';
	return code;
}
function getruleConfigs() {
	var dict = {};
	for (var field in dbus) {
		names = field.split("_");
		dict[names[names.length - 1]] = 'ok';
	}
	rule_confs = {};
	var p = "koolproxyR_rule";
	var params = ["enable", "file", "addr", "note"];
	for (var field in dict) {
		var obj = {};
		for (var i = 0; i < params.length; i++) {
			var ofield = p + "_" + params[i] + "_" + field;
			if (typeof dbus[ofield] == "undefined") {
				obj = null;
				break;
			}
			obj[params[i]] = dbus[ofield];
		}
		if (obj != null) {
			var node_a = parseInt(field);
			if (node_a > rule_node_max) {
				rule_node_max = node_a;
			}
			obj["rule_node"] = field;
			rule_confs[field] = obj;
		}
	}
	return rule_confs;
}
function add_rule_Tr() {
	var rules = {};
	var p = "koolproxyR_rule";
	rule_node_max += 1;
	if (edit_falg){
			console.log("333", edit_falg)
		var add_nu = edit_falg
	}else{
		var add_nu = rule_node_max
	}
	var params = ["file", "addr", "note"];
	for (var i = 0; i < params.length; i++) {
		rules[p + "_" + params[i] + "_" + add_nu] = $('#' + p + "_" + params[i]).val();
	}
	rules["koolproxyR_rule_enable_" + add_nu] = E("koolproxyR_rule_enable").checked ? "1" : "0";
	//var id = parseInt(Math.random() * 100000000);
	//var postData = {"id": id, "method": "dummy_script.sh", "params":[2], "fields": rules};
	rules["action_script"] = "koolproxyR_config.sh";
	rules["action_mode"] = "clean";
	rules["current_page"] = "Module_koolproxyR.asp";
	$.ajax({
		url: '/applydb.cgi?p=koolproxyR_rule',
		contentType: "application/x-www-form-urlencoded",
		dataType: 'text',
		data: $.param(rules),
		success: function(response) {
			//if (response.result == id){
				refresh_rule_table();
				E("koolproxyR_rule_enable").checked = false;
				E("koolproxyR_rule_file").value = "";
				E("koolproxyR_rule_addr").value = "";
				E("koolproxyR_rule_note").value = "";
			//}
		}
	});
	edit_falg=""
}
function del_rule_Tr(o) {
	var id = $(o).attr("id");
	var ids = id.split("_");
	var p = "koolproxyR_rule";
	id = ids[ids.length - 1];
	var rules = {};
	var params = ["enable", "file", "addr", "note"];
	for (var i = 0; i < params.length; i++) {
		rules[p + "_" + params[i] + "_" + id] = "";
	}
	//var id = parseInt(Math.random() * 100000000);
	//var postData = {"id": id, "method": "dummy_script.sh", "params":[2], "fields": rules};
	rules["action_script"] = "koolproxyR_config.sh";
	rules["action_mode"] = "clean";
	rules["current_page"] = "Module_koolproxyR.asp";
	$.ajax({
		url: '/applydb.cgi?use_rm=1&p=koolproxyR_rule',
		contentType: "application/x-www-form-urlencoded",
		dataType: 'text',
		data: $.param(rules),
		success: function(response) {
			refresh_rule_table();
		}
	});
}
function edit_rule_Tr(o) {
	var id = $(o).attr("id");
	var ids = id.split("_");
	var p = "koolproxyR_rule";
	id = ids[ids.length - 1];
	console.log(id)
	var params = ["file", "addr", "note"];
	for (var i = 0; i < params.length; i++) {
		E(p +"_" + params[i]).value = dbus[p +"_" + params[i] + "_" + id];
	}
	E("koolproxyR_rule_enable").checked = dbus["koolproxyR_rule_enable_" + id ] == 1
	edit_falg=id
}
function refresh_rule_table() {
	$.ajax({
		type: "GET",
		url: '/dbconf?p=koolproxyR_',
		dataType: 'html',
		success: function(response){
			dbus=db_koolproxyR_;
			$("#rule_table").find("tr:gt(5):lt(-1)").remove();
			$('#rule_table tr:eq(5)').after(refresh_rule_html());
			for (var i = 1; i < rule_node_max + 1; i++) {
				if (dbus["koolproxyR_rule_enable_" + i]){
					E("koolproxyR_rule_enable_" + i).checked = (dbus["koolproxyR_rule_enable_" + i] == 1);
				}
			}
	  	}
	});
}
function refresh_rule_html() {
	rule_confs = getruleConfigs();
	var n = 0;
	for (var i in rule_confs) {
		n++;
	}
	var code = '';
	for (var field in rule_confs) {
		var ac = rule_confs[field];
		code = code + '<tr calss="added">';
		code = code + '<td style="text-align:center;">';
		code = code + '<input type="checkbox" id="koolproxyR_rule_enable_' + ac["rule_node"] + '" name="koolproxyR_rule_enable_' + ac["rule_node"] + '" />';
		code = code + '</td>';
		code = code + '<td id="koolproxyR_rule_file_' + ac["rule_node"] + '">';
		code = code + ac["file"];
		code = code + '</td>';
		code = code + '<td id="koolproxyR_rule_addr_' + ac["rule_node"] + '">';
		code = code + ac["addr"];
		code = code + '</td>';
		code = code + '<td id="koolproxyR_rule_note_' + ac["rule_node"] + '" style="text-align:center;">';
		code = code + ac["note"];
		code = code + '</td>';
		code = code + '<td id="koolproxyR_rule_nu_' + ac["rule_node"] + '">';
		code = code + '</td>';
		code = code + '<td>';
		code = code + '<input id="koolproxyR_rule_edit_' + ac["rule_node"] + '" style="margin-left: 6px;margin: -3px 0px -5px 6px;" type="button" class="edit_btn" onclick="edit_rule_Tr(this)"/>'
		code = code + '</td>';
		code = code + '<td>';
		code = code + '<input id="koolproxyR_rule_del_' + ac["rule_node"] + '" style="margin-left: 6px;margin: -3px 0px -5px 6px;" type="button" class="remove_btn" onclick="del_rule_Tr(this)"/>'
		code = code + '</td>';
		code = code + '</tr>';
	}
	return code;
}
function setClientIP(ip, name, mac) {
	E("koolproxyR_acl_ip").value = ip;
	E("koolproxyR_acl_name").value = name;
	E("koolproxyR_acl_mac").value = mac;
	hideClients_Block();
}
function pullLANIPList(obj){
	var element = E('ClientList_Block');
	var isMenuopen = element.offsetWidth > 0 || element.offsetHeight > 0;
	if(isMenuopen == 0){
		obj.src = "/images/arrow-top.gif"
		element.style.display = 'block';
	}
	else
		hideClients_Block();
}
function hideClients_Block(){
	E("pull_arrow").src = "/images/arrow-down.gif";
	E('ClientList_Block').style.display='none';
	validator.validIPForm(E("koolproxyR_acl_ip"), 0);
}
function showDropdownClientList(_callBackFun, _callBackFunParam, _interfaceMode, _containerID, _pullArrowID, _clientState) {
	document.body.addEventListener("click", function(_evt) {control_dropdown_client_block(_containerID, _pullArrowID, _evt);})
	if(clientList.length == 0){
		setTimeout(function() {
			genClientList();
			showDropdownClientList(_callBackFun, _callBackFunParam, _interfaceMode, _containerID, _pullArrowID);
		}, 500);
		return false;
	}
	var htmlCode = "";
	htmlCode += "<div id='" + _containerID + "_clientlist_online'></div>";
	htmlCode += "<div id='" + _containerID + "_clientlist_dropdown_expand' class='clientlist_dropdown_expand' onclick='expand_hide_Client(\"" + _containerID + "_clientlist_dropdown_expand\", \"" + _containerID + "_clientlist_offline\");' onmouseover='over_var=1;' onmouseout='over_var=0;'>Show Offline Client List</div>";
	htmlCode += "<div id='" + _containerID + "_clientlist_offline'></div>";
	E(_containerID).innerHTML = htmlCode;
	var param = _callBackFunParam.split(">");
	var clientMAC = "";
	var clientIP = "";
	var getClientValue = function(_attribute, _clienyObj) {
		var attribute_value = "";
		switch(_attribute) {
			case "mac" :
				attribute_value = _clienyObj.mac;
				break;
			case "ip" :
				if(clientObj.ip != "offline") {
					attribute_value = _clienyObj.ip;
				}
				break;
			case "name" :
				attribute_value = (clientObj.nickName == "") ? clientObj.name.replace(/'/g, "\\'") : clientObj.nickName.replace(/'/g, "\\'");
				break;
			default :
				attribute_value = _attribute;
				break;
		}
		return attribute_value;
	};
	var genClientItem = function(_state) {
		var code = "";
		var clientName = (clientObj.nickName == "") ? clientObj.name : clientObj.nickName;
		
		code += '<a id=' + clientList[i] + ' title=' + clientList[i] + '>';
		if(_state == "online")
			code += '<div onclick="' + _callBackFun + '(\'';
		else if(_state == "offline")
			code += '<div style="color:#A0A0A0" onclick="' + _callBackFun + '(\'';
		for(var j = 0; j < param.length; j += 1) {
			if(j == 0) {
				code += getClientValue(param[j], clientObj);
			}
			else {
				code += '\', \'';
				code += getClientValue(param[j], clientObj);
			}
		}
		code += '\''
		code += ', '
		code += '\''
		code += clientName;
		code += '\''
		code += ', '
		code += '\''
		code += clientList[i];
		code += '\');">';
		for(var j = 0; j < param.length; j += 1) {
			if(j == 0) {
				code += "【" + getClientValue(param[j], clientObj) + "】 ";
			}
			else {
				code += '\', \'';
				code += "【" + getClientValue(param[j], clientObj) + "】 ";
			}
		}
		
		if(clientName.length > 32) {
			code += clientName.substring(0, 30) + "..";
		}
		else {
			code += clientName;
		}
		if(_state == "offline")
			code += '<strong title="Remove this client" style="float:right;margin-right:5px;cursor:pointer;" onclick="removeClient(\'' + clientObj.mac + '\', \'' + _containerID + '_clientlist_dropdown_expand\', \'' + _containerID + '_clientlist_offline\')">×</strong>';
		code += '</div><!--[if lte IE 6.5]><iframe class="hackiframe2"></iframe><![endif]--></a>';
		return code;
	};
	for(var i = 0; i < clientList.length; i +=1 ) {
		var clientObj = clientList[clientList[i]];
		switch(_clientState) {
			case "all" :
				if(_interfaceMode == "wl" && (clientList[clientList[i]].isWL == 0)) {
					continue;
				}
				if(_interfaceMode == "wired" && (clientList[clientList[i]].isWL != 0)) {
					continue;
				}
				if(clientObj.isOnline) {
					E("" + _containerID + "_clientlist_online").innerHTML += genClientItem("online");
				}
				else if(clientObj.from == "nmpClient") {
					E("" + _containerID + "_clientlist_offline").innerHTML += genClientItem("offline");
				}
				break;
			case "online" :
				if(_interfaceMode == "wl" && (clientList[clientList[i]].isWL == 0)) {
					continue;
				}
				if(_interfaceMode == "wired" && (clientList[clientList[i]].isWL != 0)) {
					continue;
				}
				if(clientObj.isOnline) {
					E("" + _containerID + "_clientlist_online").innerHTML += genClientItem("online");
				}
				break;
			case "offline" :
				if(_interfaceMode == "wl" && (clientList[clientList[i]].isWL == 0)) {
					continue;
				}
				if(_interfaceMode == "wired" && (clientList[clientList[i]].isWL != 0)) {
					continue;
				}
				if(clientObj.from == "nmpClient") {
					E("" + _containerID + "_clientlist_offline").innerHTML += genClientItem("offline");
				}
				break;
		}		
	}
	
	if(E("" + _containerID + "_clientlist_offline").childNodes.length == "0") {
		if(E("" + _containerID + "_clientlist_dropdown_expand") != null) {
			removeElement(E("" + _containerID + "_clientlist_dropdown_expand"));
		}
		if(E("" + _containerID + "_clientlist_offline") != null) {
			removeElement(E("" + _containerID + "_clientlist_offline"));
		}
	}
	else {
		if(E("" + _containerID + "_clientlist_dropdown_expand").innerText == "Show Offline Client List") {
			E("" + _containerID + "_clientlist_offline").style.display = "none";
		}
		else {
			E("" + _containerID + "_clientlist_offline").style.display = "";
		}
	}
	if(E("" + _containerID + "_clientlist_online").childNodes.length == "0") {
		if(E("" + _containerID + "_clientlist_online") != null) {
			removeElement(E("" + _containerID + "_clientlist_online"));
		}
	}
	if(E(_containerID).childNodes.length == "0")
		E(_pullArrowID).style.display = "none";
	else
		E(_pullArrowID).style.display = "";
}
function open_user_rule(){
	$("#vpnc_settings").fadeIn(200);
}
function close_user_rule(){
	$("#vpnc_settings").fadeOut(200);
}
function save(){
	showKPLoadingBar();
	// collect basic data
	var params = ["koolproxyR_mode", "koolproxyR_reboot", "koolproxyR_reboot_hour", "koolproxyR_reboot_min", "koolproxyR_reboot_inter_hour", "koolproxyR_reboot_inter_min", "koolproxyR_acl_method", "koolproxyR_acl_default"];
	var params_chk = ["koolproxyR_enable", "koolproxyR_rule_enable_d1", "koolproxyR_rule_enable_d2", "koolproxyR_rule_enable_d3", "koolproxyR_rule_enable_d4", "koolproxyR_rule_enable_d5", "koolproxyR_rule_enable_d6"];
	for (var i = 0; i < params.length; i++) {
		dbus[params[i]] = E(params[i]).value;
	}
	for (var i = 0; i < params_chk.length; i++) {
		dbus[params_chk[i]] = E(params_chk[i]).checked ? "1" : "0";
	}
	// collect value in user rule textarea
	dbus["koolproxyR_custom_rule"] = Base64.encode(E("usertxt").value);
	// collect data from acl pannel
	maxid = parseInt($("#ACL_table > tbody > tr:eq(-2) > td:nth-child(1) > input").attr("id").split("_")[3]);
	for ( var i = 1; i <= maxid; ++i ) {
		if (E("koolproxyR_acl_ip_" + i)){
			dbus["koolproxyR_acl_ip_" + i] = E("koolproxyR_acl_ip_" + i).value;
			dbus["koolproxyR_acl_mac_" + i] = E("koolproxyR_acl_mac_" + i).value;
			dbus["koolproxyR_acl_name_" + i] = E("koolproxyR_acl_name_" + i).value;
			dbus["koolproxyR_acl_mode_" + i] = E("koolproxyR_acl_mode_" + i).value;
		}
	}
	// collect data from rule pannel
	maxid = parseInt($("#rule_table > tbody > tr:eq(-2) > td:nth-child(1) > input").attr("id").split("_")[3]);
	for ( var i = 1; i <= maxid; ++i ) {
		if (E("koolproxyR_rule_enable_" + i)){
			dbus["koolproxyR_rule_enable_" + i] = E("koolproxyR_rule_enable_" + i).checked ? "1" : "0";
		}
	}
	//acllist += data2[ i ].join( '<' ) + '>';
	var sourceList="";
	if(E("koolproxyR_rule_enable_d1").checked == true){
		sourceList += "1|easylistchina.txt|KPR|主规则>"
	}else{
		sourceList += "0|easylistchina.txt|KPR|主规则>"
	}
	if(E("koolproxyR_rule_enable_d2").checked == true){
		sourceList += "1|yhosts.txt|KPR|补充规则>"
	}else{
		sourceList += "0|yhosts.txt|KPR|补充规则>"

	}
	if(E("koolproxyR_rule_enable_d3").checked == true){
		sourceList += "1|kp.dat|KPR|视频规则>"

	}else{
		sourceList += "0|kp.dat|KPR|视频规则>"
	}
	if(E("koolproxyR_rule_enable_d4").checked == true){
		sourceList += "1|user.txt|KPR|自定义规则>"
	}else{
		sourceList += "0|user.txt|KPR|自定义规则>"
	}
	if(E("koolproxyR_rule_enable_d5").checked == true){
		sourceList += "1|koolproxy.txt|KP|静态规则>"

	}else{
		sourceList += "0|koolproxy.txt|KP|静态规则>"
	}
	if(E("koolproxyR_rule_enable_d6").checked == true){
		sourceList += "1|fanboy-annoyance.txt|KPR|Fanboy普通规则>"

	}else{
		sourceList += "0|fanboy-annoyance.txt|KPR|Fanboy普通规则>"
	}
	maxid = parseInt($("#rule_table > tbody > tr:eq(-2) > td:nth-child(1) > input").attr("id").split("_")[3]);
	for ( var i = 1; i <= maxid; ++i ) {
		if (E("koolproxyR_rule_enable_" + i)){
			sourceList += E("koolproxyR_rule_enable_" + i).checked ? "1" : "0";
			sourceList += "|"
			sourceList += E("koolproxyR_rule_file_" + i).innerHTML
			sourceList += "|"
			sourceList += E("koolproxyR_rule_addr_" + i).innerHTML
			sourceList += "|"
			sourceList += E("koolproxyR_rule_note_" + i).innerHTML
			sourceList += ">"
		}
	}
	dbus["koolproxyR_sourcelist"] = sourceList;
	//console.log(sourceList)
	//post data
	//var id = parseInt(Math.random() * 100000000);
	//var postData3 = {"id": id, "method": "koolproxyR_config.sh", "params":[1], "fields": dbus};
	dbus["action_script"] = "koolproxyR_config.sh";
	dbus["action_mode"] = "restart";
	dbus["current_page"] = "Module_koolproxyR.asp";
	$.ajax({
		type: "POST",
		url: '/applydb.cgi?p=koolproxyR',
		contentType: "application/x-www-form-urlencoded",
		dataType: 'text',
		data: $.param(dbus),
		success: function(response){
			//if(response.result == id){
				reload=1;
				get_log();
			//}
		}
	});
}
function openkpHint(itemNum) {
	statusmenu = "";
	width = "350px";
	if (itemNum == 1) {
		width = "650px";
		_caption = "规则控制";
		statusmenu = "&nbsp;&nbsp;&nbsp;&nbsp;规则控制功能为大家提供了经过koolproxyR兼容认证的规则，其中包括：静态规则、KPR主规则、视频规则、自定规则，koolproxyR用户可以根据自己的需求选取相应的规则。"
		statusmenu += "&nbsp;&nbsp;&nbsp;&nbsp;</br></br><b>koolproxyR兼容认证规则介绍：</b>"
		//静态规则
		statusmenu += "</br><font color='#CC0066'><b>1:静态规则（koolproxyR.txt）：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;该规则包含了较多国内网站和部分知名国外网站的页面元素、js库等屏蔽规则，使用该规则可以屏蔽对应网站的一些推广内容";
		//KPR主规则
		statusmenu += "</br><font color='#CC0066'><b>2:KPR  主规则：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;此规则由EasylistChina和CJX sAnnoyance 与KPR自定义规则组成，是KPR的首选规则。"
		//Fanboy规则
		statusmenu += "</br><font color='#CC0066'><b>2:Fanboy规则：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;此规则由Fanboy发起，针对国外主流令人厌烦的广告过滤。"
		//视频规则
		statusmenu += "</br><font color='#CC0066'><b>3:视频规则（kp.dat）：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;视频规则为加密规则，多为过滤一些flash内嵌元素和一些不良网站，此规则可以屏蔽国内网站的视频广告，需HTTPS模式。";
		//补充规则
		statusmenu += "</br><font color='#CC0066'><b>2:补充规则：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;此规则由vokins/yhosts整理的hosts包含移动设备和TV规则(建议开启)。"
		//自定规则
		statusmenu += "</br><font color='#CC0066'><b>4:自定规则（user.txt）：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;用户可以为网站编写自己的规则并用koolproxyR引擎来进行过滤。";
		//自定规则
		statusmenu += "</br><font color='#CC0066'><b>5:第三方规则：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;你也能在此处添加第三方规则，不过第三方规则不能保证其和koolproxyR的兼容性，有时候甚至会其它规则出现相互冲突。</br>&nbsp;&nbsp;&nbsp;&nbsp;请确保第三方规则链接有对应的.md5链接，例如<u>https://somerule.com/myrule.txt</u>，应该有对应的<u>https://somerule.com/myrule.txt.md5</u> 链接，koolproxyR才能正确下载规则。";
		statusmenu += "</br>";
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;koolproxyR的工作原理是基于规则来过滤页面元素，如果某些网站的一些元素无法屏蔽，可能是规则没有覆盖到这些网站，大家可以通过自己编写规则来实现屏蔽，或者反馈给规则维护人员，维护人员采纳后会通过规则推送，来实现这些网站元素的屏蔽。";
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;规则的更新由koolproxyR主程序发起，用户只需要添加规则文件名，规则地址等信息即可获得相应规则。";
		
		return overlib(statusmenu, OFFSETX, -820, OFFSETY, -290, LEFT, STICKY, WIDTH, 'width', CAPTION, _caption, CLOSETITLE, '');
	} else if (itemNum == 27) {
		statusmenu = "</br><font color='#CC0066'><b>1:不勾选（自动生成json）：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;此方式只支持vmess作为传出协议，不支持sock，shadowsocks；提交后会根据你的配置自动生成v2ray的json配置。"
		statusmenu += "</br></br><font color='#CC0066'><b>1:勾选（自定义json）：</b></font>"
		statusmenu += "</br>&nbsp;&nbsp;&nbsp;&nbsp;此方式支持配置v2ray支持的所有传出协议，插件会取你的json的outbound部分，并自动配置透明代理和socks传进协议，以便在路由器上工作。"
		_caption = "使用json配置";
	}
	return overlib(statusmenu, OFFSETX, -160, LEFT, STICKY, WIDTH, 'width', CAPTION, _caption, CLOSETITLE, '');
	var tag_name = document.getElementsByTagName('a');
	for (var i = 0; i < tag_name.length; i++)
		tag_name[i].onmouseout = nd;
	if (helpcontent == [] || helpcontent == "" || hint_array_id > helpcontent.length)
		return overlib('<#defaultHint#>', HAUTO, VAUTO);
	else if (hint_array_id == 0 && hint_show_id > 21 && hint_show_id < 24)
		return overlib(helpcontent[hint_array_id][hint_show_id], FIXX, 270, FIXY, 30);
	else {
		if (hint_show_id > helpcontent[hint_array_id].length)
			return overlib('<#defaultHint#>', HAUTO, VAUTO);
		else
			return overlib(helpcontent[hint_array_id][hint_show_id], HAUTO, VAUTO);
	}
}
</script>
</head>
<body onload="init();">
	<div id="TopBanner"></div>
	<div id="Loading" class="popup_bg"></div>
	<div id="LoadingBar" class="popup_bar_bg">
		<table cellpadding="5" cellspacing="0" id="loadingBarBlock" class="loadingBarBlock" align="center">
			<tr>
				<td height="100">
					<div id="loading_block3" style="margin:10px auto;margin-left:10px;width:85%; font-size:12pt;"></div>
					<div id="loading_block2" style="margin:10px auto;width:95%;"></div>
					<div id="log_content2" style="margin-left:15px;margin-right:15px;margin-top:10px;overflow:hidden">
						<textarea cols="63" rows="21" wrap="on" readonly="readonly" id="log_content3" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" style="border:1px solid #000;width:99%; font-family:'Courier New', Courier, mono; font-size:11px;background:#000;color:#FFFFFF;"></textarea>
					</div>
					<div id="ok_button" class="apply_gen" style="background: #000;display: none;">
						<input id="ok_button1" class="button_gen" type="button" onclick="hideKPLoadingBar()" value="确定">
					</div>
				</td>
			</tr>
		</table>
	</div>
	<table class="content" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17">&nbsp;</td>
			<td valign="top" width="202">
				<div id="mainMenu"></div>
				<div id="subMenu"></div>
			</td>
			<td valign="top">
				<div id="tabMenu" class="submenuBlock"></div>
				<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left" valign="top">
							<table width="760px" border="0" cellpadding="5" cellspacing="0" bordercolor="#6b8fa3" class="FormTitle" id="FormTitle" style="border: 0px solid transparent;">
								<tr>
									<td bgcolor="#4D595D" colspan="3" valign="top" style="border-radius: 8px">
										<div>&nbsp;</div>
										<div class="formfonttitle"><em>软件中心 - koolproxyR</em></div>
										<div style="float:right; width:15px; height:25px;margin-top:-20px">
											<img id="return_btn" onclick="reload_Soft_Center();" align="right" style="cursor:pointer;position:absolute;margin-left:-30px;margin-top:-25px;" title="返回软件中心" src="/images/backprev.png" onMouseOver="this.src='/images/backprevclick.png'" onMouseOut="this.src='/images/backprev.png'"></img>
										</div>
										<div style="margin:30px 0 10px 5px;" class="splitLine"></div>
										<div class="SimpleNote">
											<li id="push_content1" style="margin-top:-5px;">
												koolproxyR是一款高效的基于规则过滤上网流量包的软件，用于过滤页面垃圾推广元素、不良信息、不健康内容等，并且支持https！
											</li>
										</div>
										<!-- this is the popup area for user rules -->
										<div id="vpnc_settings" class="contentM_qis" style="box-shadow: 3px 3px 10px #000;margin-top: -65px;">
											<div class="user_title">koolproxyR自定义规则</div>
											<div style="margin-left:15px"><i>1&nbsp;&nbsp;点击【保存文件】按钮，文本框内的内容会保存到/jffs/softcenter/koolproxyR/data/user.txt。</i></div>
											<div style="margin-left:15px"><i>2&nbsp;&nbsp;如果你更改了user.txt，你需要重新重启koolproxyR插件才，新加入的规则才能生效。</i></div>
											<div style="margin-left:15px"><i>3&nbsp;&nbsp;虽然koolproxyR支持adblock规则，但是我们一点都不建议你直接使用他们的规则内容，因为这极可能导致规则冲突。</i></div>
											<div id="user_tr" style="margin: 10px 10px 10px 10px;width:98%;text-align:center;">
												<textarea cols="63" rows="36" wrap="off" id="usertxt" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"></textarea>
											</div>
											<div style="margin-top:5px;padding-bottom:10px;width:100%;text-align:center;">
												<input id="edit_node" class="button_gen" type="button" onclick="open_user_rule();" value="保存文件">	
												<input id="edit_node" class="button_gen" type="button" onclick="close_user_rule();" value="返回主界面">
											</div>
										</div>
										<!-- end of the popouparea -->
										<div id="basic_settings" style="margin:-1px 0px 0px 0px;">
											<table style="margin:-1px 0px 0px 0px;" width="100%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" class="FormTable" id="routing_table">
												<thead>
												<tr>
													<td colspan="2">基础设置</td>
												</tr>
												</thead>
												<tr id="switch_tr">
													<th>
														<label>开启koolproxyR</label>
													</th>
													<td colspan="2">
														<div class="switch_field" style="display:table-cell">
															<label for="koolproxyR_enable">
																<input id="koolproxyR_enable" class="switch" type="checkbox" style="display: none;">
																<div class="switch_container" >
																	<div class="switch_bar"></div>
																	<div class="switch_circle transition_style">
																		<div></div>
																	</div>
																</div>
															</label>
														</div>
														<div style="display:table-cell;float: left;margin-left:270px;margin-top:-32px;position: absolute;padding: 5.5px 0px;">
															<a type="button" class="kp_btn" target="_blank" href="https://dev.tencent.com/u/shaoxia1991/p/koolproxyR/git/raw/master/Changelog.txt">更新日志详情</a>													                                                  	</div>
														</div>
													</td>
												</tr>
												<tr id="kp_status">
													<th>koolproxyR运行状态</th>
													<td><span id="koolproxyR_status"></span></td>
												</tr>
												<tr id="policy_tr">
													<th>选择过滤模式</th>
													<td>
														<select name="koolproxyR_mode" id="koolproxyR_mode" class="input_option" onchange="update_visibility(this);" style="width:auto;margin:0px 0px 0px 2px;">
															<option value="1" selected>全局模式</option>
															<option value="2">ipset模式</option>
															<option value="3">视频模式（旧-兼容）</option>
														</select>
													</td>
												</tr>
												<tr id="auto_reboot_switch">
													<th>〖规则〗自动更新</th>
													<td>
														<select name="koolproxyR_reboot" id="koolproxyR_reboot" class="input_option" style="width:auto;margin:0px 0px 0px 2px;" onchange="update_visibility();">
															<option value="1">定时</option>
															<option value="2">间隔</option>
															<option value="0" selected>关闭</option>
														</select>
														<span id="koolproxyR_reboot_hour_span">
															&nbsp;&nbsp;&nbsp;&nbsp;
															每天
															<select id="koolproxyR_reboot_hour" name="koolproxyR_reboot_hour" class="input_option" style="width:auto;margin:0px 0px 0px 2px;">																	
																<option	value="0">0时</option>
																<option	value="1">1时</option>
																<option	value="2">2时</option>
																<option	value="3">3时</option>
																<option	value="4">4时</option>
																<option	value="5">5时</option>
																<option	value="6">6时</option>
																<option	value="7">7时</option>
																<option	value="8">8时</option>
																<option	value="9">9时</option>
																<option	value="10">10时</option>
																<option	value="11">11时</option>
																<option	value="12">12时</option>
																<option	value="13">13时</option>
																<option	value="14">14时</option>
																<option	value="15">15时</option>
																<option	value="16">16时</option>
																<option	value="17">17时</option>
																<option	value="18">18时</option>
																<option	value="19">19时</option>
																<option	value="20">20时</option>
																<option	value="21">21时</option>
																<option	value="22">22时</option>
																<option	value="23">23时</option>
															</select>
															<select id="koolproxyR_reboot_min" name="koolproxyR_reboot_min" class="input_option" style="width:auto;margin:0px 0px 0px 2px;">
																<option	value="0">0分</option>
																<option	value="1">1分</option>
																<option	value="2">2分</option>
																<option	value="3">3分</option>
																<option	value="4">4分</option>
																<option	value="5">5分</option>
																<option	value="6">6分</option>
																<option	value="7">7分</option>
																<option	value="8">8分</option>
																<option	value="9">9分</option>
																<option	value="10">10分</option>
																<option	value="11">11分</option>
																<option	value="12">12分</option>
																<option	value="13">13分</option>
																<option	value="14">14分</option>
																<option	value="15">15分</option>
																<option	value="16">16分</option>
																<option	value="17">17分</option>
																<option	value="18">18分</option>
																<option	value="19">19分</option>
																<option	value="20">20分</option>
																<option	value="21">21分</option>
																<option	value="22">22分</option>
																<option	value="23">23分</option>
																<option	value="24">24分</option>
																<option	value="25">25分</option>
																<option	value="26">26分</option>
																<option	value="27">27分</option>
																<option	value="28">28分</option>
																<option	value="29">29分</option>
																<option	value="30">30分</option>
																<option	value="31">31分</option>
																<option	value="32">32分</option>
																<option	value="33">33分</option>
																<option	value="34">34分</option>
																<option	value="35">35分</option>
																<option	value="36">36分</option>
																<option	value="37">37分</option>
																<option	value="38">38分</option>
																<option	value="39">39分</option>
																<option	value="40">40分</option>
																<option	value="41">41分</option>
																<option	value="42">42分</option>
																<option	value="43">43分</option>
																<option	value="44">44分</option>
																<option	value="45">45分</option>
																<option	value="46">46分</option>
																<option	value="47">47分</option>
																<option	value="48">48分</option>
																<option	value="49">49分</option>
																<option	value="50">50分</option>
																<option	value="51">51分</option>
																<option	value="52">52分</option>
																<option	value="53">53分</option>
																<option	value="54">54分</option>
																<option	value="55">55分</option>
																<option	value="56">56分</option>
																<option	value="57">57分</option>
																<option	value="58">58分</option>
																<option	value="59">59分</option>
															</select>
															更新后自动重启
															&nbsp;&nbsp;&nbsp;&nbsp;
														</span>
														<span id="koolproxyR_reboot_interval_span">
															&nbsp;&nbsp;&nbsp;&nbsp;
															每隔
														<select id="koolproxyR_reboot_inter_hour" name="koolproxyR_reboot_inter_hour" class="input_option" style="width:auto;margin:0px 0px 0px 2px;">
																<option	value="1">1时</option>
																<option	value="2">2时</option>
																<option	value="3">3时</option>
																<option	value="4">4时</option>
																<option	value="5">5时</option>
																<option	value="6">6时</option>
																<option	value="7">7时</option>
																<option	value="8">8时</option>
																<option	value="9">9时</option>
																<option	value="10">10时</option>
																<option	value="11">11时</option>
																<option	value="12">12时</option>
																<option	value="24">24时</option>
																<option	value="48">48时</option>
																<option	value="72">72时</option>
															</select>
														<select id="koolproxyR_reboot_inter_min" name="koolproxyR_reboot_inter_min" class="input_option" style="width:auto;margin:0px 0px 0px 2px;">
															    <option value="0">0分</option>
															</select>
															更新后重启koolproxyR
															&nbsp;&nbsp;&nbsp;&nbsp;
														</span>
													<input class="kp_btn" onclick="start_update()" style="cursor:pointer;" type="submit" value="手动更新" />
           											</span>
													</td>
												</tr>
												<tr id="acl_method_tr">
													<th>访问控制匹配方法</th>
													<td>
														<select name="koolproxyR_acl_method" id="koolproxyR_acl_method" class="input_option" style="width:127px;margin:0px 0px 0px 2px;" onchange="update_visibility();">
															<option value="1" selected>IP + MAC匹配</option>
															<option value="2">仅IP匹配</option>
															<option value="3">仅MAC匹配</option>
														</select>
													</td>
												</tr>
												<tr id="cert_download_tr">
													<th width="35%">证书下载（用于https过滤）</th>
													<td>
														<input type="button" id="download_cert" class="kp_btn" style="cursor:pointer" value="证书下载">
														<a class="kp_btn" href="https://shaoxia.xyz/post/koolproxyR%E6%8C%87%E5%8D%97/" target="_blank">https过滤使用教程</a>
														<a class="kp_btn" href="https://github.com/user1121114685/koolproxyR_rule_list/edit/master/kpr_our_rule.txt" target="_blank">提交规则</a>
													    <a class="kp_btn" href="https://shaoxia.xyz/post/koolproxyR%E8%A7%84%E5%88%99%E7%BC%96%E5%86%99%E6%95%99%E7%A8%8B/" target="_blank">提交规则教程</a>
													</td>
												</tr>
												<tr id="klloproxy_com">
													<th width="35%">koolproxyR交流</th>
													<td>
														<a type="button" class="kp_btn" target="_blank" href="https://t.me/joinchat/AAAAAD-tO7GPvfOU131_vg">加入电报群</a>
													</td>
												</tr>
                                    		</table>
                                    	</div>
										<div id="rule_table_div" style="margin:10px 0px 0px 0px;width:748px">
											<table class="FormTable1" id="rule_table" style="margin:-1px 0px 0px 0px;border: 1px solid #000000;width:100%;" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" >
												<thead>
												<tr>
													<td colspan="7">规则控制 &nbsp;&nbsp;<a class="hintstyle" href="javascript:void(0);" onclick="openkpHint(1)"><font color="#FF4500"><u>[说明]</u></font></a></td>
												</tr>
												</thead>
												<tr>
													<th style="width:30px;text-align:center;">启用</th>
													<th style="width:70px;">文件</th>
													<th style="width:250px;">地址</th>
													<th style="width:40px;text-align:center;">别名</th>
													<th style="width:150px;">备注</th>
													<th style="width:30px;text-align:center;">编辑</th>
													<th style="width:30px;text-align:center;">删除</th>
												</tr>
												<tr>
													<td style="text-align:center;">
														<input type="checkbox" id="koolproxyR_rule_enable_d1" checked="checked" name="koolproxyR_rule_enable_d1" />
													</td>
													<td>
														easylistchina.txt
													</td>
													<td>
														KPR
													</td>
													<td style="text-align:center;">
														KPR主规则（国内）
													</td>
													<td id="kp_rule_1">
													</td>
													<td>
													</td>
													<td>
													</td>
												</tr>
												<tr>
													<td style="text-align:center;">
														<input type="checkbox" id="koolproxyR_rule_enable_d2" checked="checked" name="koolproxyR_rule_enable_d2" />
													</td>
													<td>
                                                       fanboy-annoyance.txt
                                                   	</td>
													<td>
                                                          KPR												
													</td>
													<td style="text-align:center;">
														Fanboy规则（国外）
													</td>
													<td id="kp_rule_2">
													</td>
													<td>
													</td>
													<td>
													</td>
												</tr>
												<tr>
													<td style="text-align:center;">
														<input type="checkbox" id="koolproxyR_rule_enable_d3" checked="checked" name="koolproxyR_rule_enable_d3" />
													</td>
													<td>
                                                                     kp.dat														
													</td>
													<td>
                                                                     KPR			
													</td>
													<td style="text-align:center;">
														视频规则
													</td>
													<td id="kp_rule_3">
													</td>
													<td>
													</td>
													<td>
													</td>
												</tr>
												<tr>
													<td style="text-align:center;">
														<input type="checkbox" id="koolproxyR_rule_enable_d4" checked="checked" name="koolproxyR_rule_enable_d4" />
													</td>
													<td>
															user.txt
													</td>
													<td>
															KPR
													</td>
													<td style="text-align:center;">
														自定义规则
													</td>
													<td id="kp_rule_4">
													</td>
													<td>									
														<input style="margin-left: 6px;margin: -3px 0px -5px 6px;" type="button" class="edit_btn" onclick="open_user_rule()" value="" />
													</td>
													<td>
													</td>
												</tr>
												<tr>
													<td style="text-align:center;">
														<input type="checkbox" id="koolproxyR_rule_enable" name="koolproxyR_rule_enable" style="width:30px;"/>
													</td>
													<td>
														<input type="text" id="koolproxyR_rule_file" name="koolproxyR_rule_file" class="input_ss_table" style="width:70px;" placeholder="" />
													</td>
													<td>
														<input type="text" id="koolproxyR_rule_addr" name="koolproxyR_rule_addr" class="input_ss_table" style="width:250px;" placeholder="" />
													</td>
													<td>
														<input type="text" id="koolproxyR_rule_note" name="koolproxyR_rule_note" class="input_ss_table" style="width:55px;" placeholder="" />
													</td>
													<td>
													</td>
													<td>
														<input style="margin-left: 6px;margin: -3px 0px -5px 6px;" type="button" class="add_btn" onclick="add_rule_Tr()" value="" />
													</td>													
													<td>
													</td>
												</tr>
											</table>
										</div>
										<div id="rul_table_div" style="margin:10px 0px 0px 0px;width:748px">
											<table class="FormTable1" id="rul_table" style="margin:-1px 0px 0px 0px;border: 1px solid #000000;width:100%;" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" >
												<thead>
												<tr>
													<td colspan="7">补充规则控制 &nbsp;&nbsp;<a class="hintstyle" href="javascript:void(0);" onclick="openkpHint(1)"><font color="#FF4500"><u>[说明]</u></font></a></td>
												</tr>
												</thead>
												<tr>
													<th style="width:30px;text-align:center;">启用</th>
													<th style="width:70px;">文件</th>
													<th style="width:250px;">地址</th>
													<th style="width:40px;text-align:center;">别名</th>
													<th style="width:150px;">备注</th>
													<th style="width:30px;text-align:center;">编辑</th>
													<th style="width:30px;text-align:center;">删除</th>
												</tr>
												<tr>
													<td style="text-align:center;">
														<input type="checkbox" id="koolproxyR_rule_enable_d5" checked="checked" name="koolproxyR_rule_enable_d5" />
													</td>
													<td>
														koolproxy.txt
													</td>
													<td>
														koolproxy.txt与daily.txt合并
													</td>
													<td style="text-align:center;">
														 原KP规则
													</td>
													<td id="kp_rule_5">
													</td>
													<td>
													</td>
													<td>
													</td>
												</tr>
												<tr>
													<td style="text-align:center;">
														<input type="checkbox" id="koolproxyR_rule_enable_d6" checked="checked" name="koolproxyR_rule_enable_d6" />
													</td>
													<td>
                                                       yhosts.txt
                                                   	</td>
													<td>
                                                          KPR												
													</td>
													<td style="text-align:center;">
														补充规则
													</td>
													<td id="kp_rule_6">
													</td>
													<td>
													</td>
													<td>
													</td>
												</tr>
												</tr>
											</table>
										</div>
										<div id="ACL_table_div" style="margin:10px 0px 0px 0px;">
											<table id="ACL_table" style="margin:-1px 0px 0px 0px;" width="100%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#6b8fa3" class="FormTable" >
												<thead>
												<tr>
													<td colspan="6">访问控制</td>
												</tr>
												</thead>
												<tr>
													<th style="width:180px;text-align: center;">主机IP地址</th>
													<th style="width:160px;text-align: center;">mac地址</th>
													<th style="width:160px;text-align: center;">主机别名</th>
													<th style="width:160px;text-align: center;">访问控制</th>
													<th style="width:70px;text-align: center;">添加/删除</th>
												</tr>
												<tr>
													<td>
														<input type="text" maxlength="15" class="input_ss_table" id="koolproxyR_acl_ip" name="koolproxyR_acl_ip" align="left" onkeypress="return validator.isIPAddr(this, event)" style="float:left;width:120px" autocomplete="off" onClick="hideClients_Block();" autocorrect="off" autocapitalize="off">
														<img id="pull_arrow" height="14px;" src="images/arrow-down.gif" align="right" onclick="pullLANIPList(this);" title="<#select_IP#>">
														<div id="ClientList_Block" class="clientlist_dropdown" style="margin-left:2px;margin-top:25px;width:auto"></div>
													</td>
													<td>
														<input type="text" id="koolproxyR_acl_mac" name="koolproxyR_acl_mac" class="input_ss_table" maxlength="50" style="width:140px;" placeholder="" />
													</td>
													<td>
														<input type="text" id="koolproxyR_acl_name" name="koolproxyR_acl_name" class="input_ss_table" maxlength="50" style="width:140px;" placeholder="" />
													</td>
													<td>
														<select id="koolproxyR_acl_mode" name="koolproxyR_acl_mode" style="width:140px;margin:-1px 0px 0px 2px;" class="input_option">
															<option value="1">http only</option>
															<option value="2">http + https</option>
															<option value="0">不过滤</option>
														</select>
													</td>
													<td style="width:66px">
														<input style="margin-left: 6px;margin: -3px 0px -5px 6px;" type="button" class="add_btn" onclick="addTr()" value="" />
													</td>
												</tr>
											</table>
										</div>
										<div id="ACL_note" style="margin-top: 5px;">
											<div><i>1&nbsp;&nbsp;过滤https站点需要为相应设备安装证书，并启用http + https过滤！</i></div>
											<div><i>2&nbsp;&nbsp;在路由器下的设备，不管是电脑，还是移动设备，都可以在浏览器中输入<u><font color='#66FF00'>110.110.110.110</font></u>来下载证书。</i></div>
											<div><i>3&nbsp;&nbsp;如果想在多台装有koolroxy的路由设备上使用一个证书，请用winscp软件备份/jffs/softcenter/koolproxyR/data文件夹，并上传到另一台路由。</i></div>
										</div>
										<div class="apply_gen">
											<input type="button" id="cmdBtn" class="button_gen" onclick="save();" value="提交"/>
										</div>
									</td>
								</tr>
							</table>
						</td>
						<td width="10" align="center" valign="top"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<div id="footer"></div>
</body>
</html>
