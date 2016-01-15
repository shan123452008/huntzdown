<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*,java.io.*,javax.imageio.ImageIO,java.awt.image.BufferedImage" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">

    <head>
        <meta charset="utf-8"/>
        <title>huntzdown.com</title>
        <%@include file="includeCssJs.jsp" %> 
        <script type="text/javascript">
        function searchVal(){
        	if(event.keyCode == 13) {
        	var value=document.getElementById("searchTab").value;
        	window.location.href = "search.do?search="+value;
        	
            }
        	
        }
        </script>
       
      
    </head>
    <body class="single">

        <jsp:include page="Header.jsp"/>
        <!-- ENDS HEADER -->

        <!-- MAIN -->
        <div id="main">
            <div class="wrapper cf">


                <div id="posts-list" class="cf">        	


                    <!-- Standard -->
                    <!-- slider -->
                    <div class="project-slider">
                        <div class="flexslider">
                            <ul class="slides">
                              
                               
                                
                                <%
									 Class.forName("com.mysql.jdbc.Driver");
									 Connection con = DriverManager.getConnection("jdbc:mysql://127.7.201.130:3306/huntzdown","admin1ucVL7Z", "xRWsL2hKVAXT");
									Statement st = con.createStatement();
									
									ResultSet i = st.executeQuery("select * from huntzdown.blog");
								
									%>
									
									 <%
									 while(i.next()){
										 String path =  i.getString(3);
										 String filename = i.getString(1);		

									   %>
                                <li><a href="blogInfo?pictureId=<%=filename%>"><img id="fixed" src="<%=path%>" style=" width: 639px; height: 400px; "/></a></li>
									<%  }%>
                               
                               
  
                                


                            </ul>
                        </div>
                    </div>
                    <!-- ENDS slider -->
                    <!-- ENDS  Standard -->

                    <!--Latest Reviews-->
                    <div id="comments-wrap">
                        <h4 class="heading">LATEST REVIEWS</h4>

                        <ol class="commentlist">


                            <li class="comment even thread-even depth-1" id="li-comment-1">

                                <div id="comment-1" class="comment-body cf">

                                    ${restroDetails}            

                                </div>

                            </li>
                            


                        </ol>
                    </div>


                    <!--Video start-->
                    <div id="comments-wrap">
                        <h4 class="heading">LATEST VIDEOS</h4>

                        <ol class="commentlist">


                            <li class="comment even thread-even depth-1" id="li-comment-1">

                                <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/FZLDoF7VfaQ" allowfullscreen="allowfullscreen" width="350"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Fitoor Official Trailer</span>


                                </div>

                                <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/HZRXsnqcbEs" allowfullscreen="allowfullscreen" width="350"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Saala Khadoos Official Trailer | Releasing Jan. 29
                                    </span>



                                </div>
                                
                                
                                 <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/Xwyb7fT65Ac" allowfullscreen="allowfullscreen" width="350"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Airlift Teaser | Akshay Kumar | Nimrat Kaur</span>



                                </div>
                                
                                 <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/vKziLmjSVB4" allowfullscreen="allowfullscreen" width="350"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Teaser- Introducing Gaurav | Shah Rukh Khan </span>



                                </div>
                            </li>



                        </ol>
                    </div>
                    <!--Video End-->

                   
                    
                    <!--Upcoming new mobiles  -->
                     <%-- <div id="comments-wrap">
                        <h4 class="heading">Gallery</h4>

                        <ol class="commentlist">


                            <li class="comment even thread-even depth-1" id="li-comment-1">
                             <c:forEach  var="mobile" items="${getUpcomingMobile}" varStatus="count">
									  
									   <c:choose>
									   <c:when test="${count.index %2 == 0 }">
									   <div id="comment-1" class="comment-body cf">
                                    <div style="float: left; width: 300px; margin-bottom: 10px; padding: 0px 5px 0px 0px; ">
                                        
                                        <div>
                                        <a href="mobilePage.do?mobId=${mobile.id}"><img src="<%=request.getContextPath()%>/resources/imagesPic/${mobile.path1}" width="100%" height="30%" style="height: 200px;width: 300px;"/></a></div>
                                        <a href="mobilePage.do?mobId=${mobile.id}"> <h4>${mobile.mobile}</h4></a>
                                         <a href="mobilePage.do?mobId=${mobile.id}"><div>${mobile.companyName}</div></a>

                                    </div>
									   </c:when>
									   <c:otherwise>
									 <div>
                                        <a href="mobilePage.do?mobId=${mobile.id}"><img src="<%=request.getContextPath()%>/resources/imagesPic/${mobile.path1}" width="100%" height="30%" style="height: 200px;width: 300px;"/></a></div>
                                        <a href="mobilePage.do?mobId=${mobile.id}"> <h4>${mobile.mobile}</h4></a>
                                         <a href="mobilePage.do?mobId=${mobile.id}"><div>${mobile.companyName}</div></a>


                                    </div>
                                
									   </c:otherwise>
									   </c:choose>
									</c:forEach>

                            </li>



                        </ol>
                    </div> --%>


                    <!-- Respond -->				

                    <!-- ENDS Respond -->



                </div>
                <!-- sidebar -->
                <aside id="sidebar" style="height: 1006px;">

             
             
             
                 <h4  style="width: 239px;">Trending Topics</h4>
 					<ul style="list-style: none;"> 

                        <li class="block" style="overflow-y: scroll;overflow-x: auto;width:239px;height:272px;">
                            <ul type="disc" style="/* width:239px; */height:272px;padding-left: 3px;">
  								    
  								    ${getTrendingBlog}                     
							
					</ul>
                        </li>
                     
                    </ul>
                   
 				<h4 style="width: 239px;">Latest Blogs</h4>
                    <ul style="list-style: none;"> 

                        <li class="block" style="overflow-y: scroll;overflow-x: hidden;width:239px;height:272px;">
                            <ul type="disc" style="/* width:239px; */height:272px;padding-left: 3px;">
  								                         
                              ${latestBlog}
                            </ul>
                        </li>

                    </ul>
                  

                            
  								                         
 <a class="twitter-timeline" href="https://twitter.com/huntzzdown" data-widget-id="686142833212821504" width="250">Tweets by @huntzzdown</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

<style type="text/css">
iframe[id^='twitter-widget-']{ width:100% !important;min-width: 239px !important;}
</style>
                            

   <br><br>           

<div data-WRID="WRID-145241983197871072" data-widgetType="searchWidget" data-class="affiliateAdsByFlipkart" height="250" ></div><script async src="//affiliate.flipkart.com/affiliate/widgets/FKAffiliateWidgets.js"></script>           


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