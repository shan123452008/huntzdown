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
		<%@include file="includeCssJs.jsp" %> 

        
        <script>
        $( document ).ready(function() {
            
            document.getElementById('dialog-open').style.display = 'none';
            document.getElementById('signUpForm').style.display = 'none';

             });
        </script>
        <script type="text/javascript" src="resources/js_home/jquery-1.5.2.js"></script> 
        <jsp:include page="Header.jsp"/>
        
         <script type="text/javascript">
         
    function showDialog()
    {
        var nicInstance = CKEDITOR.instances.comment1.getData();

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
    input[type="text"]{
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
        <form:form method="post" id="writeConfession" action="writeConfession" modelAttribute="writeConfession">
            <table>
                <legend>Confession Form</legend>
                 <tr><td>
                   &nbsp;</td>
                </tr>

				<tr>
					<td class="small" colspan="2">Please write your confession
						here</td>
				</tr>
				<tr>
                   <td colspan="2">&nbsp;<textarea id="confession" name="confession"></textarea></td></tr> 
                   <script>
			            CKEDITOR.replace( 'confession' );
			        </script>
                
                
                  <tr><td>
                   &nbsp;</td>
                </tr>
                <tr>
					<td class="small" colspan="2">If you don't want to specify your name then leave it blank</td>
				</tr>
                 <tr>
                   <td>Name</td>
                   <td> <input type="text" placeholder="Author Name" name="authorName" id="authorName"/></td>           
                </tr>
                
                <tr><td>&nbsp;<input type="submit" value="Submit"/></td></tr>
                
                

            </table>    
        </form:form>
       
    </div>
</body>
</html>