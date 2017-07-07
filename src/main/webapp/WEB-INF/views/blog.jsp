<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
<!--   start-->
<link rel="stylesheet" media="all" href="resources/cssHomePage/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
		
                 
                
		<!-- JS -->
		<script src="resources/js_home/jquery-1.7.1.min.js"></script>
		<script src="resources/js_home/custom.js"></script>
		<script src="resources/js_home/tabs.js"></script>
		<script src="resources/js_home/css3-mediaqueries.js"></script>
		<script src="resources/js_home/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="resources/js_home/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="resources/js_home/jquery.easing.js"></script>
		<script src="resources/js_home/lof-slider.js"></script>
		<link rel="stylesheet" href="resources/cssHomePage/lof-slider.css" media="all"  /> 
                <link rel="stylesheet" href="resources/cssHomePage/newlook.css" media="all"  /> 
                <link rel="stylesheet" href="resources/cssHomePage/fornewjsp.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="resources/cssHomePage/jquery.tweet.css" media="all"  /> 
		<script src="resources/js_home/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="resources/cssHomePage/superfish.css" /> 
		<script  src="resources/js_home/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="resources/js_home/superfish-1.4.8/js/superfish.js"></script>
		<script  src="resources/js_home/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="resources/js_home/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="resources/js_home/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="resources/js_home/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="resources/js_home/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="resources/js_home/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="resources/js_home/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="resources/cssHomePage/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="resources/js_home/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="resources/cssHomePage/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="resources/cssHomePage/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="resources/cssHomePage/flexslider.css" >
		<script src="resources/js_home/jquery.flexslider.js"></script>
<!--end-->
        <link href="resources/cssHomePage/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="resources/js_home/jquery.js"></script>  
        <script>
       
        </script>
        <script type="text/javascript" src="resources/js_home/jquery-1.5.2.js"></script> 
        <script type="text/javascript" src="resources/js_home/nicEdit-latest.js"></script>
         <script type="text/javascript">
         
            //<![CDATA[
             bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
             //]]>
             
        
          
    function showDialog()
    {
        var nicInstance = nicEditors.findEditor('comment1');
         var notes = nicInstance.getContent();
         alert(notes);

         var data = $('#blogForm').find('.nicEdit-main').text();
        
         document.getElementById('comment').value = data;

         
         submitVal();
      
    }
       
        
        function checkval(){
            var nicInstance = nicEditors.findEditor('comment1');
            var notes = nicInstance.getContent();

            alert(notes);
        }
        
        function submitVal(){
            alert("hii");
           var blogname=document.getElementById("blogname").value;
           var image=document.getElementById("image").value;

           
           document.getElementById("blogForm").submit();
                     
            
        }
        
      
            
    </script>
    </head>
    <header>
			<div class="wrapper cf">
				
				<div id="logo">
					<a href="homePage.do?help=index"><img alt="Simpler" src="resources/img/logo.png" style="height: 92px; width: 423px; margin-top: -10px; margin-bottom: -20px;"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="homePage.do"><span>HOME</span></a></li>
					<li class="current-menu-item"><a href="blog.html">BLOG</a>
                                         <ul>
							<li><a href="blog.do">Read Blog</a></li>
                                                        <li><a href="writeBlog.do">Write Blog</a></li>
							
                                         </ul></li>
                                         
                                         <li class="current-menu-item"><a href="signInUser.do">REVIEWS</a>
                                                <ul>
                                                    <li><a href="details.do">Movie</a></li>
                                                    <li><a href="details.do">Restro</a></li>
                                                    <li><a href="carReviews.do">Car</a></li>
                                                     <li><a href="bikes.do">Bikes</a></li>
                                                     <li><a href="mobile.do">Mobiles</a></li>

                                                </ul>
                                            </li>
                                         
					<li><a href="page.html">ABOUT</a>
						<ul>
							<li><a href="page-elements.html">Elements</a></li>
							<li><a href="page-icons.html">Icons</a></li>
							<li><a href="page-typography.html">Typography</a></li>
						</ul>
					</li>
					<li><a href="portfolio.html">WORK</a></li>
					<li><a href="contact.html">CONTACT</a></li>
				</ul>
				<div id="combo-holder"></div>
				<!-- ends nav -->

			</div>
		</header>
<style type="text/css">
    #wrapper {
        width:650px;
        margin:0 auto;
        font-family:Verdana, sans-serif;
    }
    legend {
        font-size:16px;
        padding:0 10px;
        background:#fff;
        -moz-border-radius:4px;
        box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
        padding:5px 10px;
        text-transform:uppercase;
        font-family:Helvetica, sans-serif;
        font-weight:bold;
    }
    fieldset {
        border-radius:4px;
        background: #fff; 
        background: -moz-linear-gradient(#fff, #f9fdff);
        background: -o-linear-gradient(#fff, #f9fdff);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#f9fdff));
        background: -webkit-linear-gradient(#fff, #f9fdff);
        padding:20px;
        border-color:rgba(4, 129, 177, 0.4);
    }
    input,
    textarea {
      
        background: #fff;
        border: 1px solid #CCCCCC;
        font-size: 14px;
        line-height: 1.2em;
        margin-bottom:15px;

        -moz-border-radius:4px;
        -webkit-border-radius:4px;
        border-radius:4px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.2);
    }
    input[type="text"],
    input[type="password"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    
    #country{
        height: 35px;
        width:294px;
    }
    
    input[type="file"],
    input[type="uploadImage"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    
    
      
    input[type="submit"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
     input[type="button"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
    textarea {
        padding:3px;
        width:96%;
        height:100px;
    }
    textarea:focus {
        background:#ebf8fd;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        opacity:0.6;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        border-color:#ccc;
    }
    .small {
        line-height:14px;
        font-size:12px;
        color:#999898;
        margin-bottom:3px;
    }
</style>
<body>
       <div id="wrapper">
        <form:form method="post" id="blogForm" action="blog.do" modelAttribute="blog">
            <fieldset>
                <legend>Blog Form</legend>
                <div>
                    <td>Blog Name</td>
                    <input type="text" placeholder="Blog Name" name="blogname" id="blogname"/>                
                </div>
                <div>
                     <td>Path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <input type="text" placeholder="picture path" name="image" id="image"/>                
                </div>
               
                <div>
                    <div class="small">Comments  for Blog with details</div>
                   <textarea id="comment1" name="comment1"></textarea>
                </div> 
                
                
                
                <input type="text" id="comment" name="comment"/> 
                 <div>
                   &nbsp;
                </div>
                
                <div>
                    <td>Star</td>
                    <input type="text" placeholder="Star" name="star" id="star"/>                
                </div>
                
                <div>
                    <td>category</td>
                    <input type="text" placeholder="Category" name="category" id="category"/>                
                </div>
                
                 <div>
                    <td>keywords</td>
                    <input type="text" placeholder="Keywords" name="keywords" id="keywords"/>                
                </div>
                
                <div>
                    <td>Tag</td>
                    <input type="text" placeholder="Tag" name="tag" id="tag"/>                
                </div>
                
               
                
                
                <input type="button" value="Submit" onclick="showDialog()"/>	
                
           
                
                

            </fieldset>    
        </form:form>
        
        
      
    </div>
</body>
</html>