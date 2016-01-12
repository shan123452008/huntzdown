<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
        <!-- Starts HEADER -->
	<c:import url="header2.jsp" />
   
            <div class="main">
                <div class="shell">

            <div id="container" style="overflow-y: hidden;overflow-x: hidden;max-height:637px;">
                <div class="container-cnt">
<div id="content" style="overflow-y: scroll;overflow-x: hidden;max-height:637px;">
                        <div class="cases">
                            <div id="restrosearch" class="js-search-results js-place-results js-lock-on-load " style="opacity: 1;">
                             <div id="list">
                              ${list}
                             </div>
                            </div>
                               <div id="model1" class="js-search-results js-place-results js-lock-on-load " style="opacity: 1;">
                             
                                   <div id="model"></div>

                            </div>
                              

                        </div></div>
                    <!--side div start here-->

                    <div class="js-facetedsearch js-lock-on-load widgets-narrow" id="sidebar" style="opacity: 1;">

                        <input type="hidden" value="" class="js-query">
                        <input type="hidden" value="322" class="js-default-vertical">

                        <!-- Widget -->
                        <div class="widget widget-f widget-narrow">
                            <div class="refine-box" >

                                <h5 style="font-family: times new roman;">Refine Your Search</h5>


                                <div data-originalvert="Restaurants" data-originalvertid="322" class="vertical-select " style="opacity: 1;">
                                   

                                    <section id="content" style="width: 139px;">

                                        <div class="search">

 											 <select class="current-menu-item" id="priceRange" name="priceRange" style="width: 139px;" onchange="company();">
                                             <option value="" selected>Select</option>
                                             <option value="2000">Below Rs 2000</option>
                                             <option value="5000">Below Rs 5000</option>
                                             <option value="10000">Below Rs 10000</option>
                                             <option value="15000">Below Rs 15000</option>
                                             <option value="20000">Below Rs 20000</option>
                                             <option value="25000">Below Rs 25000</option>
                                             <option value="30000">Below Rs 30000</option>
                                             <option value="35000">Below Rs 35000</option>                                             
                                             <option value="40000">Below Rs 40000</option>  
                                             <option value="45000">Below Rs 45000</option>                                             
                                             <option value="50000">Below Rs 50000</option>                                             
                                             <option value="55000">Below Rs 55000</option>                                             
                                             <option value="60000">Below Rs 60000</option>                                             
                                             <option value="65000">Below Rs 65000</option>                                             
                                             <option value="70000">Below Rs 70000</option>                                             
                                             </select>
                                            
                                            <select class="current-menu-item" id="brandName" name="brandName" style="width: 139px;" onchange="company();">
                                                 <option value="" selected>Select</option>
                                                 <option value="Apple">Apple</option>
                                                 <option value="Samsung">Samsung</option>
                                                 <option value="Lg">Lg</option>
                                                 <option value="Nokia">Nokia</option>
                                                 <option value="Micromax">Micromax</option>
                                                 <option value="Lemon">Lemon</option>

                                             </select>
                                            <br>
                                            <br>
                                            
                                            <h5 style="font-family: times new roman;">Sort Your Data</h5>
                                            
                                            <select class="current-menu-item" id="sortItem" name="sortItem" style="width: 139px;" onchange="sortBy();">
                                                 <option value="">Select</option>
                                                 <option value="latest">Latest</option>
                                                 <option value="rating">High Rating</option>
                                                 <option value="low">Price- Low To High</option>
                                                 <option value="high">Price- High To low</option>

                                             </select>
                                            
                                            
                                        </div>
                                    </section>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- End Widget -->
                   
                 
                </div>
                <!--ends here--> 
            </div></div>
            
            </div>

		
		
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