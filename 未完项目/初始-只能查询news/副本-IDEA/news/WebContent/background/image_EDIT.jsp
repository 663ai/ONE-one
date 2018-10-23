<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>控制台</title>
		<link rel="stylesheet" type="text/css" href="Css/identify.css" />
		<link rel="stylesheet" type="text/css" href="Css/layout.css" />
		<link rel="stylesheet" type="text/css" href="Css/account.css" />
		<link rel="stylesheet" type="text/css" href="Css/style.css" />
		<link rel="stylesheet" type="text/css" href="Css/control_index.css" />
		<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
		<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
		<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
		<script src="~/lib/ueditor/lang/zh-cn/zh-cn.js"></script>
		<script type="text/javascript" src="Js/layer/layer.js"></script>
		<script type="text/javascript" src="Js/haidao.offcial.general.js"></script>
		<script type="text/javascript" src="Js/select.js"></script>
		<script type="text/javascript" src="Js/haidao.validate.js"></script>
	</head>
	<body>
		<div class="view-topbar">
			<div class="topbar-console">
				<div class="tobar-head fl">
					<a href="index.jsp" class="topbar-logo fl">
					<span><img src="Images/logo_index.png" width="20" height="20"/></span>
					</a>
					<a href="background/index.jsp" class="topbar-home-link topbar-btn text-center fl"><span>管理控制台</span></a>
				</div>
			</div>
			<div class="topbar-info">
				<ul class="fr">
					<li class="fl dropdown topbar-notice topbar-btn">
					<a href="#" class="dropdown-toggle">
					<span class="icon-notice"></span>
					<span class="topbar-num have">0</span>
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
						<span class="fl text-normal">小朱</span>
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
								<a href="manager_findall">
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
				
					
				<form id="form1" name="form1" method="post" action="/news/images_edit">
					 <p style="margin-left:50px; margin-top:30px;">title：
					  <label>
					  <input style="height: 36px;" name="image.imtitle" type="text" value="${sessionScope.imtitle }"/>
					  </label>
					  </p>
					  <p style="margin-left:50px; margin-top:30px;">
						  <label>
						  	<textarea name="image.imname" id="myEditor">
						  		${sessionScope.imname}
						  	</textarea>
						  </label>
					  </p>
					  <p style="margin-left:50px; margin-top:30px;">state：
					  <label>
					  <input style="height: 36px;" name="image.imstate" type="text" value="${sessionScope.imstate}"/>
					  </label>
					  </p>
					  <p style="margin-left:50px; margin-top:30px;">date：
					  <label>
					  <input style="height: 36px;" name="image.imdate" type="text" value="${sessionScope.imdate}"/>
					  </label>
					  </p>
					  <p style="margin-left:50px; margin-top:30px;">
					    <label>
					    <input type="submit" value="确定" />
					    <input  style="margin-left:20px;" type="reset"  value="取消" />
					    <input type="hidden" name="image.imid" value="${sessionScope.imid}" />
					    </label>
					  </p>
					</form>
				</div>
			</div>
			

			
		</div>

		<script type="text/javascript">
			UEDITOR_CONFIG.UEDITOR_HOME_URL='./ueditor/';
			UE.getEditor('myEditor');
		</script>
	</body>

</html>