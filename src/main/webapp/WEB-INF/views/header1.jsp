<head>
		<meta charset="utf-8"/>
		<title>DekhoReview.com</title>
		 
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="cssHomePage/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
		
                 
                
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
                <link rel="stylesheet" href="cssHomePage/newlook.css" media="all"  /> 
                <link rel="stylesheet" href="cssHomePage/fornewjsp.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="cssHomePage/jquery.tweet.css" media="all"  /> 
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
		<link rel="stylesheet" href="js_home/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js_home/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="js_home/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="js_home/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="js_home/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="cssHomePage/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="js_home/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="cssHomePage/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="cssHomePage/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="cssHomePage/flexslider.css" >
		<script src="js_home/jquery.flexslider.js"></script>
		
		<script type="text/javascript">
		function company(){
			var brandName=document.getElementById("brandName").value;
	            //  window.location.href='mobileList.do?brandname='+brandName;
                     jQuery.ajax({
                        
                    url:'mobileList.do?brandname='+brandName,
                    dataType:'text',
                    success: function(data)
                     {
                         alert(data);
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
					<a href="index.html"><img  src="img/logo.png" alt="Simpler"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="homePage.do?help=index"><img src="imagesPic/pictures/Home_icon.png" style=" width: 40px; height: 40px; padding-top: 14px;"></a></li>
					<li class="current-menu-item"><a href="signInUser.do">SIGN IN</a></li>
				   <li class="current-menu-item"><a href="signInUser.do">Blogs</a>
				   <ul>
							<li><a href="blog.do">Read Blog</a></li>
							
						</ul>
				   </li>
                                    <li class="current-menu-item"><a href="signInUser.do">Reviews</a>
				   <ul>
							<li><a href="details.do">Movie</a></li>
							<li><a href="details.do">Restro</a></li>
							<li><a href="mobile.do">Mobiles</a></li>
							
							
						</ul>
				   </li>
					
					<li><a href="#">MODE</a>
					<ul>
							<li><a href="details.do">Tour for Reel Site</a></li>
						</ul></li>
                                        <li><a href="about.do">ABOUT</a></li>
       
					<li><a href="contactUs.do">CONTACT</a></li>
				</ul>
                                
				<div id="combo-holder"></div>
				<!-- ends nav -->

			</div>
		</header>