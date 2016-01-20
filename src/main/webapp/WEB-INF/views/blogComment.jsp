<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">

	<head>
        <meta charset="utf-8"/>
        <meta property="og:type" name="og:type" content="website" />
		<meta property="og:title" name="og:title" content="Huntzdown" />
		<meta property="og:url" name="og:url" content="http://huntzdown-mobreview.rhcloud.com/blogInfo?pictureId=${userIdBlog}"/>
		<meta property="og:image" name="og:image" content="${imagePath}" />
		<meta property="fb:app_id" content="1698006363811207" /> 
		
        <title>${titlePage}</title>


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
							<div class="post-heading" >${haedingBlog}</div>
							<div class="entry-content">
							
							${detailsDivTextBlog}
							
								
							</div>
							
							
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
				<div class="fb-comments" data-href="http://huntzdown-mobreview.rhcloud.com/blogInfo?pictureId=${userIdBlog}" data-numposts="5" data-colorscheme="light" data-width="100%"></div>
<%-- 		        <div class="fb-send" data-href="http://huntzdown-mobreview.rhcloud.com/blogInfo?pictureId=${userIdBlog}"></div>
 --%>				<div class="fb-like" data-share="true" data-width="450"	data-show-faces="true"></div>
				<!-- ENDS Respond -->
					
										
				
    		</div>
    	
			
			</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		
		
		
        <!-- FOOTER -->
	 	  <%@include file="footer.jsp" %> 
	    <!-- ENDS FOOTER -->
		
		
	</body>
	
	
	
</html>