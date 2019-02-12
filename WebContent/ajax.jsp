<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
  <script type="text/javascript">
  	function loadName() {
		var xmlHttp;
		if (window.XMLHttpRequest) {
			xmlHttp=new XMLHttpRequest();
		}else {
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlHttp.open("get","getAjaxName",true);
	}
  </script>
</head>
<body>
  <div style="text-align: center;">
    <div><input type="button" value="Ajax获取数据"/>&nbsp;&nbsp;<input type="text" id="name" name="name"/></div>
  </div>
</body>
</html>