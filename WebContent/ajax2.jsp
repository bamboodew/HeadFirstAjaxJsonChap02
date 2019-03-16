<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
  <script type="text/javascript">
  	function loadXMLDoc() {
		var xmlhttp;
		if (window.XMLHttpRequest) { // 检测window对象是否有XMLHttpRequest属性
			xmlhttp=new XMLHttpRequest(); // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		}else {
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); // IE6, IE5 浏览器执行代码
		}
		xmlhttp.onreadystatechange=function(){ // 设置onreadystatechange的回调函数
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				// 通过readyState === 4判断请求是否完成;再根据status === 200判断是否是一个成功的响应
				document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
				// 如果来自服务器的响应并非 XML，请使用 responseText 属性。
			}
		}
		/*XMLHttpRequest对象的open()方法有3个参数，
		第一个参数指定是GET还是POST，
		第二个参数指定URL地址，
		第三个参数指定是否使用异步，默认是true，所以不用写。
		注意，千万不要把第三个参数指定为false，否则浏览器将停止响应，直到AJAX请求完成。
		如果这个请求耗时10秒，那么10秒内你会发现浏览器处于“假死”状态。*/
		xmlhttp.open("GET","ajax_info.txt",true);
		/*调用send()方法才真正发送请求;
		GET请求不需要参数，POST请求需要把body部分以字符串或者FormData对象传进去。*/
		xmlhttp.send();
	}
  </script>
</head>

<body>
  <div id="myDiv"><h2>使用 AJAX 修改该文本内容</h2></div>
  <button type="button" onclick="loadXMLDoc()">修改内容</button>
</body>
</html>