<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>RS-1 Clean | Style Demo</title>
<meta charset="iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="styles/mediaqueries.css" type="text/css" media="all">
<script src="scripts/jquery-1.7.2.min.js"></script>
<script src="scripts/jquery-defaultvalue.js"></script>
<script src="scripts/jquery-mobilemenu.min.js"></script>
<script>
$(document).ready(function () {
    $('.topnav').mobileMenu({
        combine: false,
        switchWidth: 600,
		indentString: '&nbsp;&nbsp;&nbsp;',
        prependTo: 'nav#topnav'
    });
});
</script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="styles/ie.css" type="text/css" media="all">
<script src="scripts/css3-mediaqueries.min.js"></script>
<script src="scripts/html5shiv.min.js"></script>
<![endif]-->
</head>
<body>
<div class="wrapper row1">
  <header id="header">
    <hgroup>
      <h1><a href="index.html">DekhoReview.com</a></h1>
      <h1>Admin Site</h1>
    </hgroup>
    <!-- ################################################################################################ -->
    <nav id="topnav">
      <ul class="topnav clear">
        <li><a href="index.html">Homepage</a></li>
        <li class="active"><a href="style-demo.html">Style Demo</a></li>
        <li><a href="full-width.html">Full Width</a></li>
        <li><a href="gallery.html">Gallery</a></li>
        <li><a href="portfolio.html">Portfolio</a></li>
        <li class="last"><a href="#">Link Text</a></li>
      </ul>
    </nav>
    <div class="clear"></div>
  </header>
</div>
<!-- content -->
<div class="wrapper row3">
  <div id="container">
   <li><a href="restro.do">Add a hotel</a></li>
 
</div></div>
<!-- Footer -->
<div class="wrapper row4">
  <div id="footer">
    <!-- ################################################################################################ -->
    <section class="one_quarter first">
      <h2 class="title">From The Blog</h2>
      <article>
        <header>
          <h2>Post Title</h2>
          <address>
          <a href="#">Admin</a>, domainname.com
          </address>
          <time datetime="2000-04-06">Friday, 6<sup>th</sup> April 2000</time>
        </header>
        <p>Vestibulumaccumsan egestibulum eu justo convallis augue estas aenean elit intesque sed. Facilispede estibulum nulla orna nisl velit elit ac aliquat non tincidunt. Namjusto cras urna urnaretra lor urna neque sed quis orci nulla.</p>
        <footer class="more"><a href="#">Read More &raquo;</a></footer>
      </article>
    </section>
    <section class="one_quarter">
      <h2 class="title">Quick Links</h2>
      <nav>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit</a></li>
          <li><a href="#">Amet consectetur</a></li>
          <li><a href="#">Praesent vel sem id</a></li>
          <li><a href="#">Curabitur hendrerit est</a></li>
          <li><a href="#">Aliquam eget erat nec sapien</a></li>
          <li><a href="#">Cras id augue nunc</a></li>
          <li class="last"><a href="#">Sed a nulla urna</a></li>
        </ul>
      </nav>
    </section>
    <section class="one_quarter">
      <h2 class="title">Latest Tweets</h2>
      <div class="ft_tweets">
        <ul>
          <li><a href="#">@namehere</a> Justoid nonummy laoreet phasellent penatoque in antesque pellus elis eget tincidunt. Nequatdui laorem justo a non tellus laoremut vitae doloreet 1 day ago</li>
          <li><a href="#">@namehere</a> Justoid nonummy laoreet phasellent penatoque in antesque pellus elis eget tincidunt. Nequatdui laorem justo a non tellus laoremut vitae doloreet 1 day ago</li>
        </ul>
      </div>
    </section>
    <section class="one_quarter last">
      <h2 class="title">Contact Us</h2>
      <form method="post" action="#">
        <fieldset>
          <legend>Contact Form:</legend>
          <label for="cf_name">Name:</label>
          <input type="text" name="cf_name" id="cf_name" value="">
          <label for="cf_email">Email:</label>
          <input type="text" name="cf_email" id="cf_email" value="">
          <label for="cf_subject">Subject:</label>
          <input type="text" name="cf_subject" id="cf_subject" value="">
          <label for="cf_message">Message:</label>
          <textarea name="cf_message" id="cf_message" cols="45" rows="10"></textarea>
          <button type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </section>
    <!-- ################################################################################################ -->
    <div class="clear"></div>
  </div>
</div>
<!-- Copyright -->
<div class="wrapper row5">
  <footer id="copyright">
    <p class="fl_left">Copyright &copy; 2012 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <div class="clear"></div>
  </footer>
</div>
<script>
$(document).ready(function () {
    $("#cf_name, #cf_email, #cf_subject, #cf_message").defaultvalue("Full Name", "Email Address", "Subject", "Message");
});
</script>
</body>
</html>
