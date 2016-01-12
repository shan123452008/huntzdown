<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includeCssJs.jsp" %> 
<!doctype html> 
<html>

    <head>
        
         <link rel="stylesheet" type="text/css" href="css/fornewjsp.css" />
        <link rel="stylesheet" type="text/css" href="css/newlook.css" />
        <meta charset="utf-8"/>
        <title>DekhoReview.com</title>

        <style type="text/css">
.classname {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );
	background:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf');
	background-color:#ededed;
	-webkit-border-top-left-radius:6px;
	-moz-border-radius-topleft:6px;
	border-top-left-radius:6px;
	-webkit-border-top-right-radius:6px;
	-moz-border-radius-topright:6px;
	border-top-right-radius:6px;
	-webkit-border-bottom-right-radius:6px;
	-moz-border-radius-bottomright:6px;
	border-bottom-right-radius:6px;
	-webkit-border-bottom-left-radius:6px;
	-moz-border-radius-bottomleft:6px;
	border-bottom-left-radius:6px;
	text-indent:0;
	border:1px solid #dcdcdc;
	display:inline-block;
	color:#777777;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	font-style:normal;
	height:28px;
	line-height:28px;
	width:200px;
	text-decoration:none;
	text-align:center;
	text-shadow:1px 1px 0px #ffffff;
}
.classname:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );
	background:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed');
	background-color:#dfdfdf;
}.classname:active {
	position:relative;
	top:1px;
}</style>


        <script type="text/javascript">
            function image1(img){
                alert("image >>>"+img);
            }
            function divhide(){
              
                document.getElementById("test").style.visibility='hidden';
                
            }
            function getModelList(restroId)
            {
                 
                jQuery.ajax({
                        
                    url:'getRestroName.do?restroId='+restroId,
                    dataType:'text',
                    success: function(data)
                    {
                       document.getElementById("model").innerHTML = data; 
                    }
                }).responseText;
            }
            function search()
            {
                var city=document.getElementById("company").value;
                var name=document.getElementById("model").value;
              //  alert(city  +'  '+name);
                jQuery.ajax({
                        
                    url:'restroSearch.do?city='+city +'&name='+name,
                    dataType:'text',
                    success: function(data)
                    {
                      //  alert('data'+data);
                       document.getElementById("restrosearch").innerHTML = data; 
                    }
                }).responseText;
            }
        </script>
       
    </head>


    <body>

        <!-- HEADER -->
         <jsp:include page="Header.jsp"/>
        <!-- ENDS HEADER -->

        <!-- MAIN -->
        <div id="main">
               <jsp:include page="Test.jsp"/>&nbsp;
            <div class="wrapper cf">
                
                <ul class="photo-box-list clearfix" data-component-bound="true" style="border:0px solid black;">
                    ${HighRatingRestro}
                </ul>
                <!--Related-projects ends here-->
            </div><!-- ENDS WRAPPER -->

        </div>
        <!-- ENDS MAIN -->


    <!-- FOOTER -->
    <footer>
        <div class="wrapper cf">

            <!-- widgets -->
            <ul  class="widget-cols cf">
                <li class="first-col">

                </li>

            </ul>


        </div>
    </footer>
    <!-- ENDS FOOTER -->

</body>



</html>