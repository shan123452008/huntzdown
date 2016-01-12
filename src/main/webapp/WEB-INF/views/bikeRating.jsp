<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <body>

        <!-- hEADER -->
        <jsp:include page="header2.jsp"/>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
			
				
			<!-- portfolio content-->
        	<div id="portfolio-content" class="cf">        	
				
				
				
				
				<!-- project pager -->
                               
				<!-- ENDS project pager -->
					
					
					<!-- project box -->
				<div id="project-box" class="cf">
				
				
					
				
				
					<!-- slider -->
					<div class="project-slider">
				        <div class="flexslider">
						  <ul class="slides">
						   	${bikeRating}
						   
						  </ul>
						</div>
					</div>
		        	<!-- ENDS slider -->


					<div class="info">
	        			  ${detailsBike}

	        		</div>
	        		
	        		<!-- entry-content -->
	        		<div class="entry-content">
	        		
	        			<h2 class="heading">${heading}</h2>
	        			
	        			<div>
	        			${detailBike}
	        			</div>
	        		</div>
	        		<!-- ENDS entry content -->
	        		
	        	</div>
		    	<!-- ENDS project box -->
					
					
<!-- comments list -->
				<div id="comments-wrap">
					<h4 class="heading">5 Comments</h4>
					
					<ol class="commentlist">
					  
					           
					  ${comment}
					    
					   
						
					</ol>
				</div>
				<!-- ENDS comments list -->

				
				<!-- Respond -->
				<div id="respond">

					<h3 id="reply-title">
						Leave a Reply <small><a rel="nofollow"
							id="cancel-comment-reply-link"
							href="/themes/wp-simpler/archives/34#respond"
							style="display: none;">Cancel reply</a></small>
					</h3>


					<form:form method="post" action="bikeCommentAdd.do"	modelAttribute="commntBikeAdd">
						<p class="comment-notes">
							Your email address will not be published. Required fields are
							marked <span class="required">*</span>
						</p>

						<p class="comment-form-author">
							<label for="author">Name<span class="required">*</span></label> <input
								id="author" name="author" type="text" value="" size="30"
								aria-required="true">
						</p>
						
						<p class="comment-form-email">
							<label for="email">Email<span class="required">*</span></label> <input
								id="email" name="email" type="text" value="" size="30"
								aria-required="true">
						</p>
					
						
						<p class="comment-form-url">
							<label for="ratings">Ratings</label><select id="ratings"
								name="ratings">
								<option value="5">5</option>
								<option value="4">4</option>
								<option value="3">3</option>
								<option value="2">2</option>
								<option value="1">1</option>
							</select>
						</p>

						<p class="comment-form-comment">
							<label for="comment">Comment</label>
							<textarea id="comment" name="comment" cols="45" rows="8"></textarea>
						</p>
					
													
					
						<p class="form-submit">
							<input name="submit" type="submit" id="submit"
								value="Post Comment"> <input type="hidden"
								name="comment_post_ID"
								value="${userId}"
								id="comment_post_ID"> 
						</p>

					</form:form>
				</div>
				<!-- ENDS Respond -->



				<!-- related -->
				<div class="related-projects">
					<h4 class="related-heading">Trending Mobile</h4>
					<div class="related-list cf">
						
							${trendDiv}

					</div>
				</div>
				<!-- ENDS related -->
									
				
    		</div>
    		<!-- ENDS portfolio content-->
			
			
			
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