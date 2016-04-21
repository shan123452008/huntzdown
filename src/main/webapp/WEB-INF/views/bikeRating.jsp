<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html>
<html class="no-js">

	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0">
        <meta property="og:type" name="og:type" content="website" />
		<meta property="og:title" name="og:title" content="${titlePage}" />
		<meta property="og:url" name="og:url" content="http://huntzdown-mobreview.rhcloud.com/newsFacts?tag=${userIdBlog}"/>
		<meta property="og:image" name="og:image" content="${imagePath}" />
		<meta property="fb:app_id" content="1698006363811207" /> 
        <title>${titlePage}</title>
        <meta name="Name" content="${titlePage}">
		<meta name="description" content="${titlePage}">
		<meta name="Image" content="${imagePath}">
		<meta http-equiv="content-type" content="text/html;charset=UTF-8">
		<META NAME="ROBOTS" CONTENT="INDEX, FOLLOW">
		<meta name="keywords" content="${keywords}"/> 
		

        <%@include file="includeCssJs.jsp" %> 
    </head>
		<!-- ENDS HEADER -->
				 <jsp:include page="Header.jsp"/>

		<!-- MAIN -->
		<body>
		<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-XXXX"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-XXXX');</script>
		<script>
		  window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '1698006363811207',
		      xfbml      : true,
		      version    : 'v2.5'
		    });
		  };
		
		  (function(d, s, id){
		     var js, fjs = d.getElementsByTagName(s)[0];
		     if (d.getElementById(id)) {return;}
		     js = d.createElement(s); js.id = id;
		     js.src = "//connect.facebook.net/en_US/sdk.js";
		     fjs.parentNode.insertBefore(js, fjs);
		   }(document, 'script', 'facebook-jssdk'));
		</script>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=1698006363811207";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
				
		<div id="main">
			<div class="wrapper cf" style="width: 1256px;">
			
			<!-- masthead -->
			<div class="masthead cf mb" style="width: 948px;">
				${heading}
			</div>
			<!-- ENDS masthead -->
			
			<!-- Begin BidVertiser code -->
			<!-- <SCRIPT
				SRC="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=717879&bid=1785726"
				TYPE="text/javascript"></SCRIPT> -->
			<!-- End BidVertiser code -->
			
				
			<!-- posts list -->
        	<div id="posts-list" class="cf">        	
	        		
	        		
				<!-- Standard -->
				<article class="format-standard">
					
					<div class="project-slider">
				        <div class="flexslider">
						  <ul class="slides">
						   	${bikeRating}
						   
						  </ul>
						</div>
					</div>
					
				</article>
				<!-- ENDS  Standard -->
					
					
				<!-- comments list -->
				<div id="comments-wrap">
					<h4 class="heading">Comments</h4>
					
					<ol class="commentlist">
					
					</ol>
					<!-- Begin BidVertiser code -->
<!-- 						<SCRIPT SRC="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=717879&bid=1786041" TYPE="text/javascript"></SCRIPT>
 -->						<!-- End BidVertiser code --> 
				
				</div>
				<!-- ENDS comments list -->
						
						
			
				<div id="fb-root"></div>
				<div class="fb-comments" data-href="http://huntzdown-mobreview.rhcloud.com/newsFacts?tag=${userIdBlog}" data-numposts="5" data-colorscheme="light" data-width="100%"></div>
<%-- 		        <div class="fb-send" data-href="http://huntzdown-mobreview.rhcloud.com/newsFacts?pictureId=${userIdBlog}"></div>
 --%>				<div class="fb-like" data-share="true" data-width="200"	data-show-faces="true"></div>
 					
				<div class="g-plusone" data-size="tall" data-annotation="inline" data-width="200" data-href="http://huntzdown-mobreview.rhcloud.com/newsFacts?tag=${userIdBlog}"></div>
				<!-- Place this tag after the last +1 button tag. -->
				<script type="text/javascript">
				  (function() {
				    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
				    po.src = 'https://apis.google.com/js/platform.js';
				    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
				  })();
				</script>

					<a href="https://twitter.com/share" class="twitter-share-button"{count} data-url="http://huntzdown-mobreview.rhcloud.com/newsFacts?tag=${userIdBlog}" data-text="${titlePage}" data-via="huntzzdown" data-size="large" data-related="huntzzdown" data-hashtags="huntzdown" data-dnt="true">Tweet</a>
					<a href="https://twitter.com/huntzzdown" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @huntzzdown</a>
					<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
					
				<!-- ENDS Respond -->

				<div>&nbsp;</div>
				<div>&nbsp;</div>
				<!-- Begin BidVertiser code -->
				 <!-- Begin BidVertiser code -->
<!-- 					<SCRIPT SRC="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=717879&bid=1782279" TYPE="text/javascript"></SCRIPT>				
 -->					<!-- End BidVertiser code --> 
				<!-- End BidVertiser code -->
				
				<div>&nbsp;</div>
				<div>&nbsp;</div>
				
				<!--Latest Reviews-->
                    <div id="comments-wrap">
                        <h4 class="heading">MORE HUNTZDOWN POST</h4>
                        

                        <ol class="commentlist">


                            <li class="comment even thread-even depth-1" id="li-comment-1">

                                <div id="comment-1" class="comment-body cf">

                                    ${restroDetails}            

                               </div>
                            </li>
                            



                        </ol>
                    </div>


			</div>

			<aside id="sidebar" class="asidePage">
			
			
			<script charset="utf-8" type="text/javascript">
						amzn_assoc_ad_type = "responsive_search_widget";
						amzn_assoc_tracking_id = "huntzdown-21";
						amzn_assoc_marketplace = "amazon";
						amzn_assoc_region = "IN";
						amzn_assoc_placement = "";
						amzn_assoc_search_type = "search_widget";
						amzn_assoc_width = 250;
						amzn_assoc_height = 370;
						amzn_assoc_default_search_category = "Electronics";
						amzn_assoc_default_search_key = "";
						amzn_assoc_theme = "light";
						amzn_assoc_bg_color = "FFFFFF";
						</script>
					<script src="//z-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&Operation=GetScript&ID=OneJS&WS=1&MarketPlace=IN"></script>
					
					<div>&nbsp;</div>
					<div>&nbsp;</div>
				
				<div id="fb-root"></div>
				<div class="fb-page" data-href="https://www.facebook.com/huntzdown/"
					data-tabs="timeline" data-small-header="false" data-width="239"
					data-adapt-container-width="true" data-hide-cover="false"
					data-show-facepile="true">
					<div class="fb-xfbml-parse-ignore">
						<blockquote cite="https://www.facebook.com/huntzdown/">
							<a href="https://www.facebook.com/huntzdown/">Huntzdown</a>
						</blockquote>
					</div>
				</div>


				<div>&nbsp;</div>
				<div>&nbsp;</div>
				<!-- Begin BidVertiser code -->
<!-- 				<SCRIPT SRC="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=717879&bid=1786045" TYPE="text/javascript"></SCRIPT>
 -->				<!-- End BidVertiser code --> 
				<div>&nbsp;</div>
				<div>&nbsp;</div>
				
				
				

				<a class="twitter-timeline" href="https://twitter.com/huntzzdown"
					data-widget-id="686142833212821504" width="250">Tweets by
					@huntzzdown</a>
				<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


				<style type="text/css">
iframe[id^='twitter-widget-'] {
	width: 100% !important;
	min-width: 239px !important;
}

.fb-page, .fb-page iframe[style], .fb-like-box, .fb-like-box iframe[style]
	{
	width: 100% !important;
	min-width: 239px !important;
}
</style>

				<div>&nbsp;</div>
				<div>&nbsp;</div>

				<!-- Begin BidVertiser code -->
<!-- 				<SCRIPT SRC="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=717879&bid=1786046" TYPE="text/javascript"></SCRIPT>
 -->				<!-- End BidVertiser code --> 
				
				<div>&nbsp;</div>
				<div>&nbsp;</div>

<!--BEGIN TRIBALAD ADZONE DISPLAY CODE -->
<script>(function(ins){ if ('https:'==document.location.protocol){var h='link';} else {var h='z42577-p36510-n231.pub';}
var d = "abd"+ins, s = document.createElement('script');document.write('<div id="'+d+'"></div>');
s.type = 'text/javascript'; s.src = '//'+h+'.pgssl.com/adv/ap/fastjsa.asp?m=i&z=42577&p=36510&n=231&s=m&rr='+d; s.async = true; s.defer = true; 
document.body.appendChild(s);}((++window.abd || (window.abd = 0))));</script>
<!--END TRIBALAD ADZONE DISPLAY CODE -->


				<br>
				<br>


			</aside>
			<!-- ENDS sidebar -->
		</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		
		
		
        <!-- FOOTER -->
	 	  <%@include file="footer.jsp" %> 
	    <!-- ENDS FOOTER -->
		
		
	</body>
	
	
	
</html>