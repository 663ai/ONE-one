<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
            <li class="nav_active"><i class="nav_1"></i><a href="index.jsp">数据概览</a> </li>
            <li><i class="nav_2"></i><a href="carContrl.jsp">车辆监控</a> </li>
            <li><i class="nav_3"></i><a href="map.jsp">地图界面</a> </li>
            </ul>
    </div>
	<a href="index.html">
    <div class="header_center left">
        <h2><strong>xx区智慧旅游综合服务平台</strong></h2>
        <p class="color_font"><small>Comprehensive service platform for smart tourism</small></p>
    </div>
	</a>
    <div class="right nav text_right">
        <ul> <li><i class="nav_7"></i><a href="static.jsp">查询统计</a> </li>
            <li><i class="nav_8"></i><a href="message.jsp">信息录入</a> </li>
            <li><i class="nav_4"></i><a href="table1.jsp">表格界面</a> </li>
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
                    <p>监控：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="img/info_4.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>网关：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">

            <div class="con_div_text01 left">
                <img src="img/info_6.png" class="left text01_img"/>
                <div class="left text01_div ">
                    <p>安保：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
					<p>监控：<b>正常</b></p>
                </div>
            </div>
        </div>
		<div class="con_div_text left">

            <div class="con_div_text01 left">
                <img src="img/tx.jpg" class="left text01_img"/>
                <div class="left text01_div ">
                    <p>用户：<b>张三</b></p>
					<p>权限：<b>管理</b></p>
					<p>管理：<b>物业</b></p>
                </div>
            </div>
        </div>
    </div>
    <!--统计分析图-->
    <div class="div_any">
        <div class="left div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_1.png">车辆类型统计 </div>
                <p id="char1" class="p_chart"></p>
            </div>
        </div>

        <div class="left div_any02">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_4.png">车辆行驶统计 </div>
                <p id="char3" class="p_chart"></p>
            </div>
        </div>
		
		<div class="left div_any11">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_2.png">车辆状态统计 </div>
                <p id="char2" class="p_chart"></p>
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