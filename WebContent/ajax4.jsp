<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>onreadystatechange事件 </title>
  <script type="text/javascript">
	var xmlhttp; // 先定义

  	function loadXMLDoc(url, cfunc) { // 地址和回调函数是一种以参数形式传递给另一个函数的函数。
  		if (window.XMLHttpRequest) {
  			// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
  			xmlhttp = new XMLHttpRequest();
  		} else {
  			// IE6, IE5 浏览器执行代码
  			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  		}
  
  		xmlhttp.onreadystatechange = cfunc;
  		xmlhttp.open("GET", url, true);
  		xmlhttp.send();
  	}
  
  	function myFunction() {
  		loadXMLDoc(
  				"ajax_info.txt",
  				function() {
  					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
  						document.getElementById("myDiv").innerHTML = xmlhttp.responseText;
  					}
  				});
  	}
  </script>
</head>

<body>
  <div id="myDiv"><h2>使用 AJAX 修改文本内容</h2></div>
  <button type="button" onclick="myFunction()">修改内容</button>
</body>
</html>