<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>详情-复杂</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/tail.css">
</head>
<style>
	a{
		color:#EE340D;
		font-size:20px;
	}
</style>
<body class="body1">
<!--顶部-->
<header class="header left">
    <div class="left nav">
        <ul>
            <li class="nav_active"><i class="nav_1"></i><a href="index.action">数据概览</a> </li>
            <li><i class="nav_2"></i><a href="carContrl.jsp">监控管理</a> </li>
            <li><i class="nav_3"></i><a href="map.action">安保管理</a> </li>
            </ul>
    </div>
	<a href="message.jsp">
    <div class="header_center left">
        <h2><strong>信息录入详情</strong></h2>
        <p class="color_font"><small>Imperfect information entry interface.</small></p>
    </div>
	</a>
    <div class="right nav text_right">
        <ul> <li><i class="nav_7"></i><a href="static.action">统计管理</a> </li>
            <li><i class="nav_8"></i><a href="message.jsp">信息录入</a> </li>
            <li><i class="nav_4"></i><a href="house.action">用户管理</a> </li>
        </ul>
    </div>
</header>

<!--certen-->
	<div style="margin-left:0.5%;">
		  <div class="table_div_div" style="color:#FFFFFF;  text-align:center; line-height:55px;"> 
				<a href="tail_sm.jsp"><div style="border:2.5px #65CDDC solid; width:99%; height:55px; float:left;">添加业主</div></a>
		  </div>
		  <div class="table_div_div" style="color:#FFFFFF;  text-align:center; line-height:55px;"> 
				<a href="index.html"><div style="border:0.5px #65CDDC solid; width:20%; height:55px; float:left;">消防</div></a>
				<a href="index.html"><div style="border:0.5px #65CDDC solid; width:20%; height:55px; float:left;">水电</div></a>
				<a href="index.html"><div style="border:0.5px #65CDDC solid; width:20%; height:55px; float:left;">宽带</div></a>
				<a href="index.html"><div style="border:0.5px #65CDDC solid; width:20%; height:55px; float:left;">天然气</div></a>
				<a href="index.html"><div style="border:0.5px #65CDDC solid; width:19%; height:55px; float:left;">车位信息</div></a>
		  </div>
		  <div class="table_div_div" style="color:#FFFFFF; text-align:center; line-height:55px;"> 
				<a href="index.html"><div style="border:2.5px #65CDDC solid; width:99%; height:55px; float:left;">安保</div></a>
		  </div>
		  <div class="table_div_div" style="color:#FFFFFF; text-align:center; line-height:55px;"> 
				<a href="index.html"><div style="border:1.25px #65CDDC solid; width:50%; height:55px; float:left;">物业</div></a>
				<a href="index.html"><div style="border:1.25px #65CDDC solid; width:49%; height:55px; float:left;">业主委员会</div></a>
		  </div>
		  <div class="table_div_div" style="color:#FFFFFF; text-align:center; line-height:337px;"> 
					<div style="border:2.5px #65CDDC solid; width:99%; height:337px; float:left;">
						<form action="uploadFile.action" method="post"  enctype="multipart/form-data">
							<input type="file" name="file"/>
							<input style=" width:50px; height:35px;" type="submit" value="上传"/>
						</form>
					</div>
		  </div>
		  
	</div>
<script src="js/jquery/jQuery-2.2.0.min.js"></script>
<script src="js/base.js"></script>


</body>
</html>