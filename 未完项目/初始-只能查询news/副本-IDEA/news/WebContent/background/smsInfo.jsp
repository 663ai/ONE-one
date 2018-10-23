<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
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
						<span class="fl text-normal">${sessionScope.managername }</span>
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
									<b class="sidebar-icon"><img src="Images/icon_message.png" width="16" height="16" /></b>
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
									<b class="sidebar-icon"><img src="Images/icon_author.png" width="16" height="16" /></b>
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
									<b class="sidebar-icon"><img src="Images/icon_message.png" width="16" height="16" /></b>
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
									<b class="sidebar-icon"><img src="../Images/icon_author.png" width="16" height="16" /></b>
									<span class="text-normal">图片管理</span>
								</a>
							</li>
						</ul>
					</div>
				
				</div>
			</div>
			<div class="view-product background-color">
			<div class="manage-head">
						<h6 class=" padding-left manage-head-con ">文章管理</h6>
					</div>
				<div class="padding-big background-color">	
				<div class="authority-content">
				<div>
				<a style="margin-right:75%" href="article_findbyid">添加文章</a>	
				栏目查看：
					<select name="article.canumber" onChange="change()" id="canumber">
						<c:forEach items="${calist}" var="item">
							<c:choose>
								<c:when test="${item.canumber eq 0}">
									<option value="${item.canumber }" selected="selected">
											${item.caname }
									</option>
								</c:when>
								<c:otherwise>
								<option value="${item.canumber}">
											${item.caname }
								</option>
							</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
						<div class="list-content show">
							<div class="offcial-table tr-border margin-big-top clearfix">
								<div class="tr-th clearfix">

									<div class="th w15">
										文章标题
									</div>
									<div class="th w40">
										文章内容
									</div>
									<div class="th w15">
										文章类别
									</div>
									<div class="th w10">
										创建人
									</div>
									<div class="th w10">
										创建时间
									</div>
									<div class="th w10">
										操作
									</div>
								</div>

								<c:forEach items="${articles}"  varStatus="i" var="item">
								<div class="tr clearfix border-bottom-none">

									<div class="th w15">
										 ${item.artitle }
									</div>
									<div class="th w40">
										 ${item.arcontent }
									</div>
									<div class="th w15">
										 ${item.canumber }
									</div>
									<div class="th w10">
										 ${item.aruser }
									</div>
									<div class="th w10">
										 ${item.artime }
									</div>
									<div class="th w10">
									    	<a href="article_findbyid?arid=${item.arid }" style="color: #FF3366">修改</a>
									    	<a href="article_delete?arid=${item.arid }"  onclick= 'return confirm( "确定要删除吗? ") ' style="color: #FF3366">删除</a>
									</div>
									<hr color="#CCCCCC" width="th w100"/>
								</div>
								 </c:forEach>
								 
							</div>
						</div>
						<div class="show-page padding-big-right">
							<div class="page">
								<div class="page">
									<ul class="offcial-page margin-top margin-big-right">
										<li>共<em class="margin-small-left margin-small-right">${count }</em>条数据</li>
										<li>每页显示<em class="margin-small-left margin-small-right">5</em>条</li>
										<a class="next disable" href="article_findall?page=${1 }">首页</a>
										<c:choose>
											<c:when test="${page<=1}">
							    				<li>上一页</li>
							    			</c:when>
							    			<c:otherwise>
							    				<li><a class="next disable" href="article_findall?page=${page-1 }">上一页</a></li>
											</c:otherwise>
										</c:choose>
										
										<c:choose>
											<c:when test="${page>=maxpage}">
							    			<li>下一页</li>
							    		</c:when>
							    			<c:otherwise>
							    				<li><a class="next disable" href="article_findall?page=${page+1 }">下一页</a></li>
							    			</c:otherwise>
										</c:choose>
										<a class="next disable" href="article_findall?page=${maxpage}">末页</a>
										<li><span class="fl">共<em class="margin-small-left margin-small-right">${maxpage }</em>页</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

					<div class="account-product margin-big-top clearfix">
						
						
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
		<script type="text/javascript">
			function change(){
				var canumber=document.getElementById('canumber').values;
				window.location.href="ArticleServlet?type=findpagemore&canumber="canumber;
			}
		</script>
	</body>

</html>