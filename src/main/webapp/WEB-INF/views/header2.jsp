<head>
		<meta charset="utf-8"/>
		<title>DekhoReview.com</title>
		 
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="<%=request.getContextPath()%>/resources/cssHomePage/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
		
                 
                
		<!-- JS -->
		<script src="<%=request.getContextPath()%>/resources/js_home/jquery-1.7.1.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js_home/custom.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js_home/tabs.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js_home/css3-mediaqueries.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js_home/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="<%=request.getContextPath()%>/resources/js_home/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="<%=request.getContextPath()%>/resources/js_home/jquery.easing.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js_home/lof-slider.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/cssHomePage/lof-slider.css" media="all"  /> 
                <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/cssHomePage/newlook.css" media="all"  /> 
                <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/cssHomePage/fornewjsp.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/cssHomePage/jquery.tweet.css" media="all"  /> 
		<script src="<%=request.getContextPath()%>/resources/js_home/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/cssHomePage/superfish.css" /> 
		<script  src="<%=request.getContextPath()%>/resources/js_home/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="<%=request.getContextPath()%>/resources/js_home/superfish-1.4.8/js/superfish.js"></script>
		<script  src="<%=request.getContextPath()%>/resources/js_home/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="<%=request.getContextPath()%>/resources/js_home/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/js_home/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/js_home/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/js_home/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="<%=request.getContextPath()%>/resources/js_home/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js_home/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/cssHomePage/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="<%=request.getContextPath()%>/resources/js_home/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="<%=request.getContextPath()%>/resources/cssHomePage/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="<%=request.getContextPath()%>/resources/cssHomePage/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/cssHomePage/flexslider.css" >
		<script src="<%=request.getContextPath()%>/resources/js_home/jquery.flexslider.js"></script>
		
		<script type="text/javascript">
		function company(){
			$('#sortItem').val("");
			var brandName=$("#brandName").val();
			var priceRange=$("#priceRange").val();

		
                     jQuery.ajax({
                        
                    url:'mobileList.do?brandname='+brandName+'&priceRange='+priceRange,
                    dataType:'text',
                    success: function(data)
                     {
                        document.getElementById("list").innerHTML = data; 
                    }
                    }).responseText;
				
		}
		
		
		function sortBy(){
			$("#brandName").val("");
			$('#priceRange').val("");
			var sortItem=$("#sortItem").val();
		
                     jQuery.ajax({
                        
                    url:'mobileList.do?sortItem='+sortItem,
                    dataType:'text',
                    success: function(data)
                     {
                        document.getElementById("list").innerHTML = data; 
                    }
                    }).responseText;
				
		}
                   
                function doBike(){
                   var bikeBrand= document.getElementById("category").value;
                    jQuery.ajax({
                        
                    url:'listBikes.do?brandName='+bikeBrand,
                    dataType:'text',
                    success: function(data)
                     {
                         alert(data);
                        document.getElementById("list").innerHTML = data; 
                    }
                    }).responseText;
                }
                function bikeBrand(){
                    
                    var brandName=document.getElementById("companyName").value;
                    alert(brandName);
                    //window.location.href='bikes.do?bikeBrand='+brandName;
                    jQuery.ajax({
                     
                    url:'listBikes.do?brandName='+brandName,
                    dataType:'text',
                    success: function(data)
                     {
                         alert(data);
                        document.getElementById("restrosearch").innerHTML = ""; 
                        document.getElementById("model").innerHTML = ""; 
                    }
                    }).responseText;
				
                    
                }
            
		</script>

	</head>
	
	
	<body>
	
		<!-- HEADER -->
	<header>
<div class="wrapper cf" style="width: 1059px;">

        <div id="logo">
            <a href="homePage.do?help=index"><img alt="Simpler" src="img/logo.png" style="height: 92px; width: 423px; margin-top: -10px; margin-bottom: -20px;"></a>
            <input type="hidden" name="sitesearch" value="www.dekhoreview.com">
        </div>
        
     <form class="navbar-search" method="get" action="http://www.google.com/search" target="_blank"> 
<input type="text" style="margin: 28px 0px 0px; padding: 4px 16px; font-family: Arial,Helvetica,sans-serif; font-size: 14px; border-width: 1px 0px 1px 1px; border-style: solid none solid solid; border-color: rgb(0, 118, 163) -moz-use-text-color rgb(0, 118, 163) rgb(0, 118, 163); -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; border-top-left-radius: 5px; border-bottom-left-radius: 5px; width: 168px;" maxlength="120" size="29" name="q" class="tftextinput">
<input type="hidden" name="sitesearch" value="http://dekhoreview.shan123452008.cloudbees.net/">
</form>
        <!-- nav -->
        
      <ul id="nav" class="sf-menu" style="margin-top: -59px;">
					<li><a href="homePage.do?help=index"><img src="<%=request.getContextPath()%>/resources/imagesPic/pictures/Home_icon.png" style=" width: 40px; height: 40px; padding-top: 14px;"></a></li>
					<li class="current-menu-item"><a href="blog.html">BLOG</a>
                                         <ul>
							<li><a href="blog.do">Read Blog</a></li>
                                                        <li><a href="writeBlog.do">Write Blog</a></li>
							
                                         </ul></li>
                                         
                                         <li class="current-menu-item"><a href="signInUser.do">REVIEWS</a>
                                                <ul>
                                                    <li><a href="details.do">Movie</a></li>
                                                    <li><a href="homePage.do?help=index7">Restro</a></li>
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