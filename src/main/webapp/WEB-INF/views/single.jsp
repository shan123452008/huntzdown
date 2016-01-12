<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">

	<head>
		<meta charset="utf-8"/>
		<title>PicMaza.com</title>
		
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="cssHomePage/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: 

http://filamentgroup.com/examples/iosScaleBug/ -->		
				
		<!-- JS -->
		<script src="js_home/jquery-1.7.1.min.js"></script>
		<script src="js_home/custom.js"></script>
		<script src="js_home/tabs.js"></script>
		<script src="js_home/css3-mediaqueries.js"></script>
		<script src="js_home/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="js_home/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="js_home/jquery.easing.js"></script>
		<script src="js_home/lof-slider.js"></script>
		<link rel="stylesheet" href="cssHomePage/lof-slider.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  /> 
		<script src="js_home/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="cssHomePage/superfish.css" /> 
		<script  src="js_home/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="js_home/superfish-1.4.8/js/superfish.js"></script>
		<script  src="js_home/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="js_home/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js_home/prettyPhoto/css/prettyPhoto.css"  

media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js_home/poshytip-1.1/src/tip-twitter/tip-twitter.css" 

 />
		<link rel="stylesheet" href="js_home/poshytip-1.1/src/tip-yellowsimple/tip-

yellowsimple.css"  />
		<script  src="js_home/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="js_home/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="cssHomePage/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' 

type='text/css'>

		<!-- modernizr -->
		<script src="js_home/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="cssHomePage/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="cssHomePage/lessframework.css"/>
		
		<!-- jplayer -->
		<link href="player-skin/jplayer-black-and-yellow.css" rel="stylesheet" 

type="text/css" />
		<script type="text/javascript" src="js_home/jquery.jplayer.min.js"></script>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="cssHomePage/flexslider.css" >
		<script src="js_home/jquery.flexslider.js"></script>
		
		<!-- reply move form -->
		<script src="js_home/moveform.js"></script>
		
		<script type="text/javascript">
		
		function validation(){
	
			if(!document.getElementById("author").value.length>0){
				$("#name").removeClass("mh_hide");
				return false;
			}
			else if(!document.getElementById("email").value.length>0){
				$("#name").addClass("mh_hide");
				$("#mailId").removeClass("mh_hide");
			
				return false;
			}
			else if(!document.getElementById("comment").value.length>0){
				$("#mailId").addClass("mh_hide");
				$("#userComment").removeClass("mh_hide");
				return false;
			}
			else if(document.getElementById("email").value.length>0){
				var email=document.getElementById("email").value;
				$("#userComment").addClass("mh_hide");
				$("#mailId").removeClass("mh_hide");
				 return /^[a-z0-9]+([-._][a-z0-9]+)*@([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,4}$/.test(email)
			        && /^(?=.{1,64}@.{4,64}$)(?=.{6,100}$).*/.test(email);
				 
								
			}
			else {
				return true;
			}
		}
		</script>
		<style type="text/css">
		.mh_hide{
		display: none; 
		}
		
		</style>
	</head>
	
	
	<body class="single">
	
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				
				<div id="logo">
					<a href="index.html"><img  src="img/logo.png" 

alt="Simpler"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="homePage.do"><span>HOME</span></a></li>
					<li class="current-menu-item"><a 

href="blog.html">BLOG</a></li>
					<li><a href="page.html">ABOUT</a>
						<ul>
							<li><a href="page-

elements.html">Elements</a></li>
							<li><a href="page-

icons.html">Icons</a></li>
							<li><a href="page-

typography.html">Typography</a></li>
						</ul>
					</li>
					<li><a href="portfolio.html">WORK</a></li>
					<li><a href="contact.html">CONTACT</a></li>
				</ul>
				<div id="combo-holder"></div>
				<!-- ends nav -->

			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
			
			<!-- masthead -->
			<div class="masthead cf">
				OUR BLOG
			</div>
			<!-- ENDS masthead -->
			
			
				
			<!-- posts list -->
        	<div id="posts-list" class="cf">        	
	        		
	        		
				<!-- Standard -->
				<article class="format-standard">
					<div class="feature-image">
						  <%= session.getAttribute("details") %>
					</div>
					<div class="box cf">
					
						<!-- <div class="entry-date"><div class="number">
						Rating</div>
						<div class="month">2</div>
						
						</div> -->
						<%= session.getAttribute("userRatings") %>
						
						<div class="excerpt">
							<div class="post-heading" ><%= 

session.getAttribute("haeding") %></div>
							<div class="entry-content">
							
							<%= session.getAttribute("detailsDivText") 

%>
							
								
							</div>
							
							
						</div>
						
						<div class="meta">
							<span class="format">Post</span>
							<span class="user"><a href="#"><%= 

session.getAttribute("haeding") %>, </a></span>
							<span class="comments">16 comments</span>
							<span class="tags"><a href="#">red</a>, <a 

href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
						</div>
							
					</div>
				</article>
				<!-- ENDS  Standard -->
					
					
				<!-- comments list -->
				<div id="comments-wrap">
					<h4 class="heading">5 Comments</h4>
					
					<ol class="commentlist">
					  
					           
						<!-- <li class="comment even thread-even depth-1" 

id="li-comment-1">
							
							<div id="comment-1" class="comment-body 

cf">
						     	<img alt='' 

src='http://0.gravatar.com/avatar/4f64c9f81bb0d4ee969aaf7b4a5a6f40?s=35&amp;d=&amp;r=G' 

class='avatar avatar-35 photo' height='35' width='35' />      
						     	<div class="comment-author 

vcard">Jhon</div>
						        <div class="comment-meta commentmetadata">
							  		<span class="comment-

date">3 days ago  </span>
									<span class="comment-

reply-link-wrap"><a class='comment-reply-link' href='replytocom=23#respond' onclick='return 

addComment.moveForm("comment-1", "1", "respond", "432")'>Reply</a></span>
									
								</div>
						  		<div class="comment-inner">
							   		<p>Donec sed odio dui. 

Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. 

Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>
						 		</div>
					     	</div>
					
							child
							<ul class='children'>
					  			<li class="comment even alt 

depth-2" id="li-comment-2-1">
									<div id="comment-2" 

class="comment-body cf">
										<img alt='' 

src='http://0.gravatar.com/avatar/4f64c9f81bb0d4ee969aaf7b4a5a6f40?s=35&amp;d=&amp;r=G' 

class='avatar avatar-35 photo' height='35' width='35' />      
					      				<div class="comment-author 

vcard">Jhon</div>
										<div 

class="comment-meta commentmetadata">
					  						<span 

class="comment-date">1 hour ago  </span>
											<span 

class="comment-reply-link-wrap"><a class='comment-reply-link' href='replytocom=24#respond' 

onclick='return addComment.moveForm("comment-2", "2", "respond", "432")'>Reply</a></span>
										</div>
					  					<div 

class="comment-inner">
								   			

<p>Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis 

euismod semper. Sed posuere consectetur est at lobortis.</p>
					     			 	</div>
					 				</div>
								</li>
								
								<li class="comment odd alt depth-

2" id="li-comment-2-2">
									<div id="comment-3" 

class="comment-body cf">
										<img alt='' 

src='http://0.gravatar.com/avatar/4f64c9f81bb0d4ee969aaf7b4a5a6f40?s=35&amp;d=&amp;r=G' 

class='avatar avatar-35 photo' height='35' width='35' />      
					      				<div class="comment-author 

vcard">Jhon</div>
										<div 

class="comment-meta commentmetadata">
					  						<span 

class="comment-date">1 hour ago  </span>
											<span 

class="comment-reply-link-wrap"><a class='comment-reply-link' href='replytocom=24#respond' 

onclick='return addComment.moveForm("comment-3", "2", "respond", "432")'>Reply</a></span>
										</div>
					  					<div 

class="comment-inner">
								   			

<p>Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis 

euismod semper. Sed posuere consectetur est at lobortis.</p>
					     			 	</div>
					 				</div>
								</li>
								
								
							</ul>
							ENDS child
						</li>
						
						
						<li class="comment odd thread-even depth-1" 

id="li-comment-3">
							
							<div id="comment-4" class="comment-body 

cf">
						     	<img alt='' 

src='http://0.gravatar.com/avatar/4f64c9f81bb0d4ee969aaf7b4a5a6f40?s=35&amp;d=&amp;r=G' 

class='avatar avatar-35 photo' height='35' width='35' />      
						     	<div class="comment-author 

vcard">Jhon</div>
						        <div class="comment-meta commentmetadata">
							  		<span class="comment-

date">3 days ago  </span>
									<span class="comment-

reply-link-wrap"><a class='comment-reply-link' href='replytocom=23#respond' onclick='return 

addComment.moveForm("comment-4", "1", "respond", "432")'>Reply</a></span>
									
								</div>
						  		<div class="comment-inner">
							   		<p>Donec sed odio dui. 

Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. 

Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>
						 		</div>
					     	</div>
					    </li>
					    
					    
					    
					    
					    
					    <li class="comment even thread-even depth-1" id="li-

comment-4">
							
							<div id="comment-5" class="comment-body 

cf">
						     	<img alt='' 

src='http://0.gravatar.com/avatar/4f64c9f81bb0d4ee969aaf7b4a5a6f40?s=35&amp;d=&amp;r=G' 

class='avatar avatar-35 photo' height='35' width='35' />      
						     	<div class="comment-author 

vcard">Jhon</div>
						        <div class="comment-meta commentmetadata">
							  		<span class="comment-

date">3 days ago  </span>
									<span class="comment-

reply-link-wrap"><a class='comment-reply-link' href='replytocom=23#respond' onclick='return 

addComment.moveForm("comment-5", "1", "respond", "432")'>Reply</a></span>
									
								</div>
						  		<div class="comment-inner">
							   		<p>Donec sed odio dui. 

Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. 

Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>
						 		</div>
					     	</div>
					    </li>
					     -->
					    
					    
					    <%= session.getAttribute("comment") %>
					    
					   
						
					</ol>
				</div>
				<!-- ENDS comments list -->
						
						
				<!-- Respond -->				
				<div id="respond">
				
					<h3 id="reply-title">Leave a Reply <small><a 

rel="nofollow" id="cancel-comment-reply-link" href="/themes/wp-simpler/archives/34#respond" 

style="display:none;">Cancel reply</a></small></h3>
					
					
				<form:form method="post" action="commentAdd.do" 

modelAttribute="commntAdd" onsubmit="return validation();">
					<p class="comment-notes">Your email address will not be 

published. Required fields are marked <span class="required">*</span></p>
					
					<p class="comment-form-author"><label 

for="author">Name<span class="required">*</span></label> <input id="author" name="author" 

type="text" value="" size="30" aria-required="true"></p>
					<p id="name" class="mh_hide" style="font-

size:120%;color:red;">Please enter name </p>
					<p class="comment-form-email"><label 

for="email">Email<span class="required">*</span></label> <input id="email" name="email" 

type="text" value="" size="30" aria-required="true"></p>
<!-- 				  	<p class="comment-form-url"><label 

for="url">Website</label><input id="url" name="url" type="text" value="" size="30"></p>
 -->  					
					<p id="mailId" class="mh_hide" style="font-

size:120%;color:red;">Please enter valid email id. </p>
					<p class="comment-form-url"><label 

for="ratings">Ratings</label><select id="ratings" name="ratings">
					<option value="5">5</option>
					<option value="4">4</option>
					<option value="3">3</option>
					<option value="2">2</option>
					<option value="1">1</option>
					</select></p>
					
					<p class="comment-form-comment"><label 

for="comment">Comment</label><textarea id="comment" name="comment" cols="45" rows="8" aria-

required="true"></textarea></p>						
					<p id="userComment" class="mh_hide" style="font-

size:120%;color:red;">Please enter comment.</p>					
					<%-- 								
					<!-- allowed tags -->
					<p class="form-allowed-tags">You may use these <abbr 

title="HyperText Markup Language">HTML</abbr> tags and attributes:  <code>&lt;a href="" 

title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; 

&lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; 

&lt;strike&gt; &lt;strong&gt; </code></p>						
					<!-- ENDS allowed tags --> --%>
					
					<p class="form-submit">
						<input name="submit" type="submit" id="submit" 

value="Post Comment">
						<input type="hidden" name="comment_post_ID" 

value="<%= session.getAttribute("userId")%>" id="comment_post_ID">
						<input type="hidden" name="comment_parent" 

id="comment_parent" value="0">
					</p>
					
					</form:form>
				</div>
				<!-- ENDS Respond -->
					
										
				
    		</div>
    		<!-- ENDS posts list -->
			
			<!-- sidebar -->
        	<aside id="sidebar">
        		
        		<ul>
	        		<li class="block">
		        		<h4>Text Widget</h4>
						Pellentesque habitant morbi tristique senectus et 

netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, 

tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae 

est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum 

erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. 
	        		</li>
	        		
	        		<li class="block">
		        		<h4>Categories</h4>
						<ul>
							<li class="cat-item"><a href="#" 

title="title">Film and video<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" 

title="title">Print<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" 

title="title">Photo and lomo<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" 

title="title">Habitant morbi<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" 

title="title">Film and video<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" 

title="title">Print<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" 

title="title">Photo and lomo<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" 

title="title">Habitant morbi<span class="post-counter"> (2)</span></a></li>
						</ul>
	        		</li>
	        		
	        		<li class="block">
		        		<h4>Archives</h4>
						<ul>
							<li class="cat-item"><a href="#" 

title="title">January</a></li>
							<li class="cat-item"><a href="#" 

title="title">February</a></li>
							<li class="cat-item"><a href="#" 

title="title">March</a></li>
						</ul>
	        		</li>
        		
        		</ul>
        		
        	</aside>
			<!-- ENDS sidebar -->
			
			
			</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		
		
		<!-- FOOTER -->
		<footer>
			<div class="wrapper cf">
			
				<!-- widgets -->
				<ul  class="widget-cols cf">
					<li class="first-col">
						
						<div class="widget-block">
							<h4>RECENT POSTS</h4>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img 

src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque 

habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img 

src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque 

habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img 

src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque 

habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
						</div>
					</li>
					
					<li class="second-col">
						
						<div class="widget-block">
							<h4>ABOUT</h4>
							<p>Folder it's completely free this means 

you don't have to pay anything <a href="http://luiszuno.com/blog/license" tar >read 

license</a>.</p> 
							<p>Visit <a 

href="http://templatecreme.com/" >Template Creme</a> and find the most beautiful free templates up 

to date.</p>
						</div>
						
					</li>
					
					<li class="third-col">
						
						<div class="widget-block">
							<div id="tweets" class="footer-col tweet">
		         				<h4>TWITTER WIDGET</h4>
		         			</div>
		         		</div>
		         		
					</li>
					
					<li class="fourth-col">
						
						<div class="widget-block">
							<h4>CATEGORIES</h4>
							<ul>
								<li class="cat-item"><a href="#" 

>Design</a></li>
								<li class="cat-item"><a href="#" 

>Photo</a></li>
								<li class="cat-item"><a href="#" 

>Art</a></li>
								<li class="cat-item"><a href="#" 

>Game</a></li>
								<li class="cat-item"><a href="#" 

>Film</a></li>
								<li class="cat-item"><a href="#" 

>TV</a></li>
							</ul>
						</div>
		         		
					</li>	
				</ul>
				<!-- ENDS widgets -->	
				
				
				<!-- bottom -->
				<div class="footer-bottom">
					<div class="left">by <a href="http://luiszuno.com" 

>luiszuno.com</a></div>
						<ul id="social-bar" class="cf sb">
							<li><a href="http://www.facebook.com"  

title="Become a fan" class="facebook">Facebbok</a></li>
							<li><a href="http://www.twitter.com" 

title="Follow my tweets" class="twitter"></a></li>
							<li><a href="http://plus.google.com" 

title="Enter my circles" class="plus"></a></li>
						</ul>
				</div>	
				<!-- ENDS bottom -->
			
			</div>
		</footer>
		<!-- ENDS FOOTER -->
		
	</body>
	
	
	
</html>