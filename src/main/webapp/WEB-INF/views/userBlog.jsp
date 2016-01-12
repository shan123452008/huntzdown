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
	        	<div id="posts-list" class="cf">        	
	        		
	        		
	        		<!-- Audio -->
					<!-- <article class="format-audio">
						<div class="box cf">
							<div class="entry-date"><div class="number">23</div><div class="month">JAN</div></div>
							
							<div class="excerpt">
								<a href="single.html" class="post-heading" >Miaow Track</a>
								jplayer
								<script type="text/javascript">
								//<![CDATA[
								$(document).ready(function(){
								
									$("#jquery_jplayer_1").jPlayer({
										ready: function () {
											$(this).jPlayer("setMedia", {
												m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
												oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
											}).jPlayer("stop");
										},
										ended: function (event) {
											$(this).jPlayer("play");
										},
										swfPath: "js",
										supplied: "m4a, oga"
									});
								});
								//]]>
								</script>
								<div id="jquery_jplayer_1" class="jp-jplayer"></div>
								<div class="jp-audio-container">
									<div class="jp-audio">
										<div class="jp-type-single">
											<div id="jp_interface_1" class="jp-interface">
												<ul class="jp-controls">
													<li><a href="#" class="jp-play" tabindex="1">play</a></li>
													<li><a href="#" class="jp-pause" tabindex="1">pause</a></li>
													<li><a href="#" class="jp-mute" tabindex="1">mute</a></li>
													<li><a href="#" class="jp-unmute" tabindex="1">unmute</a></li>
												</ul>
												<div class="jp-progress-container">
													<div class="jp-progress">
														<div class="jp-seek-bar">
															<div class="jp-play-bar"></div>
														</div>
													</div>
												</div>
												<div class="jp-volume-bar-container">
													<div class="jp-volume-bar">
														<div class="jp-volume-bar-value"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								ENDS jplayer

							</div>
							
							<div class="meta">
								<span class="format">Audio</span>
								<span class="user"><a href="#">By LuisZuno, </a></span>
								<span class="comments">16 comments</span>
								<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
								
						</div>
					</article> -->
					<!-- ENDS Audio -->
	        
					
	        		
	        		<!-- Video -->
				<!-- 	<article class="format-video">
						<div class="video-container">
							<iframe  src="http://www.youtube.com/embed/YE7VzlLtp-4" ></iframe>
						</div>
						<div class="box cf">
							<div class="entry-date"><div class="number">23</div><div class="month">JAN</div></div>
							
							<div class="excerpt">
								<a href="single.html" class="post-heading" >YOUTUBE</a>
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae.</p>
								
								
							</div>
							
							<div class="meta">
								<span class="format">Video</span>
								<span class="user"><a href="#">By LuisZuno, </a></span>
								<span class="comments">16 comments</span>
								<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
								
						</div>
					</article> -->
					<!-- ENDS Video -->
					
					
	        		<!-- Link -->
					<!-- <article class="format-link">
						<div class="box cf">
							<div class="entry-date"><div class="number">23</div><div class="month">JAN</div></div>
							
							<div class="excerpt">
								<a href="http://luiszuno.com" class="post-heading" >This is a link example</a>
							</div>
							
							<div class="meta">
								<span class="format">Link</span>
								<span class="user"><a href="#">By LuisZuno, </a></span>
								<span class="comments">16 comments</span>
								<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
								
						</div>
					</article> -->
					<!-- ENDS Link -->
					
					<!-- Quote -->
				<!-- 	<article class="format-quote">
						<div class="box cf">
							<div class="entry-date"><div class="number">23</div><div class="month">JAN</div></div>
							
							<div class="excerpt">
								<a href="single.html" class="post-heading" >Death doesn't really worry me that much, I'm not frightened about it... I just don't want to be there when it happens</a>
								<p><span class="q-author">-Woody Allen</span></p>

							</div>
							
							<div class="meta">
								<span class="format">Quote</span>
								<span class="user"><a href="#">By LuisZuno, </a></span>
								<span class="comments">16 comments</span>
								<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
								
						</div>
					</article> -->
					<!-- ENDS Quote -->
					
					
					<!-- Standard -->
					<!-- <article class="format-standard">
						<div class="feature-image">
							<a href="single.html">
								<img src="img/dummies/slides/01.jpg" alt="Alt text" />
							</a>
						</div>
						<div class="box cf">
							<div class="entry-date"><div class="number">23</div><div class="month">JAN</div></div>
							
							<div class="excerpt">
								<a href="single.html" class="post-heading" >LOREM IPSUM DOLOR AMET</a>
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed.</p>
								
								<p><a href="single.html" class="learnmore">Learn More</a></p>
							</div>
							
							<div class="meta">
								<span class="format">Post</span>
								<span class="user"><a href="#">By LuisZuno, </a></span>
								<span class="comments">16 comments</span>
								<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
								
						</div>
					</article> -->
											  <%= session.getAttribute("blogDetails") %>
					
					<!-- ENDS  Standard -->
					
					
					<!-- Image -->
					<!-- <article class="format-image">
						<div class="feature-image">
							<a href="img/dummies/slides/01.jpg" data-rel="prettyPhoto">
								<img src="img/dummies/slides/04.jpg" alt="Alt text" />
							</a>
						</div>
						<div class="box cf">
							<div class="entry-date"><div class="number">23</div><div class="month">JAN</div></div>
							
							<div class="excerpt">
								<a href="single.html" class="post-heading" >AN IMAGE</a>
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae.</p>
								
								
							</div>
							
							<div class="meta">
								<span class="format">Image</span>
								<span class="user"><a href="#">By LuisZuno, </a></span>
								<span class="comments">16 comments</span>
								<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
								
						</div> -->
					</article>
					<!-- ENDS Image -->
					
					
					<!-- page-navigation -->
					<div class="page-navigation cf">
						<div class="nav-next"><a href="#">&#8592; Older Entries </a></div>
						<div class="nav-previous"><a href="#">Newer Entries &#8594;</a></div>
					</div>
					<!--ENDS page-navigation -->
					
				
        		</div>
        		<!-- ENDS posts list -->
			
				<!-- sidebar -->
        	<aside id="sidebar">
        		
        		<ul>
	        		<li class="block">
		        		<h4>Text Widget</h4>
						Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. 
	        		</li>
	        		
	        		<li class="block">
		        		<h4>Categories</h4>
						<ul>
							<li class="cat-item"><a href="#" title="title">Film and video<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" title="title">Print<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" title="title">Photo and lomo<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" title="title">Habitant morbi<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" title="title">Film and video<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" title="title">Print<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" title="title">Photo and lomo<span class="post-counter"> (2)</span></a></li>
							<li class="cat-item"><a href="#" title="title">Habitant morbi<span class="post-counter"> (2)</span></a></li>
						</ul>
	        		</li>
	        		
	        		<li class="block">
		        		<h4>Archives</h4>
						<ul>
							<li class="cat-item"><a href="#" title="title">January</a></li>
							<li class="cat-item"><a href="#" title="title">February</a></li>
							<li class="cat-item"><a href="#" title="title">March</a></li>
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
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
						</div>
					</li>
					
					<li class="second-col">
						
						<div class="widget-block">
							<h4>ABOUT</h4>
							<p>Folder it's completely free this means you don't have to pay anything <a href="http://luiszuno.com/blog/license" tar >read license</a>.</p> 
							<p>Visit <a href="http://templatecreme.com/" >Template Creme</a> and find the most beautiful free templates up to date.</p>
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
								<li class="cat-item"><a href="#" >Design</a></li>
								<li class="cat-item"><a href="#" >Photo</a></li>
								<li class="cat-item"><a href="#" >Art</a></li>
								<li class="cat-item"><a href="#" >Game</a></li>
								<li class="cat-item"><a href="#" >Film</a></li>
								<li class="cat-item"><a href="#" >TV</a></li>
							</ul>
						</div>
		         		
					</li>	
				</ul>
				<!-- ENDS widgets -->	
				
				
				<!-- bottom -->
				<div class="footer-bottom">
					<div class="left">by <a href="http://luiszuno.com" >luiszuno.com</a></div>
						<ul id="social-bar" class="cf sb">
							<li><a href="http://www.facebook.com"  title="Become a fan" class="facebook">Facebbok</a></li>
							<li><a href="http://www.twitter.com" title="Follow my tweets" class="twitter"></a></li>
							<li><a href="http://plus.google.com" title="Enter my circles" class="plus"></a></li>
						</ul>
				</div>	
				<!-- ENDS bottom -->
			
			</div>
		</footer>
		<!-- ENDS FOOTER -->
		
	</body>
	
	
	
</html>