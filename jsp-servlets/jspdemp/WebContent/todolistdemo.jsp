<%@ page import="java.util.*" %>
<html>
<body>
<!--  create html -->
<form action="todolistdemo.jsp">
	add new item: <input type="text" name="theItem">
	<br></br>
	<input type="submit" value="submit">
</form>
<!--  add to do items -->
<%
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	if(items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	String theItem = request.getParameter("theItem");
	if(theItem != null) {
		items.add(theItem);
	}
%>
<!--  display list items for session -->

<ol>
<% 
	for(String temp: items) {
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>
</body>
</html>