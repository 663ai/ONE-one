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
	<a href="static.action">
    <div class="header_center left">
        <h2><strong>统计管理界面</strong></h2>
        <p class="color_font"><small>You can query the statistical analysis interface of data, with low purpose.</small></p>
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
                <div class="div_any_title"><img src="img/title_1.png">进出车辆统计  </div>
                <p id="char1" class="p_chart"></p>
                <input type="hidden" id="vevew" value="${vevew}" />
                <input type="hidden" id="veved" value="${veved}" />
                <input type="hidden" id="vevex" value="${vevex}" />
                <div class="char_table"><div class="table_p table_p01">
                    <table>
                        <thead><tr>
                            <th>　　编号</th>
                            <th>　　　　　　　　用户名</th>
                            <th>　　　　里程数（km）</th>
                        </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${cars}" var="cars">
	                        	<tr><td>　　${cars.veid}</td><td>　　　　　　　　${cars.vename }</td><td>　　　　${cars.veh}</td></tr>
	                        </c:forEach>
                        </tbody>
                    </table>
                </div></div>

            </div>
            <div class="div_any_child01 left">
                <div class="div_any_title"><img src="img/title_2.png">网关状态统计 </div>
                <p id="char2" class="p_chart"></p>
                <input type="hidden" id="a" value="${a}" />
                 <input type="hidden" id="b" value="${b}" />
                  <input type="hidden" id="c" value="${c}" />
                   <input type="hidden" id="d" value="${d}" />
                    <input type="hidden" id="aa" value="${aa}" />
                     <input type="hidden" id="bb" value="${bb}" />
                      <input type="hidden" id="cc" value="${cc}" />
                       <input type="hidden" id="dd" value="${dd}" />
                <div class="char_table"><div class="table_p table_p01">
                    <table>
                        <thead><tr>
                            <th>A区</th>
                            <th>B区</th>
                            <th>C区</th>
                            <th>D区</th>
                        </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${safelimit}" var="safelimit">
	                       		<tr>
		                       		<td>
		                       			<c:choose>
		                       				<c:when test="${safelimit.saa eq '故障'}">
		                       					<b style="color:red;">故障</b>
		                       				</c:when>
		                       				<c:otherwise>
		                       					<b style="color:#0F0;">正常</b>
		                       				</c:otherwise>
		                       			</c:choose>
		                       		</td>
		                       		<td>
		                       			<c:choose>
		                       				<c:when test="${safelimit.sab eq '故障'}">
		                       					<b style="color:red;">故障</b>
		                       				</c:when>
		                       				<c:otherwise>
		                       					<b style="color:#0F0;">正常</b>
		                       				</c:otherwise>
		                       			</c:choose>
		                       		</td>
		                       		<td>
										<c:choose>
		                       				<c:when test="${safelimit.sac eq '故障'}">
		                       					<b style="color:red;">故障</b>
		                       				</c:when>
		                       				<c:otherwise>
		                       					<b style="color:#0F0;">正常</b>
		                       				</c:otherwise>
		                       			</c:choose>
									</td>
		                       		<td>
										<c:choose>
		                       				<c:when test="${safelimit.sad eq '故障'}">
		                       					<b style="color:red;">故障</b>
		                       				</c:when>
		                       				<c:otherwise>
		                       					<b style="color:#0F0;">正常</b>
		                       				</c:otherwise>
		                       			</c:choose>
									</td>
	                       		</tr>
	                        </c:forEach>
                        </tbody>
                    </table>
                </div></div>
            </div>
        </div>


        <div class="right div_any03">
            <div class="div_any_child01 left">
                <div class="div_any_title"><img src="img/title_4.png">缴费信息统计  </div>
                <p id="char3" class="p_chart"></p>
                <input type="hidden" id="fire" value="${fire}" />
                 <input type="hidden" id="water" value="${water}" />
                 <input type="hidden" id="ele" value="${ele}" />
                 <input type="hidden" id="net" value="${net}" />
                <div class="char_table"><div class="table_p table_p01">
                    <table>
                        <thead><tr>
                            <th>编号</th>
                            <th>　用户名</th>
                            <th>　车位</th>
                        </tr>
                        </thead>
                        <tbody>
	                        <c:forEach items="${five}" var="five">
	                        	<tr><td>${five.hid}</td><td>　${five.hname}</td><td>　${five.hcar}</td></tr>
	                       	</c:forEach>
                        </tbody>
                    </table>
                </div></div>
            </div>
            <div class="div_any_child01 left">
                <div class="div_any_title"><img src="img/title_5.png">安保信息统计 </div>
                <p id="char4" class="p_chart"></p>
                <input type="hidden" id="D" value="${D}" />
                <input type="hidden" id="X" value="${X}" />
                <input type="hidden" id="W" value="${W}" />
                <div class="char_table"><div class="table_p table_p01">
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