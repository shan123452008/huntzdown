<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.io.*" %>
<html>
<head>
	<title>Home</title>

</script>
</head>
<body>
<h1>
Hello first name -><b><%= request.getParameter("name") %>   surname -></b><%= request.getParameter("surname") %></b>
</h1>

<P>  The time on the server is ${serverTime}. </P>


<%
          String name = request.getParameter("name");
          String text = request.getParameter("surname");
          String check = application.getRealPath("/");
          String file = application.getRealPath("/") + "demoTest1.txt";
          FileWriter filewriter = new FileWriter(file, true);
          filewriter.write("<B>Name: </B>" + name + "<BR>");
          filewriter.write("<B>Surname: </B><BR>");
          filewriter.write(text + "<BR><BR>");
          filewriter.close();
        %>


<%
    if (request.getParameter("name") == null) {
        out.println("Please enter your name.");
    } else {
        out.println("Hello <b>"+request. getParameter("name")+"</b>!");
    }
%>

<div>check <%=check%></div>
<input type="button" id="button" onclick="checkValue()" value="click"/>
</body>
</html>
