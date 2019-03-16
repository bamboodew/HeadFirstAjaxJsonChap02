<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>responseXML属性</title>
  <script type="text/javascript">
  	function loadXMLDoc() {
  
  		var xmlhttp;
  		var txt, x, i;
  
  		if (window.XMLHttpRequest) {
  			// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
  			xmlhttp = new XMLHttpRequest();
  		} else {
  			// IE6, IE5 浏览器执行代码
  			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  		}
  		
  		xmlhttp.onreadystatechange = function() {
  			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
  				xmlDoc = xmlhttp.responseXML;
  				txt = ""; // 初始化为空字符串
  				x = xmlDoc.getElementsByTagName("ARTIST"); // x是歌手数组
  				for (i = 0; i < x.length; i++) {
  					txt += x[i].childNodes[0].nodeValue + "<br>"; // 将数组元素串起来
  				}
  				document.getElementById("myDiv").innerHTML = txt; // 将字符串转化为HTML格式的文档
  			}
  		}
  		
  		xmlhttp.open("GET", "cd_catalog.xml", true);
  		xmlhttp.send();
  	}
  </script>
</head>

<body>
  <h2>我收藏的CD：</h2>
  <div id="myDiv"></div>
  <button type="button" onclick="loadXMLDoc()">获取我的CD</button>
</body>
</html>