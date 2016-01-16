<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
        <meta charset="utf-8"/>
        <title>DekhoReview.com</title>


        <%@include file="includeCssJs.jsp" %> 
    </head>
	
	
	<body class="blog">
	
		<!-- HEADER -->
		 <jsp:include page="Header.jsp"/>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
				
				<!-- posts list -->
	        	<div id="posts-list" class="cf" style="width:400px;">        	
	        		
											  ${blogDetails}
					
        		</div>
        		<!-- ENDS posts list -->
			
				<!-- sidebar -->
        	<aside id="sidebar" style="margin-top: 0px;width: 364px;">
        		
        		<div id="posts-list" class="cf" style="width:400px;">        	
												${asideDiv}
]        		</div>
        		
        	</aside>
			<!-- ENDS sidebar -->
			
			
			</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		
		

        <!-- FOOTER -->
	  	 <%@include file="footer.jsp" %> 
	    <!-- ENDS FOOTER -->
		
	</body>
	
	
	
</html>