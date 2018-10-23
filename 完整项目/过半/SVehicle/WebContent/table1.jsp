<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>表格一</title>
    <link rel="stylesheet" href="js/bstable/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="js/bstable/css/bootstrap-table.css"/>
    <link rel="stylesheet" href="css/base.css">
    <link href="css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
</head>
<style>
* {
	margin: 0;
	padding: 0;
	list-style: none;
}
a {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
.tcdPageCode {
	padding: 15px 5px;
	text-align: left;
	color: #ccc;
	text-align: center;
}
.tcdPageCode a {
	display: inline-block;
	color: #428bca;
	display: inline-block;
	height: 25px;
	line-height: 25px;
	padding: 0 5px;
	border: 1px solid #ddd;
	margin: 0 2px;
	border-radius: 4px;
	vertical-align: middle;
}
.tcdPageCode a:hover {
	text-decoration: none;
	border: 1px solid #428bca;
}
.tcdPageCode span.current {
	font-size: 12px;
	display: inline-block;
	height: 25px;
	line-height: 25px;
	padding: 0 5px;
	margin: 0 2px;
	color: #fff;
	background-color: #428bca;
	border: 1px solid #428bca;
	border-radius: 4px;
	vertical-align: middle;
}
.tcdPageCode span.disabled {
	font-size: 12px;
	display: inline-block;
	height: 25px;
	line-height: 25px;
	padding: 0 5px;
	margin: 0 2px;
	color: #bfbfbf;
	background: #f2f2f2;
	border: 1px solid #bfbfbf;
	border-radius: 4px;
	vertical-align: middle;
}
#page{
	position:absolute;
	width:1000px;
	right:-550px;
	bottom:0px;
}
#page-left{
	position:absolute;
	font-size:16px;
	width:200px;
	left:1%;
	bottom:12px;
}

</style>
<body>
<!--顶部-->
<header class="header left">
    <div class="left nav">
        <ul>
            <li class="nav_active"><i class="nav_1"></i><a href="index.action">数据概览</a> </li>
            <li><i class="nav_2"></i><a href="carContrl.jsp">监控管理</a> </li>
            <li><i class="nav_3"></i><a href="map.action">安保管理</a> </li>
            </ul>
    </div>
	<a href="index.html">
    <div class="header_center left">
        <h2><strong>安全系统平台</strong></h2>
        <p class="color_font"><small>Long night, there is only one person's yearning for a person.</small></p>
    </div>
	</a>
    <div class="right nav text_right">
        <ul> <li><i class="nav_7"></i><a href="static.jsp">车辆管理</a> </li>
            <li><i class="nav_8"></i><a href="message.jsp">信息录入</a> </li>
            <li><i class="nav_4"></i><a href="table1.jsp">用户管理</a> </li>
        </ul>
    </div>
</header>
<div class="clear"></div>
<!--内容部分-->
<div class="con1 left" id="car_control">
    <div class="right  right_table">
		<form action="" method="post" > 
			<div class="table_find">
			　　　　还款情况：
						<select style="height:33px;">
							<option selected="selected">手机官网</option>
							<option>PC官网</option>
							<option>PC用户管理弹窗</option>
						</select>
     　　　　　　　　还款情况：
						<select style="height:33px;">
							<option selected="selected">手机官网</option>
							<option>PC官网</option>
							<option>PC用户管理弹窗</option>
						</select>
   　　　　　　　　　搜索：
						<form action="" method="post"  >
							<input  style="height:33px; width:200px; border:1px solid #CCCCCC; border-radius:3px;" type="text" name="text" placeholder="　请输入客户姓名"/>
							<input  type="submit" name="submit1" value="确认" style=" color:#FFFFFF; border-radius:5px; height:33px; width:50px; background:#FF9900;"/>
						</form>
					
			</div>
			<div class="table_div_div" style=" margin:0.5%; text-align:center; line-height:35px;"> 
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:12%; height:35px; float:left;">XXX</div>
			</div>
			
			
			<div class="table_div_div" style=" margin:0.5%; text-align:center; line-height:35px;"> 
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">XXX</div>
				<div style="border:1px #79D3DB solid; width:12%; height:35px; float:left;">XXX</div>
			</div>
			
			
			
		</form>
		<div id="page-left">
			<p>共<b>?</b>条数据，每页显示<b>?</b>条</p>
		</div>
		<div id="page">
			<div>
			  <div style="float: left" class="tcdPageCode"></div>
			  <div style="clear: both"></div>
			</div>
		</div>
		<script type="text/javascript" src="js/page/js/jquery.min.js"></script>
		<script type="text/javascript" src="js/page/js/jquery.page.js"></script> 
		<script type="text/javascript">
		var tiaoshu=1000;//数据的条数
		var yexian=4;//每页几条数据
		var ye=  Math.ceil(tiaoshu/yexian);//可以分为几页
		var currentUrl01 = decodeURI(window.location.href);
		var arr01 = currentUrl01.split("?");
		$('#zongye').text(ye);
		$('#dang').html(arr01[1]);
		$(function () {
			$('#tiao').val(arr01[1]);
			setTimeout(function () {
				$("#zhuan").click()
			},10);
		});
		function bian(yeshu){
			var stateObject = {};
			var title = "";
			var newUrl ="" ;
			if(arr01[0]!=parseInt($('#dang').text())){
				newUrl =arr01[0]+"?"+yeshu;
				history.pushState(stateObject,title,newUrl);
			}
		}
		
		////////////////////////////////这里面获取数据  p 为当前页数
		$(".tcdPageCode").createPage({
			pageCount:ye,
			current:1,
			backFn:function(p){
				console.log(p);
				bian(p);
			}
		});
		</script>
    </div>




</div>





<script src="js/jquery/jQuery-2.2.0.min.js"></script>
<script src="js/base.js"></script>
<script src="js/table1.js"></script>
<script src="js/ztree/jquery.ztree.all-3.5.js"></script>
<script src="js/listTree.js"></script>
<script src="js/bstable/js/bootstrap.min.js"></script>
<script src="js/bstable/js/bootstrap-table.js"></script>
<script src="js/bstable/js/bootstrap-table-zh-CN.min.js"></script>
<script src="js/layer_v2.1/layer/layer.js"></script>

</body>
</html>