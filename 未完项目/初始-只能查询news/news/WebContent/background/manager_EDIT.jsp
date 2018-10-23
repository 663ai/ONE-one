<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
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
		<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
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
					<a href="#" class="topbar-home-link topbar-btn text-center fl"><span>管理控制台</span></a>
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
						<span class="fl text-normal">${sessionScope.managername}</span>
						<span class="icon-arrow-down"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="background/login.jsp">退出</a></li>
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
								<a href="manager_findall!findall.action">
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
								
								<a href=images_findall">
									<b class="sidebar-icon"><img src="../Images/icon_author.png" width="16" height="16" /></b>
									<span class="text-normal">图片管理</span>
								</a>
							</li>
						</ul>
					</div>
					
				</div>
			</div>
			
			

			<div class="view-product background-color">
				<div class="padding-big background-color">
				<div style="position:absolute; width:80%; height:50%; top:25%; left:10%; background:#FFFFFF;">
				<form id="form1" name="form1" method="post" action="manager_edit!edit.action" style="text-align:center; margin-top:30px;">		  
				 <p> 用户：  
				  <label>
				  <input style="border:1px solid #000000; width:150px; height: 36px; border-radius:5px; background:#D8FCFC;" name="manager.managername" type="text" value="${sessionScope.managername }"/>
				  </label>
				  </p>
				  </br> 
				  <p>密码：
				    <label>
				    <input style="border:1px solid #000000; width:150px; height: 36px;  border-radius:3px; background:#D8FCFC;" name="manager.passwd" type="text" value="${sessionScope.passwd}"/></label>
				  </p>
				  </br>
				  <p>状态：  
				    <label>
				   		<select name="manager.mstate">
				    		<c:choose>
				    			<c:when test="${sessionScope.mstate eq 1}">
					    			<option value="1" selected="selected">
											可用
									</option>
									<option value="0">
											不可用
									</option>
				    			</c:when>
				    			<c:otherwise>
					    			<option value="1">
											可用
									</option>
									<option value="0" selected="selected">
											不可用
									</option>
								</c:otherwise>
				    		</c:choose>
				    	</select>
				    </label>
				  </p>
				  </br>
				  <p>
				    <label>
				    <input style=" border-radius:3px; height:33px; line-height:33px; width:50px;" type="submit" value="确定" style="padding: 10px;font-size: 12px"/>
				    <input style=" border-radius:3px; height:33px; line-height:33px; width:50px;" type="reset"  value="取消" style="padding: 10px;font-size: 12px"/>
				    <input type="hidden" name="manager.managerid" value="${sessionScope.managerid}" />
				    </label>
				  </p>
				</form>
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