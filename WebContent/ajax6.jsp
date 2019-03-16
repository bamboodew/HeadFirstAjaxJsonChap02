<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>HTML DOM innerHTML Property</title>
</head>

<body>
  <p id="myP">I am a paragraph.</p>
  <p>Click the button get the HTML content of the p element.</p>
  <button onclick="myFunction()">Try it</button>
  <p id="demo"></p>
  
  <script type="text/javascript">
  	function myFunction() {
  		var x=document.getElementById("myP").innerHTML;
		document.getElementById("demo").innerHTML=x;
		alert(document.getElementById("demo").innerHTML);
	}
  </script>
</body>
</html>