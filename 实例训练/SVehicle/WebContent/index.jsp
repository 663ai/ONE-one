<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="java.text.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
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
            <li class="nav_active"><i class="nav_1"></i><a href="index.html">数据概览</a> </li>
            <li><i class="nav_2"></i><a href="carContrl.jsp">监控管理</a> </li>
            <li><i class="nav_3"></i><a href="map.jsp">安保管理</a> </li>



            </ul>
    </div>
	<a href="index.html">
    <div class="header_center left">
        <h2><strong>xx区智慧旅游综合服务平台</strong></h2>
        <p class="color_font"><small>Comprehensive service platform for smart tourism</small></p>
    </div>
	</a>
    <div class="right nav text_right">
        <ul> <li><i class="nav_7"></i><a href="static.jsp">车辆管理</a> </li>
            <li><i class="nav_8"></i><a href="message.jsp">网关管理</a> </li>
            <li><i class="nav_4"></i><a href="table1.jsp">住户管理</a> </li>
        </ul>
    </div>
    <!--<nav class="left nav">-->
        <!--<ul>-->
            <!--<li class="nav_active"><i class="nav_1"></i><a href="index.html">数据概览</a> </li>-->
            <!--<li><i class="nav_2"></i><a href="carContrl.html">车辆监控</a> </li>-->
            <!--<li><i class="nav_3"></i><a href="map.html">地图界面</a> </li>-->
            <!--<li><i class="nav_4"></i><a href="javascript:void(0)">表格界面</a><ul class="li_ul">-->
                <!--<li><a href="table1.html">表格一</a> </li>-->
                <!--<li><a href="table2.html">表格二</a> </li>-->

            <!--</ul> </li>-->
            <!--&lt;!&ndash;<li><i class="nav_5"></i><a href="#">车载视频</a> </li>&ndash;&gt;-->
            <!--&lt;!&ndash;<li><i class="nav_6"></i><a href="#">视频监控</a> </li>&ndash;&gt;-->
            <!--<li><i class="nav_7"></i><a href="static.html">查询统计</a> </li>-->
            <!--<li><i class="nav_8"></i><a href="message.html">信息录入</a> </li>-->
        <!--</ul>-->
    <!--</nav>-->
</header>
<!--内容部分-->
<div class="con left">
    <!--选择时间-->
    <div class="select_time">
        <div class="static_top left">
            <i></i><span>总体概况</span>
        </div>
    </div>
    <div class="select_time" style=" float: right; margin-top:-63px; margin-right:5%;">
        <div class="static_top left">
            <span>
            	${requestScope.manager}
            </span>
            <span style="padding-left:25%;">|　　</span>
            <a href="login.jsp" style="color: 00FF00;">退出</a>
        </div>
    </div>
    <!--数据总概-->
    <div class="con_div">
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="img/info_1.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>车辆总数(辆)</p>
                    <p><!-- <s:property value="#session.vehiTotal"/> --></p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="img/info_2.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>车辆使用数(辆)</p>
                    <p><!-- <s:property value="#session.vehiIn"/> --></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="img/info_4.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>行驶里程总数(km)</p>
                    <p class="sky">12356</p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="img/info_5.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>行驶里程平均数(km)</p>
                    <p class="sky">12356</p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">

            <div class="con_div_text01 left">
                <img src="img/info_6.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>行驶时长总数(s)</p>
                    <p class="org">12356</p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="img/info_7.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>行驶ihfj平均数(s)</p>
                    <p class="org">12356</p>
                </div>
            </div>
        </div>
    </div>
    <!--统计分析图-->
    <div class="div_any">
        <div class="left div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_1.png">车辆类型统计 </div>
                <p id="char1" class="p_chart">
                	<input type="hidden" id="vevew" value="${vevew}" />
                	<input type="hidden" id="veved" value="${veved}" />
                	<input type="hidden" id="vevex" value="${vevex}" />
                </p>
            </div>
            
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_2.png">车辆状态统计 </div>
                <p id="char2" class="p_chart"></p>
            </div>
        </div>
        <div class="div_any02 left ">
            <div class="div_any_child div_height">
                <div class="div_any_title any_title_width"><img src="img/title_3.png">车辆行驶地图 </div>
                <div id="map_div"></div>
            </div>
        </div>
        <div class="right div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_4.png">车辆行驶统计 </div>
                <p id="char3" class="p_chart"></p>
            </div>
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_5.png">车辆报警统计 </div>
                <p id="char4" class="p_chart"></p>
            </div>
        </div>
    </div>
    <!--分析表格-->
    <div class="div_table">
        <div class="left div_table_box">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_4.png">行驶里程排名前5位 </div>
                <div class="table_p">
                    <table>
               <thead><tr>
                   <th>排名</th>
                   <th>车牌号</th>
                   <th>里程数（km）</th>
               </tr>
               </thead>
                <tbody>
 				<c:forEach items="${veh}" var="rank" step="1" varStatus="status">
                <tr><td><c:out value="${status.count}" /></td><td>${rank.venum}</td><td>${rank.veh}</td></tr>
                </c:forEach>
                </tbody>
            </table>
                </div>

            </div>
        </div>
        <div class="left div_table_box">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_4.png">行驶次数车辆前5位 </div>
                <div class="table_p">
                    <table>
                        <thead><tr>
                            <th>排名</th>
                            <th>车牌号</th>
                            <th>次数（km）</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="left div_table_box">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_4.png">行驶最高时速前5位 </div>
                <div class="table_p">
                    <table>
                        <thead><tr>
                            <th>排名</th>
                            <th>车牌号</th>
                            <th>时速（km）</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="left div_table_box">
            <div class="div_any_child">
                <div class="div_any_title"><img src="img/title_4.png">行驶时长排名前5位 </div>
                <div class="table_p">
                    <table>
                        <thead><tr>
                            <th>排名</th>
                            <th>车牌号</th>
                            <th>时长（km）</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        <tr><td>1</td><td>京A12345</td><td>134.2</td></tr>
                        </tbody>
                    </table>
                </div>
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