<%-- 
    Document   : Header
    Created on : Apr 10, 2014, 11:57:37 AM
    Author     : Shantanu
--%>


<!DOCTYPE html>

<!-- HEADER -->
<header>


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=1698006363811207";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="wrapper cf wrapperLogo">



<div class="wrapper cf wrapperLogo">

       
        <a href="/homePage">
            <img alt="Simpler" src="<%=request.getContextPath()%>/resources/img/Mainlogo.png" class="headerLogo">
            <img alt="Simpler" src="<%=request.getContextPath()%>/resources/img/logoMain.png" class="headerLogoRight">
        </a>
      
        <!-- nav -->
      		 <ul id="nav" class="sf-menu" style="margin-top: 13px;">
					<li><a href="/homePage"><img src="<%=request.getContextPath()%>/resources/imagesPic/pictures/Home_icon.png" style=" width: 40px; height: 40px; padding-top: 14px;"></a></li>
					<li class="current-menu-item"><a href="#">BLOG</a>
                                         <ul style="display: none; visibility: hidden;">
                                         	<li><a href="/blog?category=ALL">ALL BLOGS</a></li>
                                            <li><a href="/blog?category=ENTERTAINMENT">ENTERTAINMENT</a></li>
											<li><a href="/blog?category=FACTS">FACTS</a></li>
											<li><a href="/blog?category=NEWS">NEWS</a></li>
											<li><a href="/blog?category=SCIENCE">SCIENCE</a></li>
											<li><a href="/blog?category=AUTOMOBILES">AUTOMOBILES</a></li>
											<li><a href="/blog?category=SPORTS">SPORTS</a></li>		
																								
											
											
																						
                                         </ul></li>
                    <li><a href="/videos">VIDEOS</a>
					<li><a href="/about">ABOUT</a></li>
					<li><a href="/contact">CONTACT</a></li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<div class="fb-like" data-href="https://www.facebook.com/huntzdown/" data-layout="box_count" data-action="like" data-show-faces="true" data-share="false"></div>
				</ul>
        <!-- ends nav -->

    </div>
</header>
<!-- ENDS HEADER -->