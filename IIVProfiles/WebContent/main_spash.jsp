<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Welcome</title> 
<script type="text/javascript">

window.onload=timeout;
function timeout(){
window.setTimeout("redirect()",2000)}

function redirect(){
window.location="volunteer.do"
return}

</script>
</head>
<body>
<div align = "center" id="ima">
<img  src="assets/img/spash_image.png">
</div>
<body onload="timeout()">
</body>
</html>