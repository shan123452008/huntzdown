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
		<meta property="og:url" name="og:url" content="http://huntzdown-mobreview.rhcloud.com/blogInfo?tag=${userIdBlog}"/>
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
			<div class="wrapper cf">
			
			
			<!-- masthead -->
			<div class="masthead cf">
				${haedingBlog}
			</div>
			<!-- ENDS masthead -->
			
			
				
			<!-- posts list -->
        	<div id="posts-list" class="cf">        	
	        		
	        		
				<!-- Standard -->
				<article class="format-standard">
					<div class="feature-image">
						  ${detailsBlog}
					</div>
					<div class="box cf">
					
						<!-- <div class="entry-date"><div class="number">
						Rating</div>
						<div class="month">2</div>
						
						</div> -->
						
						<div class="excerpt">
							<div class="post-heading" style="margin-left: 7px;">${haedingBlog}</div>
							<div class="entry-content"
							style="font-size: 20px;font-family: 'ProximaNova-Regular', 'Arial',sans-serif;margin: 0px 8px 0;line-height: 47px;text-align: justify;">

							${detailsDivTextBlog}</div>


					</div>
						
						
					</div>
				</article>
				<!-- ENDS  Standard -->
					
					
				<!-- comments list -->
				<div id="comments-wrap">
					<h4 class="heading">Comments</h4>
					
					<ol class="commentlist">
					
					</ol>
				</div>
				<!-- ENDS comments list -->
						
						
			
				<div id="fb-root"></div>
				<div class="fb-comments" data-href="http://huntzdown-mobreview.rhcloud.com/blogInfo?tag=${userIdBlog}" data-numposts="5" data-colorscheme="light" data-width="100%"></div>
<%-- 		        <div class="fb-send" data-href="http://huntzdown-mobreview.rhcloud.com/blogInfo?pictureId=${userIdBlog}"></div>
 --%>				<div class="fb-like" data-share="true" data-width="400"	data-show-faces="true"></div>
 					
				<div class="g-plusone" data-size="tall" data-annotation="inline" data-width="250" data-href="http://huntzdown-mobreview.rhcloud.com/blogInfo?tag=${userIdBlog}"></div>
				<!-- Place this tag after the last +1 button tag. -->
				<script type="text/javascript">
				  (function() {
				    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
				    po.src = 'https://apis.google.com/js/platform.js';
				    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
				  })();
				</script>

					<a href="https://twitter.com/share" class="twitter-share-button"{count} data-url="http://huntzdown-mobreview.rhcloud.com/blogInfo?tag=${userIdBlog}s" data-text="${titlePage}" data-via="huntzzdown" data-size="large" data-related="huntzzdown" data-hashtags="huntzdown" data-dnt="true">Tweet</a>
					<a href="https://twitter.com/huntzzdown" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @huntzzdown</a>
					<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
					
				<!-- ENDS Respond -->	
				<script type='text/javascript' src='//clksite.com/adServe/banners?tid=121736_206505_0&type=slider&size=800x440&animate=on'></script>				
										
				
    		</div>
    	</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		
		
		
        <!-- FOOTER -->
	 	  <%@include file="footer.jsp" %> 
	    <!-- ENDS FOOTER -->
		
		
	</body>
	
	
	
</html>