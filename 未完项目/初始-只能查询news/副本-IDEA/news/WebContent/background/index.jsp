<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="java.text.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>控制台</title>
		<link rel="stylesheet" type="text/css" href="../Css/identify.css" />
		<link rel="stylesheet" type="text/css" href="../Css/layout.css" />
		<link rel="stylesheet" type="text/css" href="../Css/account.css" />
		<link rel="stylesheet" type="text/css" href="../Css/style.css" />
		<link rel="stylesheet" type="text/css" href="../Css/control_index.css" />
		<script type="text/javascript" src="../Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="../Js/layer/layer.js"></script>
		<script type="text/javascript" src="../Js/haidao.offcial.general.js"></script>
		<script type="text/javascript" src="../Js/select.js"></script>
		<script type="text/javascript" src="../Js/haidao.validate.js"></script>
		<style>
			html, body {
			  height: 100%;
			}
			
			body {
			  background: #0f3854;
			  background: -webkit-radial-gradient(center ellipse, #0a2e38 0%, #000000 70%);
			  background: radial-gradient(ellipse at center, #0a2e38 0%, #000000 70%);
			  background-size: 100%;
			}
			
			p {
			  margin: 0;
			  padding: 0;
			}
			
			#clock {
			  font-family: 'Share Tech Mono', monospace;
			  color: #ffffff;
			  text-align: center;
			  position: absolute;
			  left: 50%;
			  top: 50%;
			  -webkit-transform: translate(-50%, -50%);
					  transform: translate(-50%, -50%);
			  color: #daf6ff;
			  text-shadow: 0 0 20px #0aafe6, 0 0 20px rgba(10, 175, 230, 0);
			}
			#clock .time {
			  letter-spacing: 0.05em;
			  font-size: 80px;
			  padding: 5px 0;
			}
			#clock .date {
			  letter-spacing: 0.1em;
			  font-size: 24px;
			}
			#clock .text {
			  letter-spacing: 0.1em;
			  font-size: 12px;
			  padding: 20px 0 0;
			}
		</style>
		<script type="text/javascript" src="../Js/vue.min.js"></script>
	</head>

	<body>
		<div class="view-topbar">
			<div class="topbar-console">
				<div class="tobar-head fl">
					<a href="index.jsp" class="topbar-logo fl">
					<span><img src="../Images/logo_index.png" width="20" height="20"/></span>
					</a>
					<a href="#" class="topbar-home-link topbar-btn text-center fl"><span>管理控制台</span></a>
				</div>
			</div>
			<div class="topbar-info">
				<ul class="fr">
					<li class="fl dropdown topbar-notice topbar-btn">
					<a href="#" class="dropdown-toggle">
					<span class="icon-notice"></span>
					<span class="topbar-num have">0+</span>
					<!--have表示有消息，没有消息去掉have-->
					</a>
					</li>
					
					<li class="fl topbar-info-item">
					<div class="dropdown">
						<a href="#" class="topbar-btn">
						<span class="fl text-normal">帮助与文档</span>
						<span class="icon-arrow-down"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">模板开发手册</a></li>
							<li><a href="#">某某数据字典</a></li>
						</ul>
					</div>
					</li>
					<li class="fl topbar-info-item">
					<div class="dropdown">
						<a href="#" class="topbar-btn">
						<span class="fl text-normal">${requestScope.manager}</span>
						<span class="icon-arrow-down"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">退出</a></li>
						</ul>
					</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="view-body">
			<div class="view-sidebar">
				<div class="sidebar-content">
				
					<div class="sidebar-nav">
						<div class="sidebar-title">
							<a href="#">
								<span class="icon"><b class="fl icon-arrow-down"></b></span>
								<span class="text-normal">管理人员</span>
							</a>
						</div>
						<ul class="sidebar-trans">
							<li>
								<a href="showManagers.action">
									<b class="sidebar-icon"><img src="../Images/icon_message.png" width="16" height="16" /></b>
									<span class="text-normal">管理人员</span>
								</a>
							</li>
						</ul>
					</div>
				
					<div class="sidebar-nav">
						<div class="sidebar-title">
							<a href="#">
								<span class="icon"><b class="fl icon-arrow-down"></b></span>
								<span class="text-normal">栏目管理</span>
							</a>
						</div>
						<ul class="sidebar-trans">
							<li>
								
								<a href="catalog_findall">
									<b class="sidebar-icon"><img src="../Images/icon_author.png" width="16" height="16" /></b>
									<span class="text-normal">栏目管理</span>
								</a>
							</li>
						</ul>
					</div>
					
					
					<div class="sidebar-nav">
						<div class="sidebar-title">
							<a href="#">
								<span class="icon"><b class="fl icon-arrow-down"></b></span>
								<span class="text-normal">文章管理</span>
							</a>
						</div>
						<ul class="sidebar-trans">
							<li>
								<a href="article_findall">
									<b class="sidebar-icon"><img src="../Images/icon_message.png" width="16" height="16" /></b>
									<span class="text-normal">文章管理</span>
								</a>
							</li>
						</ul>
					</div>	
					
					<div class="sidebar-nav">
						<div class="sidebar-title">
							<a href="#">
								<span class="icon"><b class="fl icon-arrow-down"></b></span>
								<span class="text-normal">图片管理</span>
							</a>
						</div>
						<ul class="sidebar-trans">
							<li>
								<a href="images_findall">
									<b class="sidebar-icon"><img src="../Images/icon_message.png" width="16" height="16" /></b>
									<span class="text-normal">图片管理</span>
								</a>
							</li>
						</ul>
					</div>
					
					
				</div>		
			</div>
			<div class="view-product background-color">
				<div class="padding-big background-color">
					<div class="manage-head">
						<h6 class=" padding-left manage-head-con ">主界面</h6>
					</div>
			<div style="font-size: 60px;text-align: center;">
			
			<div id="clock">
				<p class="date">{{ date }}</p>
				</br>
				<p class="time">{{ time }}</p>

			</div>
			
			<script>
			var clock = new Vue({
				el: '#clock',
				data: {
					time: '',
					date: ''
				}
			});
			
			var week = ['星期天', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
			var timerID = setInterval(updateTime, 1000);
			updateTime();
			function updateTime() {
				var cd = new Date();
				clock.time = zeroPadding(cd.getHours(), 2) + ':' + zeroPadding(cd.getMinutes(), 2) + ':' + zeroPadding(cd.getSeconds(), 2);
				clock.date = zeroPadding(cd.getFullYear(), 4) + '-' + zeroPadding(cd.getMonth()+1, 2) + '-' + zeroPadding(cd.getDate(), 2) + ' ' + week[cd.getDay()];
			};
			
			function zeroPadding(num, digit) {
				var zero = '';
				for(var i = 0; i < digit; i++) {
					zero += '0';
				}
				return (zero + num).slice(-digit);
			}</script>
			
			</div>
					<div class="account-product margin-big-top clearfix">
					
						
					</div>
				</div>
			</div>
		</div>			
		<script>
			$(".sidebar-title").live('click', function() {
				if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
					$(this).next().slideDown(200);
					$(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
				} else {
					$(this).next().slideUp(200);
					$(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
				}
			});
		</script>
	</body>
</html>