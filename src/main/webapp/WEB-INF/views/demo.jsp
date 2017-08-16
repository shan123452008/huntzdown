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
          InputStream in = this.getClass().getResourceAsStream("/demoTest1.txt");
          OutputStream os = new FileOutputStream("/demoTest1.txt");

          String file = this.getClass().getResource("/") + "demoTest1.txt";
          FileWriter filewriter = new FileWriter(file, true);          
          byte[] buffer = new byte[1024];
          int bytesRead;
          //read from is to buffer
          while((bytesRead = in.read(buffer)) !=-1){
              os.write(buffer, 0, bytesRead);
          }
          in.close();
          //flush OutputStream to write any buffered data to file
          os.flush();
          os.close();
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

<div>check <%=request. getParameter("name")%></div>
<div>check1 <%=this.getClass().getResourceAsStream("/demoTest1.txt")%></div>
<div>check2 <%=System.getProperty("catalina.base")%></div>


<input type="button" id="button" onclick="checkValue()" value="click"/>
</body>
</html>
