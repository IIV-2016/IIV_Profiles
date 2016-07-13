<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="model.domain.NoteBean" %> 
<%
 	NoteBean [] list = (NoteBean[])request.getAttribute("list");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>WebTest</title>
	</head>
	<body>
		<p>create</p>
		<form method="post" action="<%=request.getContextPath()%>/note.do">
			<input type="hidden" name="command" value="create" > 
			title <input type="text" name="title"> 
			content <input type="text" name="content"> 
			<input type="submit" value="create">
		</form>
		<br><br>
		<a href="<%=request.getContextPath()%>/note.do?command=read">read</a><br>
		<%
			if(list == null || list.length == 0){
		%>
		<p>empty</p>
		<%
			}else{
				NoteBean note = null;
				for(int i = 0; i <list.length ; i++){
					 note = list[i];
		%>
					<%=note.getNoteNum()%>
					<%=note.getTitle()%>
					<%=note.getContent()%>
		<br>
		<%
				} 
			}
		%>
		<br><br>
		1st Note Title => 1 update
		<a href="<%=request.getContextPath()%>/note.do?command=update">update</a><br><br>
		<form method="post" action="<%=request.getContextPath()%>/note.do">
			<input type="hidden" name="command" value="delete" >
			Note Num <input type="text" name="num"> 
			<input type="submit" value="delete">
		</form>
	</body>
</html>