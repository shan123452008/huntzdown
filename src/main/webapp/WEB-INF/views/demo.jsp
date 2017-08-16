<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	
</script>
</head>
<body>
<h1>
Hello <b><%= request.getParameter("name") %></b>!
</h1>

<P>  The time on the server is  </P>

<%
    if (request.getParameter("name") == null) {
        out.println("Please enter your name.");
    } else {
        out.println("Hello <b>"+request. getParameter("name")+"</b>!");
    }
%>

<input type="button" id="button" onclick="checkValue()" value="click"/>
</body>
</html>
