<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>安保管理</title>
    <link rel="stylesheet" href="js/bstable/css/bootstrap.min.css">
    <link href="css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="js/jQueryPage/src/jquery.page.css">
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
	<a href="map.action">
    <div class="header_center left">
        <h2><strong>安保管理</strong></h2>
        <p class="color_font"><small>Data security system can be queried, but the purpose is low.</small></p>
    </div>
	</a>
    <div class="right nav text_right">
        <ul> <li><i class="nav_7"></i><a href="static.action">统计管理</a> </li>
            <li><i class="nav_8"></i><a href="message.jsp">信息录入</a> </li>
            <li><i class="nav_4"></i><a href="house.action">用户管理</a> </li>
        </ul>
    </div>
</header>
<!--内容部分-->
<div class="map_con left" id="car_control">
    <!--you侧地图-->
  <div class="right map_right ">
      <div  id="map_box"></div>
	  <div class="table_div_div" style="color:#FFFFFF; margin:0 0.5% 1.5% 0.5%; text-align:center; line-height:55px;"> 
			<div style="border:1px #65CDDC solid; width:100%; height:55px; float:left;">安保</div>
	  </div>
	  <div class="table_div_div" style="color:#FFFFFF; margin:0.5%; text-align:center; line-height:55px;"> 
			<div style="border:1px #65CDDC solid; width:20%; height:55px; float:left;">消防</div>
			<div style="border:1px #65CDDC solid; width:20%; height:55px; float:left;">水</div>
			<div style="border:1px #65CDDC solid; width:20%; height:55px; float:left;">电</div>
			<div style="border:1px #65CDDC solid; width:20%; height:55px; float:left;">天然气</div>
			<div style="border:1px #65CDDC solid; width:20%; height:55px; float:left;">光纤</div>
	  </div>
	  <div class="table_div_div" style="color:#FFFFFF; margin:1.5% 0.5% 1.5% 0.5%; text-align:center; line-height:55px;"> 
			<div style="border:1px #65CDDC solid; width:100%; height:55px; float:left;">监控</div>
	  </div>
	  <div class="table_div_div" style="color:#FFFFFF; margin:1.5% 0.5% 1.5% 0.5%; text-align:center; line-height:55px;"> 
			<div style="border:1px #65CDDC solid; width:50%; height:55px; float:left;">物业</div>
			<div style="border:1px #65CDDC solid; width:50%; height:55px; float:left;">业主委员会</div>
	  </div>
	  <div class="table_div_div" style="color:#FFFFFF; margin:1.5% 0.5% 1.5% 0.5%; text-align:center; line-height:350px;"> 
			<div style="border:1px #65CDDC solid; width:100%; height:350px; float:left;">业主</div>
	  </div>
  </div>

    <!--zuo侧功能栏-->
    <div class="left map_left">
        <div class="map_right_top">
            <ul><li class="li_active">值班信息</li>
                <li>分类搜索</li>
                <li>安保信息</li></ul>
        </div>
        <div class="map_con">
            <div class="map_con_div" style="display: block;" >
                <div class="map_chart">
                    <p id="char1" class="p_chart"></p>
                    <input type="hidden" id="D" value="${D}" />
                    <input type="hidden" id="X" value="${X}" />
                    <input type="hidden" id="W" value="${W}" />
						<div class="table_p">
							<table>
								<thead>
									<tr>
										<th>　排名</th>
	                            		<th>　职员名</th>
	                            		<th>值班时长</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${limit }" var="limits">
									<tr><td>　${limits.sid }</td><td>　${limits.sname }</td><td>　${limits.slong }</td></tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
                </div>
                
            </div>
            <div class="map_con_div" >
                <div class="map_work">
                    <ul>
                        <li>
                            <div class="img_div img_div01"></div>
                            <div class="img_div_text">A区监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div01"></div>
                            <div class="img_div_text">B区监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div01"></div>
                            <div class="img_div_text">C区监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div01"></div>
                            <div class="img_div_text">D区监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div01"></div>
                            <div class="img_div_text">E区监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div01"></div>
                            <div class="img_div_text">F区监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div01"></div>
                            <div class="img_div_text">G区监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div02"></div>
                            <div class="img_div_text">正门监控</div>
                        </li>
                        <li>
                            <div class="img_div img_div02"></div>
                            <div class="img_div_text">后门监控</div>
                        </li>
                    </ul>
					
                    <div class="map_resList">
                        <p class="set_list"><i class="list_i"></i> 查询结果：<span class="right"><i class="glyphicon glyphicon-backward back_i"></i><a href="javascript:void(0)" onClick="back()">返回 </a> </span></p> 
                        <video class="map_resList_vedio" src="vedio/123.mp4" autoplay="autoplay" muted="true" ></video>
						<video class="map_resList_vedio" src="vedio/123.mp4" autoplay="autoplay" muted="true"></video>
						<video class="map_resList_vedio" src="vedio/123.mp4" autoplay="autoplay" muted="true"></video>
                    </div>
                </div>
            </div>
            <div class="map_con_div">
                <div class=" bow_shadow">
                    <p>
                        <input type="text" placeholder="安保查询" class="carNo_input"><input type="button" class="find_but"/>
                    </p>
					<div class="table_b">
							<table>
								<thead>
									<tr>
										<th>编号</th>
										<th>职员名</th>
										<th>性别</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${all }" var="all">
									<tr><td>${all.sid }</td><td>${all.sname }</td><td>${all.ssex }</td></tr>
								</c:forEach>
								</tbody>
							</table>
					</div>
                </div>
            </div>

        </div>

    </div>

</div>
<script src="js/jquery/jQuery-2.2.0.min.js"></script>
<script src="js/base.js"></script>
<script src="js/echarts-all.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=5ieMMexWmzB9jivTq6oCRX9j&callback"></script>
<script src="js/jQueryPage/src/jquery.page.js"></script>
<script src="js/map_control.js"></script>
<script src="js/ztree/jquery.ztree.all-3.5.js"></script>
<script src="js/listTree.js"></script>
</body>
</html>