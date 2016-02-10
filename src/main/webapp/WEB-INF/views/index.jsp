<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*,java.io.*,javax.imageio.ImageIO,java.awt.image.BufferedImage" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta property="og:type" name="og:type" content="website" />
		<meta property="og:title" name="og:title" content="HuntzDown" />
		<meta property="og:url" name="og:url" content="http://www.huntzdown.com"/>
		<meta property="og:image" name="og:image" content="https://c2.staticflickr.com/2/1474/24069025379_465e71ae86.jpg" />
		<meta property="fb:app_id" content="1698006363811207" />
		<meta name="Name" content="Huntzdown"/>
		<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0"/>
		<meta name="description" content="India's largest Online blog site. Offering blogs on news, facts, videos, entertainment, automobiles and sports"/>
		<meta name="Image" content="https://c2.staticflickr.com/2/1474/24069025379_465e71ae86.jpg">
		<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
		<META NAME="ROBOTS" CONTENT="INDEX, FOLLOW"/>
		<meta name="keywords" content="blogs, entertainment, sports , automobiles, videos, facts"/> 
        <title>HuntzDown - Entertainment! News! Videos! Facts
        </title>
		<meta name="author" content="shantanu pandey">
		<meta name="copyright" content="huntzdown.com">
		<meta http-equiv="Reply-to" content="huntzdown@gmail.com">
		<meta http-equiv="content-language" content="EN">
        <%@include file="includeCssJs.jsp" %> 
         	
      
    </head>
    <body class="single">
	  
    <script>
		!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
		document,'script','//connect.facebook.net/en_US/fbevents.js');
		
		fbq('init', '649374138528079');
		fbq('track', "PageView");</script>
		<noscript><img height="1" width="1" style="display:none"
		src="https://www.facebook.com/tr?id=649374138528079&ev=PageView&noscript=1"
		/></noscript>
		
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=1698006363811207";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
				

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
									
									ResultSet i = st.executeQuery("select * from huntzdown.blog where isVideo IS NULL order by id desc limit 5");
								
									%>
									
									 <%
									 while(i.next()){
										 String path =  i.getString(3);
										 String filename = i.getString(10);		

									   %>
                                <li><a href="blogInfo?tag=<%=filename%>"><img id="fixed" src="<%=path%>" style=" width: 639px; height: 400px; "/></a></li>
									<%  }%>
                               
                            </ul>
                        </div>
                    </div>
                    <!-- ENDS slider -->
                    <!-- ENDS  Standard -->

                    <!--Latest Blogs-->
                    <div id="comments-wrap">
                        <h4 class="heading">BLOGS</h4>

                        <ol class="commentlist">


                            <li class="comment even thread-even depth-1" id="li-comment-1">

                                <div id="comment-1" class="comment-body cf">

                                    ${restroDetails}            

                                </div>

                            </li>
                            


                        </ol>
                    </div>                    
                    
                      <!--Latest Reviews-->
                    <div id="comments-wrap">
                        <h4 class="heading">Videos</h4>

                        <ol class="commentlist">


                            <li class="comment even thread-even depth-1" id="li-comment-1">

                                <div id="comment-1" class="comment-body cf">

                                    ${videoBlog}            

                                </div>

                            </li>
                            


                        </ol>
                    </div>


                    <!--Video start-->
                    <div id="comments-wrap">
                        <h4 class="heading">Trailors</h4>

                        <ol class="commentlist">


                            <li class="comment even thread-even depth-1" id="li-comment-1">
                            
                            <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/s7YYt9_KfsM" allowfullscreen="allowfullscreen" class="videoWidth"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Kapoor & Sons Official Trailer </span>



                                </div>
                                
                            
                             <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/uFKluii3rmI" allowfullscreen="allowfullscreen" class="videoWidth"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Rocky Handsome Teaser</span>


                                </div>

                                <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/FZLDoF7VfaQ" allowfullscreen="allowfullscreen" class="videoWidth"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Fitoor Official Trailer</span>


                                </div>

                                <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/cMsszmx3dh0" allowfullscreen="allowfullscreen" class="videoWidth"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">M.A. Pass official Trailer
                                    </span>



                                </div>
                                
                                
                                 
                                 <div id="comment-1" class="comment-body cf">

                                    <span><iframe src="https://www.youtube.com/embed/vKziLmjSVB4" allowfullscreen="allowfullscreen" class="videoWidth"></iframe></span>    
                                    <span class="carlist"><h4 class="heading1">Teaser- Introducing Gaurav </span>



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
                <aside id="sidebar" class="asidePage">
                 <%-- <h4  style="width: 239px;">Trending Topics</h4>
 					<ul style="list-style: none;"> 

                        <li class="block" style="overflow-y: scroll;overflow-x: auto;width:239px;height:272px;">
                            <ul type="disc" style="/* width:239px; */height:272px;padding-left: 3px;">
  								    
  								    ${getTrendingBlog}                     
							
					</ul>
                        </li>
                     
                    </ul> --%>
                   
 				<h4 style="width: 239px;">Latest Blogs</h4>
                    <ul style="list-style: none;"> 

                        <li class="block" style="overflow-y: scroll;overflow-x: hidden;width:239px;height:272px;">
                            <ul type="disc" style="/* width:239px; */height:272px;padding-left: 3px;">
  								                         
                              ${latestBlog}
                            </ul>
                        </li>

                    </ul>
                  

                            
  
<div id="fb-root"></div>
<div class="fb-page" data-href="https://www.facebook.com/huntzdown/" data-tabs="timeline" data-small-header="false" data-width="239" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/huntzdown/"><a href="https://www.facebook.com/huntzdown/">Huntzdown</a></blockquote></div></div>


<div>&nbsp;</div>
<div>&nbsp;</div>

								                         
 <a class="twitter-timeline" href="https://twitter.com/huntzzdown" data-widget-id="686142833212821504" width="250">Tweets by @huntzzdown</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


<style type="text/css">
iframe[id^='twitter-widget-']{ width:100% !important;min-width: 239px !important;}
.fb-page, .fb-page iframe[style], .fb-like-box, .fb-like-box iframe[style] {width:100% !important;min-width: 239px !important;}

</style>
                            

   <br><br>           

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