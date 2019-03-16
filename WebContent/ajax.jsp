<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
  <script type="text/javascript">
  	function loadName() {
		var xmlHttp;
		/* 通过检测window对象是否有XMLHttpRequest属性来确定浏览器是否支持标准的XMLHttpRequest。
		注意，不要根据浏览器的navigator.userAgent来检测浏览器是否支持某个JavaScript特性，
		一是因为这个字符串本身可以伪造，二是通过IE版本判断JavaScript特性将非常复杂。*/
		
		if (window.XMLHttpRequest) { // 检测window对象是否有XMLHttpRequest属性
			xmlHttp=new XMLHttpRequest();
		}else {
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlHttp.open("get","getAjaxName?name=jack&age=11",true);
		// 请求方式、请求地址
		// xmlHttp.open("post","getAjaxName?name=jack&age=11",true);

		xmlHttp.send(); // 发送请求
		
	}
  </script>
</head>
<body>
  <div style="text-align: center;">
    <div><input type="button" value="Ajax获取数据"/>&nbsp;&nbsp;<input type="text" id="name" name="name"/></div>
  </div>
</body>
</html>