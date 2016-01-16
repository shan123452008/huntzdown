<%-- 
    Document   : Header
    Created on : Apr 10, 2014, 11:57:37 AM
    Author     : Shantanu
--%>


<!DOCTYPE html>

<!-- HEADER -->
<header>
<div class="wrapper cf" style="width: 1059px;">
       
        <a href="homePage.do?help=index">
            <img alt="Simpler" src="<%=request.getContextPath()%>/resources/img/Mainlogo.png" style="height: 80px;width: 193px;margin-top: 8px; margin-bottom: -20px;margin-left: 101px;">
            <img alt="Simpler" src="<%=request.getContextPath()%>/resources/img/logoMain.png" style="height: 80px;width: 465px;margin-top: 8px; margin-bottom: -20px;margin-left: -77px;">
        </a>
      
        <!-- nav -->
      		 <ul id="nav" class="sf-menu" style="margin-top: 13px;">
					<li><a href="homePage.do?help=index"><img src="<%=request.getContextPath()%>/resources/imagesPic/pictures/Home_icon.png" style=" width: 40px; height: 40px; padding-top: 14px;"></a></li>
					<li class="current-menu-item"><a href="blog.html">BLOG</a>
                                        </li>
                                         
                                         <li class="current-menu-item"><a href="signInUser.do">REVIEWS</a>
                                            
                                            </li>
                                         
					<li><a href="/about">ABOUT</a></li>
					<li><a href="portfolio.html">WORK</a></li>
					<li><a href="contact.do">CONTACT</a></li>
				</ul>
        <div id="combo-holder"></div>
        <!-- ends nav -->

    </div>
</header>
<!-- ENDS HEADER -->