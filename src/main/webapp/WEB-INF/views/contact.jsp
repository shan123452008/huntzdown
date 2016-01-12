<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">

	 <head>
        <meta charset="utf-8"/>
        <title>DekhoReview.com</title>

      

        <%@include file="includeCssJs.jsp" %> 
       
      
    </head>
	 <jsp:include page="Header.jsp"/>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
			
				
			<!-- page content-->
        	<div id="page-content" class="cf">        	
	        		
	        	
	        	
				
				
				<!-- Map -->
				
				
				<div id="map-holder">
					<div id="map-content">
						
				<p><u><h3 align="left">CONTACT FORM</h3></u></p>
				<h6 align="left">Use this contact form to get in touch with us.</h6>
				<!-- form -->
				<script type="text/javascript" src="js/form-validation.js"></script>
				<form id="contactForm" action="#" method="post">
					<fieldset>
														
						<p>
							<label for="name" >Name</label>
							<input name="name"  id="name" type="text" class="form-poshytip" title="Enter your full name" />
						</p>
						
						<p>
							<label for="email" >Email</label>
							<input name="email"  id="email" type="text" class="form-poshytip" title="Enter your email address" />
						</p>
						
						<p>
							<label for="web">Website</label>
							<input name="web"  id="web" type="text" class="form-poshytip" title="Enter your website" />
						</p>
						
						<p>
							<label for="comments">Message</label>
							<textarea  name="comments"  id="comments" rows="5" cols="20" class="form-poshytip" title="Enter your comments"></textarea>
						</p>
						
						<!-- send mail configuration -->
						<input type="hidden" value="your@email.com" name="to" id="to" />
						<input type="hidden" value="ENter the subject here" name="subject" id="subject" />
						<input type="hidden" value="send-mail.php" name="sendMailUrl" id="sendMailUrl" />
						<!-- ENDS send mail configuration -->
						
						<p><input type="button" value="Send" name="submit" id="submit" /></p>
					</fieldset>
					
				</form>
					</div>
				</div>
				
				<!-- ENDS Map -->
				
				
				<p id="sent-form-msg" class="success">Form data sent. Thanks for your comments.</p>
				<!-- ENDS form -->				
				
    		</div>
    		<!-- ENDS page content-->
			
			
			
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
		
		<!-- Start google map -->
		<script>initialize();</script>
	
	</body>
	
	
	
</html>