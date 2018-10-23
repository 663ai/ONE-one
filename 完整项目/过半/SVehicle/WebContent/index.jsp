<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页界面</title>
    <link rel="stylesheet" href="css/base.css">
</head>
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
	<a href="index.action">
    <div class="header_center left">
        <h2><strong>安全系统平台</strong></h2>
        <p class="color_font"><small>Long night, there is only one person's yearning for a person.</small></p>
    </div>
	</a>
    <div class="right nav text_right">
        <ul> <li><i class="nav_7"></i><a href="car.action">车辆管理</a> </li>
            <li><i class="nav_8"></i><a href="message.jsp">信息录入</a> </li>
            <li><i class="nav_4"></i><a href="table1.jsp">用户管理</a> </li>
        </ul>
    </div>
</header>
<!--内容部分-->
<div class="con left">
    <!--数据总概-->
    <div class="con_div">
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="img/info_1.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>总量：<b>　${requestScope.vehiCount}</b></p>
					<p>状况：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="img/info_4.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>水电：<b>正常</b></p>
					<p>区域：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">

            <div class="con_div_text01 left">
                <img src="img/info_6.png" class="left text01_img"/>
                <div class="left text01_div ">
                    <p>安保：<b>正常</b></p>
					<p>区域：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
                </div>
            </div>
        </div>
		<div class="con_div_text left">

            <div class="con_div_text01 left">
                <img src="img/tx.jpg" class="left text01_img"/>
                <div class="left text01_div ">
                    <p>用户：<b>${requestScope.apname}</b></p>
					<p>权限：<b>${requestScope.adstate}</b></p>
					<p>管理：<b>正常</b></p>
                </div>
            </div>
        </div>
    </div>
    <!--统计分析图-->
    <div class="div_any">
        <div class="left div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_1.png">进出车辆统计 </div>
                <p id="char1" class="p_chart"></p>
                <input type="hidden" id="vevew" value="${vevew}" />
                <input type="hidden" id="veved" value="${veved}" />
                <input type="hidden" id="vevex" value="${vevex}" />
            </div>
        </div>

        <div class="left div_any02">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_4.png">缴费信息统计 </div>
                <p id="char3" class="p_chart"></p>
                 <input type="hidden" id="fire" value="${fire}" />
                 <input type="hidden" id="water" value="${water}" />
                 <input type="hidden" id="ele" value="${ele}" />
                 <input type="hidden" id="net" value="${net}" />
            </div>
        </div>
		
		<div class="left div_any11">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_2.png">网关状态统计 </div>
                <p id="char2" class="p_chart"></p>
                <input type="hidden" id="a" value="${a}" />
                 <input type="hidden" id="b" value="${b}" />
                  <input type="hidden" id="c" value="${c}" />
                   <input type="hidden" id="d" value="${d}" />
                    <input type="hidden" id="aa" value="${aa}" />
                     <input type="hidden" id="bb" value="${bb}" />
                      <input type="hidden" id="cc" value="${cc}" />
                       <input type="hidden" id="dd" value="${dd}" />
            </div>
        </div>
		
		<div class="div_any05 right ">
            <div class="div_any_child div_height">
                <div class="div_any_title any_title_width"><img src="img/title_3.png">地图 </div>
                <div id="map_div"></div>
				<p id="char4"></p>
            </div>
        </div>
		
    </div>
    </div>
<script src="js/jquery/jQuery-2.2.0.min.js"></script>
<script src="js/echarts-all.js"></script>
<script src="js/base.js"></script>
<script src="js/index.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=5ieMMexWmzB9jivTq6oCRX9j&callback"></script>
<script src="js/map.js"></script>
</body>
</html>