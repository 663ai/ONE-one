<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>监控管理</title>
    <link rel="stylesheet" href="css/base.css">
    <link href="css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/music/jquery.js"></script> 
	<script type="text/javascript" src="js/music/music.js"></script> 
	<link href="css/music/music.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/music/style.css" media="screen" type="text/css" />
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
<!--内容部分-->
<div class="con1 left" id="car_control">
<div class="left car_left">
    <div class="left_up bow_shadow">
		<p>　</p>
		<div style="text-align:center;clear:both;">
		<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
		<script src="/follow.js" type="text/javascript"></script>
		<div class="playDiv">
		  <div>
		  <audio id="musicBox" controls="controls" onended="myMusic.nextMusic()" style="width:99%;padding-left:2px;"></audio>
		  </div>
		  <div class="currentBtns">
			<div id="lastMusic" class="lastMusic">
				<img title="第一首歌曲" src="img/images/first.png" onClick="myMusic.fristMusic()"/>&nbsp;&nbsp;
				<img title="上一首歌曲" src="img/images/last.png" onClick="myMusic.lastMusic()"/>&nbsp;&nbsp;
				<img title="点击暂停" id="pop" src="img/images/pause.png" onClick="myMusic.playOrPause()" imgVal="0"/>&nbsp;&nbsp;
				<img title="下一首歌曲" src="img/images/next.png" onClick="myMusic.nextMusic()"/>&nbsp;&nbsp;
				<img title="最后一首歌曲" src="img/images/end.png" onClick="myMusic.end()"/>
				</div>
			<div id="play"></div>
			<div id="nextMusic"></div>
		  </div>
		  </div>
		  <div >
			<div class="songStyle float_l">
				<h3>歌曲列表 </h3>
				<div id="songs">
				<ul id="musicList">
				</ul>
				</div>
		    </div>
    </div>
	</div>
	</div>

</div>
    <div class="left car_center">
        <video  src="vedio/123.mp4" autoplay="autoplay" muted="true" ></video>
		<video  src="vedio/123.mp4" autoplay="autoplay" muted="true"></video>
		<video  src="vedio/123.mp4" autoplay="autoplay" muted="true"></video>
		<video  src="vedio/123.mp4" autoplay="autoplay" muted="true" ></video>
		<video  src="vedio/123.mp4" autoplay="autoplay" muted="true"></video>
		<video  src="vedio/123.mp4" autoplay="autoplay" muted="true"></video>
    </div>
    <div id="map"></div>



</div>
<script src="js/jquery/jQuery-2.2.0.min.js"></script>
<script src="js/echarts-all.js"></script>
<script src="js/base.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=5ieMMexWmzB9jivTq6oCRX9j&callback"></script>
<script src="js/car_control.js"></script>
<script src="js/ztree/jquery.ztree.all-3.5.js"></script>
<script src="js/listTree.js"></script>

</body>
</html>