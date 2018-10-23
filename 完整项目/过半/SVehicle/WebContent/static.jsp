<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>统计分析界面</title>
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
<div class="con left">
    <!--选择时间-->
    <!--数据总概-->
    <div class="stiatic_top_con left">

<table>
    <tr>
        <td class="labe_td">总共车位：</td>
        <td>500个</td>
        <td class="labe_td">剩余车位：</td>
        <td class="org">${make }个</td>
    </tr>
    <tr>
        <td class="labe_td">家用动车：</td>
        <td class="red">500辆</td>
        <td class="labe_td">新进车辆：</td>
        <td>${news}辆</td>
    </tr>
</table>

    </div>
    <!--统计分析图-->
    <div class="div_any">
        <div class="right div_any03">
            <div class="div_any_child01 left">
                <div class="div_any_title"><img src="img/title_1.png">车辆类型统计 </div>
                <p id="char1" class="p_chart"></p>
                <div class="char_table"><div class="table_p table_p01">
                    <table>
                        <thead><tr>
                            <th>排名</th>
                            <th>车牌号</th>
                            <th>里程数（km）</th>
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
                </div></div>

            </div>
            <div class="div_any_child01 left">
                <div class="div_any_title"><img src="img/title_2.png">车辆状态统计 </div>
                <p id="char2" class="p_chart"></p>
                <div class="char_table"><div class="table_p table_p01">
                    <table>
                        <thead><tr>
                            <th>排名</th>
                            <th>车牌号</th>
                            <th>里程数（km）</th>
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
                </div></div>
            </div>
        </div>


        <div class="right div_any03">
            <div class="div_any_child01 left">
                <div class="div_any_title"><img src="img/title_4.png">车辆行驶统计 </div>
                <p id="char3" class="p_chart"></p>
                <div class="char_table"><div class="table_p table_p01">
                    <table>
                        <thead><tr>
                            <th>排名</th>
                            <th>车牌号</th>
                            <th>里程数（km）</th>
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
                </div></div>
            </div>
            <div class="div_any_child01 left">
                <div class="div_any_title"><img src="img/title_5.png">车辆报警统计 </div>
                <p id="char4" class="p_chart"></p>
                <div class="char_table"><div class="table_p table_p01">
                    <table>
                        <thead><tr>
                            <th>排名</th>
                            <th>车牌号</th>
                            <th>里程数（km）</th>
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
                </div></div>
            </div>
        </div>


    </div>


</div>
<script src="js/jquery/jQuery-2.2.0.min.js"></script>
<script src="js/echarts-all.js"></script>
<script src="js/base.js"></script>
<script src="js/static.js"></script>

</body>
</html>