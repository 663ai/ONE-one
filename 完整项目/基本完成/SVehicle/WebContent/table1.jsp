<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>住户信息</title>
    <link rel="stylesheet" href="js/bstable/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="js/bstable/css/bootstrap-table.css"/>
    <link rel="stylesheet" href="css/base.css">
    <link href="css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/page.css" />
</head>
<style>
#page-left{
	position:absolute;
	font-size:16px;
	width:500px;
	right:1%;
	bottom:0.5%;
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
	<a href="house.action">
    <div class="header_center left">
        <h2><strong>用户信息界面</strong></h2>
        <p class="color_font"><small>An interface that can view information.</small></p>
    </div>
	</a>
    <div class="right nav text_right">
        <ul> <li><i class="nav_7"></i><a href="static.action">统计管理</a> </li>
            <li><i class="nav_8"></i><a href="message.jsp">信息录入</a> </li>
            <li><i class="nav_4"></i><a href="house.action">用户管理</a> </li>
        </ul>
    </div>
</header>
<div class="clear"></div>
<!--内容部分-->
<div class="con1 left" id="car_control">
    <div class="right  right_table">
		<form action="" method="post" > 
			<div class="table_find">
			　　　　区域：
						<select style="height:33px;">
							<option selected="selected">A区</option>
							<option>B区</option>
							<option>C区</option>
						</select>
     　　　　　　　　房间号：
						<select style="height:33px;">
							<option selected="selected">1-1001</option>
							<option>1-1002</option>
							<option>1-1003</option>
						</select>
   　　　　　　　　　搜索：
						<form action="" method="post"  >
							<input  style="height:33px; width:200px; border:1px solid #CCCCCC; border-radius:3px;" type="text" name="text" placeholder="　请输入业主姓名"/>
							<input  type="submit" name="submit1" value="确认" style=" color:#FFFFFF; border-radius:5px; height:33px; width:50px; background:#FF9900;"/>
						</form>
					
			</div>
			<div class="table_div_div" style=" margin:0.5%; text-align:center; line-height:35px;"> 
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>编号</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>业主名</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>家庭人数</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>电话号码</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>水费</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>电费</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>天然气</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:11%; height:35px; float:left;"><b>宽带</b></div>
				<div style="border:2px #FFFAFA solid; background-color:#FFFFFF; color:#000000; width:12%; height:35px; float:left;"><b>物业费</b></div>
			</div>
			<c:forEach items="${all}" var="all">
				<div class="table_div_div" style=" margin:0.5%; text-align:center; line-height:35px;"> 
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">${all.hid}</div>
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">${all.hname}</div>
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">${all.hnumber}</div>
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">${all.hphone}</div>
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">
						<c:choose>
		                   <c:when test="${all.hwater eq '未缴'}">
		                       <b style="color:red;">未缴</b>
		                   </c:when>
		                   <c:otherwise>
		                       <b style="color:#0F0;">已缴</b>
		                   </c:otherwise>
		                </c:choose>
					</div>
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">
						<c:choose>
		                   <c:when test="${all.hele eq '未缴'}">
		                       <b style="color:red;">未缴</b>
		                   </c:when>
		                   <c:otherwise>
		                       <b style="color:#0F0;">已缴</b>
		                   </c:otherwise>
		                </c:choose>
					</div>
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">
						<c:choose>
		                   <c:when test="${all.hfire eq '未缴'}">
		                       <b style="color:red;">未缴</b>
		                   </c:when>
		                   <c:otherwise>
		                       <b style="color:#0F0;">已缴</b>
		                   </c:otherwise>
		                </c:choose>
					</div>
					<div style="border:1px #79D3DB solid; width:11%; height:35px; float:left;">
						<c:choose>
		                   <c:when test="${all.hnet eq '未缴'}">
		                       <b style="color:red;">未缴</b>
		                   </c:when>
		                   <c:otherwise>
		                       <b style="color:#0F0;">已缴</b>
		                   </c:otherwise>
		                </c:choose>
					</div>
					<div style="border:1px #79D3DB solid; width:12%; height:35px; float:left;">
						<c:choose>
		                   <c:when test="${all.hcost eq '未缴'}">
		                       <b style="color:red;">未缴</b>
		                   </c:when>
		                   <c:otherwise>
		                       <b style="color:#0F0;">已缴</b>
		                   </c:otherwise>
		                </c:choose>
					</div>
				</div>
			</c:forEach>
			
			
			
		</form>
		<div id="page-left">
			<div class="show-page padding-big-right">
				<div class="page">
					<ul class="offcial-page margin-top margin-big-right">
						<li>共<em class="margin-small-left margin-small-right">${count }</em>条数据</li>
						<li>每页显示<em class="margin-small-left margin-small-right">12</em>条</li>
						<li><a class="next disable" href="house.action?page=${1}">首页</a></li>
						<c:choose>
							<c:when test="${page<=1}">
							    　<li>上一页</li>
							</c:when>
							<c:otherwise>
							    　<li><a class="next disable" href="house.action?page=${page-1 }">上一页</a></li>
							</c:otherwise>
						</c:choose>
										
						<c:choose>
							<c:when test="${page>=maxpage}">
							    <li>下一页</li>
							</c:when>
							<c:otherwise>
							    <li><a class="next disable" href="house.action?page=${page+1 }">下一页</a></li>
							</c:otherwise>
						</c:choose>
						<li><a class="next disable" href="house.action?page=${maxpage}">末页</a></li>
						<li><span class="fl">共<em class="margin-small-left margin-small-right">${maxpage }</em>页</span></li>
					</ul>
				</div>
			</div>
		</div>
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