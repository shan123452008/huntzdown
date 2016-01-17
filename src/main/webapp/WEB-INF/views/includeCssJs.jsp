<!DOCTYPE html>
<title>HuntzDown</title>
<link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/img/iconSiteLogo.png">
		 
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
		
		
		<!-- Screen -->
     	<link rel='stylesheet' media="(max-width: 700px)" href='<%=request.getContextPath()%>/resources/cssHomePage/mobile.css' />
		<link rel='stylesheet' media="(min-width: 701px)" href='<%=request.getContextPath()%>/resources/cssHomePage/tablet.css' />
		<link rel='stylesheet' media='(min-width: 901px)' href='<%=request.getContextPath()%>/resources/cssHomePage/desktop.css' />
<style>
    
            input[type=submit] {

                margin-right: 20px;

                width: 80px;
                height: 27px;
                font-size: 14px;
                font-weight: bold;
                color: #fff;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef), to(#6ec2e8));
                background-image: -moz-linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
                background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
                border-radius: 30px;
                border: 1px solid #66add6;
                box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff), to(#6ec2e8));
                background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
                background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
            }

            input[type=submit]:active {
                background-image: -webkit-gradient(linear, left top, left bottom, from(#6ec2e8), to(#b6e2ff));
                background-image: -moz-linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
                background-image: linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
            }

</style>

       