<%-- 
    Document   : Header
    Created on : Apr 10, 2014, 11:57:37 AM
    Author     : Shantanu
--%>


<!DOCTYPE html>

<!-- HEADER -->
<header>
<div class="wrapper cf wrapperLogo">
       
        <a href="homePage.do?help=index">
            <img alt="Simpler" src="<%=request.getContextPath()%>/resources/img/Mainlogo.png" class="headerLogo">
            <img alt="Simpler" src="<%=request.getContextPath()%>/resources/img/logoMain.png" class="headerLogoRight">
        </a>
      
        <!-- nav -->
      		 <ul id="nav" class="sf-menu" style="margin-top: 13px;">
					<li><a href="homePage.do?help=index"><img src="<%=request.getContextPath()%>/resources/imagesPic/pictures/Home_icon.png" style=" width: 40px; height: 40px; padding-top: 14px;"></a></li>
					<li class="current-menu-item"><a href="#">BLOG</a>
                                         <ul style="display: none; visibility: hidden;">
											<li><a href="/blog?category=BOLLYWOOD">BOLLYWOOD</a></li>
											<li><a href="/blog?category=LIFESTYLE">LIFESTYLE</a></li>
											<li><a href="/blog?category=WORLD">WORLD</a></li>
											<li><a href="/blog?category=ENTERTAINMENT">ENTERTAINMENT</a></li>
											<li><a href="/blog?category=NEWS">NEWS</a></li>
											<li><a href="/blog?category=TECHNOLOGY">TECHNOLOGY</a></li>
											<li><a href="/blog?category=AUTOMOBILES">AUTOMOBILES</a></li>
											<li><a href="/blog?category=GAMES">GAMES</a></li>
                                         </ul></li>
					<li><a href="/about">ABOUT</a></li>
					<li><a href="#">CONTACT</a></li>
				</ul>
        <div id="combo-holder"></div>
        <!-- ends nav -->

    </div>
</header>
<!-- ENDS HEADER -->