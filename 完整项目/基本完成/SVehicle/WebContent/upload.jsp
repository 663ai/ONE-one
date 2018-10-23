<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>上传成功</title>
<script type="text/javascript"> 
	function countDown(secs,surl){ 
		 //alert(surl); 
		 var jumpTo = document.getElementById('jumpTo');
		 jumpTo.innerHTML=secs; 
		 if(--secs>0){ 
		 	setTimeout("countDown("+secs+",'"+surl+"')",1000); 
		 }else{  
		 	location.href=surl; 
		 } 
	} 
</script>
</head>
<body>
	<span id="jumpTo">5</span>秒后自动自动返回，文件上传位置为桌面，文件名为今天的日期（格式：年月日）
	<script type="text/javascript">
		countDown(5,'http://localhost:8080/SVehicle/message.jsp');
	</script> 
</body>
</html>