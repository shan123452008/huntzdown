<%-- 
    Document   : Header
    Created on : Apr 10, 2014, 11:57:37 AM
    Author     : Prashant
--%>


<!DOCTYPE html>

<!-- HEADER -->
<header>
<div class="wrapper cf" style="width: 1059px;">
        <div id="logo">
            <a href="homePage.do?help=index"><img alt="Simpler" src="<%=request.getContextPath()%>/resources/img/logo.png" style="height: 47px;width: 407px;margin-top: 8px; margin-bottom: -20px;"></a>
        </div>
        
    <div> 
	<input type="text" id="searchTab" style="margin: 28px 0px 0px; padding: 4px 16px; font-family: Arial,Helvetica,sans-serif; font-size: 14px; border-width: 1px 0px 1px 1px; border-style: solid none solid solid; border-color: rgb(0, 118, 163) -moz-use-text-color rgb(0, 118, 163) rgb(0, 118, 163); -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; border-top-left-radius: 5px; border-bottom-left-radius: 5px; width: 168px;border-bottom-right-radius: 5px;border-top-right-radius: 5px;" maxlength="120" size="29" name="q" class="tftextinput" onkeydown="searchVal();">
	</div>
        <!-- nav -->
        
      <ul id="nav" class="sf-menu" style="margin-top: -59px;">
					<li><a href="homePage.do?help=index"><img src="<%=request.getContextPath()%>/resources/imagesPic/pictures/Home_icon.png" style=" width: 40px; height: 40px; padding-top: 14px;"></a></li>
					<li class="current-menu-item"><a href="blog.html">BLOG</a>
                                        </li>
                                         
                                         <li class="current-menu-item"><a href="signInUser.do">REVIEWS</a>
                                            
                                            </li>
                                         
					<li><a href="about.do">ABOUT</a></li>
					<li><a href="portfolio.html">WORK</a></li>
					<li><a href="contact.do">CONTACT</a></li>
				</ul>
        <div id="combo-holder"></div>
        <!-- ends nav -->

    </div>
</header>
<!-- ENDS HEADER -->