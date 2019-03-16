<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>W3Cschool Internal Note</h1>
  <div>
    <b>To:</b> <span id="to"></span><br>
    <b>From:</b> <span id="from"></span><br>
    <b>Message:</b> <span id="message"></span>
  </div>
  
  <script>
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.open("GET","note.xml",false);
    xmlhttp.send();
    xmlDoc=xmlhttp.responseXML;
    
    document.getElementById("to").innerHTML=
    xmlDoc.getElementsByTagName("to")[0].childNodes[0].nodeValue;
    document.getElementById("from").innerHTML=
    xmlDoc.getElementsByTagName("from")[0].childNodes[0].nodeValue;
    document.getElementById("message").innerHTML=
    xmlDoc.getElementsByTagName("body")[0].childNodes[0].nodeValue;
  </script>
</body>
</html>