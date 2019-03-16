<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>HTML DOM innerHTML Property</title>
</head>
<body>
  <p id="demo" onclick="myFunction()">Click me to change my HTML
    content (innerHTML).</p>

  <script type="text/javascript">
  	function myFunction() {
			document.getElementById("demo").innerHTML = "Paragraph changed!";
			}
		</script>
</body>
</html>