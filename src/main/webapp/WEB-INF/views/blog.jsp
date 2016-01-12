<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
<!--   start-->
<link rel="stylesheet" media="all" href="resources/cssHomePage/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
		
                 
                
		<!-- JS -->
		<script src="resources/js_home/jquery-1.7.1.min.js"></script>
		<script src="resources/js_home/custom.js"></script>
		<script src="resources/js_home/tabs.js"></script>
		<script src="resources/js_home/css3-mediaqueries.js"></script>
		<script src="resources/js_home/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="resources/js_home/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="resources/js_home/jquery.easing.js"></script>
		<script src="resources/js_home/lof-slider.js"></script>
		<link rel="stylesheet" href="resources/cssHomePage/lof-slider.css" media="all"  /> 
                <link rel="stylesheet" href="resources/cssHomePage/newlook.css" media="all"  /> 
                <link rel="stylesheet" href="resources/cssHomePage/fornewjsp.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="resources/cssHomePage/jquery.tweet.css" media="all"  /> 
		<script src="resources/js_home/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="resources/cssHomePage/superfish.css" /> 
		<script  src="resources/js_home/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="resources/js_home/superfish-1.4.8/js/superfish.js"></script>
		<script  src="resources/js_home/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="resources/js_home/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="resources/js_home/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="resources/js_home/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="resources/js_home/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="resources/js_home/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="resources/js_home/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="resources/cssHomePage/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="resources/js_home/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="resources/cssHomePage/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="resources/cssHomePage/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="resources/cssHomePage/flexslider.css" >
		<script src="resources/js_home/jquery.flexslider.js"></script>
<!--end-->
        <link href="resources/cssHomePage/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="resources/js_home/jquery.js"></script>  
        <script>
        $( document ).ready(function() {
            
            document.getElementById('dialog-open').style.display = 'none';
            document.getElementById('signUpForm').style.display = 'none';

             });
        </script>
        <script type="text/javascript" src="resources/js_home/jquery-1.5.2.js"></script> 
        <script type="text/javascript" src="resources/js_home/nicEdit-latest.js"></script>
         <script type="text/javascript">
         
            //<![CDATA[
             bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
             //]]>
             
        
          
    function showDialog()
    {
        var nicInstance = nicEditors.findEditor('comment1');
        alert("hi"+nicInstance);
         var notes = nicInstance.getContent();
         alert(notes);
        
         document.getElementById('comment').value = notes;


       $("#dialog-open").dialog({
		    modal: false,
		    draggable: true,
		    resizable: true,
		    position: ['center', 'center'],
		    width: 500,
		    dialogClass: 'ui-dialog-osx',
		    buttons: {
		    "Sign Up": function() {		         
		         $(this).dialog("close");
                         openSignUp();
		        },
		        "Sign In": function() {
                            signIn();
		        }
		    }
		});
    }
        function openSignUp(){
            
            $("#signUpForm").dialog({
		    modal: false,
		    draggable: true,
		    resizable: true,
		    position: ['center', 'center'],
		    width: 500,
		    dialogClass: 'ui-dialog-osx',
		    buttons: {
		    "Submit": function() {
                         submitVal();
		        }
		    }
		});
            
        }
        
        function checkval(){
            var nicInstance = nicEditors.findEditor('comment1');
            var notes = nicInstance.getContent();

            alert(notes);
        }
        
        function submitVal(){
           var userMail=document.getElementById("email").value;
           var name=document.getElementById("name").value;
           var image=document.getElementById("image").value;
           alert(image);
           var password=document.getElementById("password").value;
           var city=document.getElementById("city").value;

           if(userMail == "" || name == ""||image == ""||password == ""||city == ""){
          	 alert("Please enter all the fields");
           }
           
           else{

           var error="";
             jQuery.ajax({
                       
                    url:'/searchUser?userMail='+userMail,
                    
                    dataType:'text',
                    success: function(data)
                     {
                        document.getElementById("div").innerHTML="";

                         document.getElementById("div1").innerHTML=data;
                         alert(data);
                         if(data.length === 0){
                            document.getElementById("myFormval").submit();
                            document.getElementById("blogForm").submit();
                        }
                        
                       
                    }
                    }).responseText;
        }
            
        }
        
        function signIn(){
        	
            
            var uName=document.getElementById("userName").value;
            var password1=document.getElementById("password1").value;
            
             if(uName == "" || password1 == ""){
            	 alert("Please enter username and password both");
             }
             else{
              jQuery.ajax({
                       
                    url:'searchUser.do?userName='+uName+'&password='+password1,
                    
                    dataType:'text',
                    success: function(data)
                     {
                    	alert("hello"+data);
                         document.getElementById("div").innerHTML=data;
                         if(data === "Success"){
                                document.getElementById("blogForm").submit();

                         }
                    }
                    }).responseText;
             }
        }

            
    </script>
    </head>
    <header>
			<div class="wrapper cf">
				
				<div id="logo">
					<a href="homePage.do?help=index"><img alt="Simpler" src="resources/img/logo.png" style="height: 92px; width: 423px; margin-top: -10px; margin-bottom: -20px;"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="homePage.do"><span>HOME</span></a></li>
					<li class="current-menu-item"><a href="blog.html">BLOG</a>
                                         <ul>
							<li><a href="blog.do">Read Blog</a></li>
                                                        <li><a href="writeBlog.do">Write Blog</a></li>
							
                                         </ul></li>
                                         
                                         <li class="current-menu-item"><a href="signInUser.do">REVIEWS</a>
                                                <ul>
                                                    <li><a href="details.do">Movie</a></li>
                                                    <li><a href="details.do">Restro</a></li>
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
<style type="text/css">
    #wrapper {
        width:650px;
        margin:0 auto;
        font-family:Verdana, sans-serif;
    }
    legend {
        font-size:16px;
        padding:0 10px;
        background:#fff;
        -moz-border-radius:4px;
        box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
        padding:5px 10px;
        text-transform:uppercase;
        font-family:Helvetica, sans-serif;
        font-weight:bold;
    }
    fieldset {
        border-radius:4px;
        background: #fff; 
        background: -moz-linear-gradient(#fff, #f9fdff);
        background: -o-linear-gradient(#fff, #f9fdff);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#f9fdff));
        background: -webkit-linear-gradient(#fff, #f9fdff);
        padding:20px;
        border-color:rgba(4, 129, 177, 0.4);
    }
    input,
    textarea {
      
        background: #fff;
        border: 1px solid #CCCCCC;
        font-size: 14px;
        line-height: 1.2em;
        margin-bottom:15px;

        -moz-border-radius:4px;
        -webkit-border-radius:4px;
        border-radius:4px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.2);
    }
    input[type="text"],
    input[type="password"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    
    #country{
        height: 35px;
        width:294px;
    }
    
    input[type="file"],
    input[type="uploadImage"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    
    
      
    input[type="submit"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
     input[type="button"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
    textarea {
        padding:3px;
        width:96%;
        height:100px;
    }
    textarea:focus {
        background:#ebf8fd;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        opacity:0.6;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        border-color:#ccc;
    }
    .small {
        line-height:14px;
        font-size:12px;
        color:#999898;
        margin-bottom:3px;
    }
</style>
<body>
       <div id="wrapper">
        <form:form method="post" id="blogForm" action="blog.do" modelAttribute="blog" enctype="multipart/form-data" >
            <fieldset>
                <legend>Blog Form</legend>
                <div>
                    <td>Blog Name</td>
                    <input type="text" placeholder="Blog Name" name="blogname" id="blogname"/>                
                </div>
                <div>
                     <td>Picture&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <input type="file" name="uploadImage" id="uploadImage" />               
                </div>
               
                <div>
                    <div class="small">Comments  for Blog with details</div>
                   <textarea id="comment1" name="comment1"></textarea>
                </div> 
                <input type="hidden" id="comment" name="comment"/> 
                <input type="button" value="Submit" onclick="showDialog()"/>	
                
                <div id="dialog-open">
                    <div id="div"></div>
                  <input type="text" placeholder="Email" name="userName" id="userName"/>
                  <input type="text" placeholder="Password" name="password1" id="password1"/>                
                </div>
                
                

            </fieldset>    
        </form:form>
        
        
         <div id="signUpForm">
                     <form:form id="myFormval" name="myFormval" method="post" action="addBlogUser.do" modelAttribute="addUserBlog" enctype="multipart/form-data">
                  <table>
                      <div id="div1"></div>
                      <tr><td>Name</td>
                          <td><input type="text" placeholder="Name" name="name" id="name"/></td>
                  </tr>
                  
                   <tr><td>Your Image</td>
                          <td><input type="file" name="image" id="image"/></td>
                  </tr>
                  
                  <tr><td>Email</td>
                      <td><input type="text" placeholder="Email Id" name="email" id="email"/></td> 
                  </tr>
                  <tr><td>Password</td>
                      <td><input type="text" placeholder="Password" name="password" id="password"/></td>
                  </tr>
                  <tr><td>Gender</td>
                      <td><input type="radio" checked="checked" name="Gender" id="gender" value="female">Female&nbsp;
                        &nbsp;
                        <input type="radio" name="Gender" id="gender" value="male">Male</td>
                  </tr>
                   <tr><td>City</td>
                      <td><input type="text" placeholder="City" name="city" id="city"/></td>
                  </tr>
                  
                   <tr><td>Country</td>
                       <td>
                         <select id="country" name="country">
                                                                <option value="India" selected="selected">India</option>
                                                                <option value="United States of America">United States of America</option>
                                                                <option value="United Kingdom">United Kingdom</option>
                                                                <option value="United Arab Emirates">United Arab Emirates</option>
                                                                <option disabled="disabled" value="0">---</option>
                                                                <option value="Afghanistan">Afghanistan</option>
                                                                <option value="Albania">Albania</option>
                                                                <option value="Algeria">Algeria</option>
                                                                <option value="American Samoa">American Samoa</option>
                                                                <option value="Andorra">Andorra</option>
                                                                <option value="Angola">Angola</option>
                                                                <option value="Anguilla">Anguilla</option>
                                                                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                                                <option value="Argentina">Argentina</option>
                                                                <option value="Armenia">Armenia</option>
                                                                <option value="Aruba">Aruba</option>
                                                                <option value="Australia">Australia</option>
                                                                <option value="Austria">Austria</option>
                                                                <option value="Azerbaijan">Azerbaijan</option>
                                                                <option value="Bahamas">Bahamas</option>
                                                                <option value="Bahrain">Bahrain</option>
                                                                <option value="Bangladesh">Bangladesh</option>
                                                                <option value="Barbados">Barbados</option>
                                                                <option value="Belarus">Belarus</option>
                                                                <option value="Belgium">Belgium</option>
                                                                <option value="Belize">Belize</option>
                                                                <option value="Benin">Benin</option>
                                                                <option value="Bermuda">Bermuda</option>
                                                                <option value="Bhutan">Bhutan</option>
                                                                <option value="Bolivia">Bolivia</option>
                                                                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                                                <option value="Botswana">Botswana</option>
                                                                <option value="Bouvet Island">Bouvet Island</option>
                                                                <option value="Brazil">Brazil</option>
                                                                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                                                <option value="British Virgin Islands">British Virgin Islands</option>
                                                                <option value="Brunei">Brunei</option>
                                                                <option value="Bulgaria">Bulgaria</option>
                                                                <option value="Burkina Faso">Burkina Faso</option>
                                                                <option value="Burundi">Burundi</option>
                                                                <option value="Cambodia">Cambodia</option>
                                                                <option value="Cameroon">Cameroon</option>
                                                                <option value="Canada">Canada</option>
                                                                <option value="Cape Verde">Cape Verde</option>
                                                                <option value="Cayman Islands">Cayman Islands</option>
                                                                <option value="Central African Republic">Central African Republic</option>
                                                                <option value="Chad">Chad</option>
                                                                <option value="Chile">Chile</option>
                                                                <option value="China">China</option>
                                                                <option value="Christmas Island">Christmas Island</option>
                                                                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                                                <option value="Colombia">Colombia</option>
                                                                <option value="Comoros">Comoros</option>
                                                                <option value="Congo">Congo</option>
                                                                <option value="Congo - Democratic Republic of">Congo - Democratic Republic of</option>
                                                                <option value="Cook Islands">Cook Islands</option>
                                                                <option value="Costa Rica">Costa Rica</option>
                                                                <option value="Cote d''Ivoire">Cote d'Ivoire</option>
                                                                <option value="Croatia">Croatia</option>
                                                                <option value="Cuba">Cuba</option>
                                                                <option value="Cyprus">Cyprus</option>
                                                                <option value="Czech Republic">Czech Republic</option>
                                                                <option value="Denmark">Denmark</option>
                                                                <option value="Djibouti">Djibouti</option>
                                                                <option value="Dominica">Dominica</option>
                                                                <option value="Dominican Republic">Dominican Republic</option>
                                                                <option value="East Timor">East Timor</option>
                                                                <option value="Ecuador">Ecuador</option>
                                                                <option value="Egypt">Egypt</option>
                                                                <option value="El Salvador">El Salvador</option>
                                                                <option value="Equitorial Guinea">Equitorial Guinea</option>
                                                                <option value="Eritrea">Eritrea</option>
                                                                <option value="Estonia">Estonia</option>
                                                                <option value="Ethiopia">Ethiopia</option>
                                                                <option value="Falkland Islands (Islas Malvinas)">Falkland Islands (Islas Malvinas)</option>
                                                                <option value="Faroe Islands">Faroe Islands</option>
                                                                <option value="Fiji">Fiji</option>
                                                                <option value="Finland">Finland</option>
                                                                <option value="France">France</option>
                                                                <option value="French Guyana">French Guyana</option>
                                                                <option value="French Polynesia">French Polynesia</option>
                                                                <option value="Gabon">Gabon</option>
                                                                <option value="Gambia">Gambia</option>
                                                                <option value="Gaza Strip">Gaza Strip</option>
                                                                <option value="Georgia">Georgia</option>
                                                                <option value="Germany">Germany</option>
                                                                <option value="Ghana">Ghana</option>
                                                                <option value="Gibraltar">Gibraltar</option>
                                                                <option value="Greece">Greece</option>
                                                                <option value="Greenland">Greenland</option>
                                                                <option value="Grenada">Grenada</option>
                                                                <option value="Guadeloupe">Guadeloupe</option>
                                                                <option value="Guam">Guam</option>
                                                                <option value="Guatemala">Guatemala</option>
                                                                <option value="Guinea">Guinea</option>
                                                                <option value="Guinea-Bissau">Guinea-Bissau</option>
                                                                <option value="Guyana">Guyana</option>
                                                                <option value="Haiti">Haiti</option>
                                                                <option value="Heard Island &amp; McDonald Islands">Heard Island &amp; McDonald Islands</option>
                                                                <option value="Holy See (Vatican City)">Holy See (Vatican City)</option>
                                                                <option value="Honduras">Honduras</option>
                                                                <option value="Hong Kong">Hong Kong</option>
                                                                <option value="Hungary">Hungary</option>
                                                                <option value="Iceland">Iceland</option>
                                                                <option value="Indonesia">Indonesia</option>
                                                                <option value="Iran">Iran</option>
                                                                <option value="Iraq">Iraq</option>
                                                                <option value="Ireland">Ireland</option>
                                                                <option value="Israel">Israel</option>
                                                                <option value="Italy">Italy</option>
                                                                <option value="Jamaica">Jamaica</option>
                                                                <option value="Japan">Japan</option>
                                                                <option value="Jordan">Jordan</option>
                                                                <option value="Kazakhstan">Kazakhstan</option>
                                                                <option value="Kenya">Kenya</option>
                                                                <option value="Kiribati">Kiribati</option>
                                                                <option value="Kuwait">Kuwait</option>
                                                                <option value="Kyrgyzstan">Kyrgyzstan</option>
                                                                <option value="Laos">Laos</option>
                                                                <option value="Latvia">Latvia</option>
                                                                <option value="Lebanon">Lebanon</option>
                                                                <option value="Lesotho">Lesotho</option>
                                                                <option value="Liberia">Liberia</option>
                                                                <option value="Libya">Libya</option>
                                                                <option value="Liechtenstein">Liechtenstein</option>
                                                                <option value="Lithuania">Lithuania</option>
                                                                <option value="Luxembourg">Luxembourg</option>
                                                                <option value="Macau">Macau</option>
                                                                <option value="Macedonia">Macedonia</option>
                                                                <option value="Madagascar">Madagascar</option>
                                                                <option value="Malawi">Malawi</option>
                                                                <option value="Malaysia">Malaysia</option>
                                                                <option value="Maldives">Maldives</option>
                                                                <option value="Mali">Mali</option>
                                                                <option value="Malta">Malta</option>
                                                                <option value="Marshall Islands">Marshall Islands</option>
                                                                <option value="Martinique">Martinique</option>
                                                                <option value="Mauritania">Mauritania</option>
                                                                <option value="Mauritius">Mauritius</option>
                                                                <option value="Mayotte">Mayotte</option>
                                                                <option value="Mexico">Mexico</option>
                                                                <option value="Micronesia">Micronesia</option>
                                                                <option value="Moldova">Moldova</option>
                                                                <option value="Monaco">Monaco</option>
                                                                <option value="Mongolia">Mongolia</option>
                                                                <option value="Montserrat">Montserrat</option>
                                                                <option value="Morocco">Morocco</option>
                                                                <option value="Mozambique">Mozambique</option>
                                                                <option value="Myanmar">Myanmar</option>
                                                                <option value="Namibia">Namibia</option>
                                                                <option value="Naura">Naura</option>
                                                                <option value="Nepal">Nepal</option>
                                                                <option value="Netherlands">Netherlands</option>
                                                                <option value="Netherlands Antilles">Netherlands Antilles</option>
                                                                <option value="New Caledonia">New Caledonia</option>
                                                                <option value="New Zealand">New Zealand</option>
                                                                <option value="Nicaragua">Nicaragua</option>
                                                                <option value="Niger">Niger</option>
                                                                <option value="Nigeria">Nigeria</option>
                                                                <option value="Niue">Niue</option>
                                                                <option value="Norfolk Island">Norfolk Island</option>
                                                                <option value="North Korea">North Korea</option>
                                                                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                                                <option value="Norway">Norway</option>
                                                                <option value="Oman">Oman</option>
                                                                <option value="Pakistan">Pakistan</option>
                                                                <option value="Palau">Palau</option>
                                                                <option value="Panama">Panama</option>
                                                                <option value="Papua New Guinea">Papua New Guinea</option>
                                                                <option value="Paraguay">Paraguay</option>
                                                                <option value="Peru">Peru</option>
                                                                <option value="Philippines">Philippines</option>
                                                                <option value="Pitcairn Islands">Pitcairn Islands</option>
                                                                <option value="Poland">Poland</option>
                                                                <option value="Portugal">Portugal</option>
                                                                <option value="Puerto Rico">Puerto Rico</option>
                                                                <option value="Qatar">Qatar</option>
                                                                <option value="Reunion">Reunion</option>
                                                                <option value="Romania">Romania</option>
                                                                <option value="Russia">Russia</option>
                                                                <option value="Rwanda">Rwanda</option>
                                                                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                                                <option value="Saint Lucia">Saint Lucia</option>
                                                                <option value="Samoa">Samoa</option>
                                                                <option value="San Marino">San Marino</option>
                                                                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                                                <option value="Saudi Arabia">Saudi Arabia</option>
                                                                <option value="Senegal">Senegal</option>
                                                                <option value="Serbia and Montenegro">Serbia and Montenegro</option>
                                                                <option value="Seychelles">Seychelles</option>
                                                                <option value="Sierra Leone">Sierra Leone</option>
                                                                <option value="Singapore">Singapore</option>
                                                                <option value="Slovakia">Slovakia</option>
                                                                <option value="Slovenia">Slovenia</option>
                                                                <option value="Solomon Islands">Solomon Islands</option>
                                                                <option value="Somalia">Somalia</option>
                                                                <option value="South Africa">South Africa</option>
                                                                <option value="South Korea">South Korea</option>
                                                                <option value="Spain">Spain</option>
                                                                <option value="Sri Lanka">Sri Lanka</option>
                                                                <option value="St. Helena">St. Helena</option>
                                                                <option value="St. Pierre and Miquelon">St. Pierre and Miquelon</option>
                                                                <option value="Sudan">Sudan</option>
                                                                <option value="Suriname">Suriname</option>
                                                                <option value="Svalbard">Svalbard</option>
                                                                <option value="Swaziland">Swaziland</option>
                                                                <option value="Sweden">Sweden</option>
                                                                <option value="Switzerland">Switzerland</option>
                                                                <option value="Syria">Syria</option>
                                                                <option value="Taiwan">Taiwan</option>
                                                                <option value="Tajikistan">Tajikistan</option>
                                                                <option value="Tanzania">Tanzania</option>
                                                                <option value="Thailand">Thailand</option>
                                                                <option value="Togo">Togo</option>
                                                                <option value="Tokelau">Tokelau</option>
                                                                <option value="Tonga">Tonga</option>
                                                                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                                                <option value="Tunisia">Tunisia</option>
                                                                <option value="Turkey">Turkey</option>
                                                                <option value="Turkmenistan">Turkmenistan</option>
                                                                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                                                <option value="Tuvalu">Tuvalu</option>
                                                                <option value="Uganda">Uganda</option>
                                                                <option value="Ukraine">Ukraine</option>
                                                                <option value="United States Virgin Islands">United States Virgin Islands</option>
                                                                <option value="Uruguay">Uruguay</option>
                                                                <option value="Uzbekistan">Uzbekistan</option>
                                                                <option value="Vanuatu">Vanuatu</option>
                                                                <option value="Venezuela">Venezuela</option>
                                                                <option value="Vietnam">Vietnam</option>
                                                                <option value="Wallis and Futuna">Wallis and Futuna</option>
                                                                <option value="West Bank">West Bank</option>
                                                                <option value="Western Sahara">Western Sahara</option>
                                                                <option value="Yemen">Yemen</option>
                                                                <option value="Zambia">Zambia</option>
                                                                <option value="Zimbabwe">Zimbabwe</option>
                                                            </select>  
                       </td>
                  </tr>
                  
                  
                  </table>
                 </form:form>
                </div>
    </div>
</body>
</html>