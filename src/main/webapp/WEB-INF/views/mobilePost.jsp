<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script type="text/javascript">
	function getUser() {
		var value = $('#searchValue').text();
		alert(value);
		$.ajax( {

			type :"GET",
			url :"getUser.do",
			data :"value=" + value,
			success : function(result) {
				$('#result').html(
						'<table ><tr><th>UserName : </th><td>'
								+ result.userName
								+ '</td></tr><tr><th>Roll :</th> <td>'
								+ result.roll
								+ '</td></tr><tr><th> PassWord : </th><td>'
								+ result.passWord + '</td></tr></table>');
				$('#result').slideDown("slow");

			},

			error : function(x, e) {
				alert(x.status);
				alert('Error: ' + x);

			}
		})
	}

	function getUserName() {

		var value = $('#searchText').val();

		$
				.ajax( {

					type :"GET",
					url :"getUserName.do",
					data :"value=" + value,
					success : function(result) {
						if (result == "User Not Found"
								|| result == "Please Enter A value") {
							$('#search').html('<p>' + result + '</p>');

						} else {

							$('#search')
									.html(
											'<p id="searchValue" >' + result + '</p><input type="button"  value="Search" onclick="getUser()"/>');
						}
					},

					error : function(x, e) {
						alert(x.status);
						alert('Error: ' + x);

					}
				})
	}
</script>
  <script type="text/javascript" src="js_home/jquery-1.5.2.js"></script> 
        <script type="text/javascript" src="js_home/nicEdit-latest.js"></script>
         <script type="text/javascript">
         
            //<![CDATA[
             bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
             //]]>
          </script>

<title>Mobile Posting</title>
</head>
<body>

<div class="container"><section id="content"><form:form method="post" action="mobilePostAdd.do" modelAttribute="mobiles" enctype="multipart/form-data">
	<table>
		<tr>
			<td></td>
			<td><form:errors path="*" cssStyle="color : red;"
				cssClass="error" /></td>
		</tr>
		<h1>Mobiles Post Form</h1>
		<tr>
			<td>Mobile Name</td>
			<td><input type="text" placeholder="Mobile Name" name="mobileName" id="mobileName"/></td>
		</tr>
		<tr>
			<td>Mobile Company Name</td>
			<td><input type="text" placeholder="Company Name" name="companyName" id="companyName"/></td>
		</tr>
		
		<tr>
			<td>Operating System</td>
			<td><input type="text" placeholder="Model" name="Model" id="Model"/></td>
			
		</tr>
		<!--new fields added  -->
		<tr>
			<td>Screen Size</td>
			<td><input type="text" placeholder="Screen Size" name="ScreenSize" id="Screen"/></td>
			
		</tr>
		<tr>
			<td>Camera</td>
			<td><input type="text" placeholder="Camera" name="Camera" id="Camera"/></td>
			
		</tr>
		<tr>
			<td>Battery Life</td>
			<td><input type="text" placeholder="Battery Life" name="Battery" id="Battery"/></td>
			
		</tr>
		<tr>
			<td>Storage</td>
			<td><input type="text" placeholder="Storage" name="Storage" id="Storage"/></td>
			
		</tr>
		<tr>
			<td>Screen Resolution</td>
			<td><input type="text" placeholder="Screen Resolution" name="Resolution" id="Resolution"/></td>
			
		</tr>
		<!--End new fields added  -->
		
		<tr>
			<td>Price</td>
			<td><input type="text" placeholder="Price" name="price" id="price"/></td>
			
		</tr>
		
		<tr>
			<td>Picture 1"</td>
			<td><input type="file" name="uploadImage1" id="uploadImage1" /></td>
		</tr>
		<tr>
			<td>Picture 2"</td>
			<td><input type="file" name="uploadImage2" id="uploadImage2" /></td>
		</tr>
		<tr>
			<td>Picture 3"</td>
			<td><input type="file" name="uploadImage3" id="uploadImage3" /></td>
		</tr>
		<tr>
			<td>Picture 4"</td>
			<td><input type="file" name="uploadImage4" id="uploadImage4" /></td>
		</tr>
		<tr>
			<td>Picture 5"</td>
			<td><input type="file" name="uploadImage5" id="uploadImage5" /></td>
		</tr>
		<tr>
			<td>Picture 6"</td>
			<td><input type="file" name="uploadImage6" id="uploadImage6" /></td>
		</tr>
			<tr>
			<td>Is it Upcoming Mobile</td>
			<td><select id="upcomingProduct" name="upcomingProduct" style="width: 237px;">
			  <option value="No">No</option>
			  <option value="Yes">Yes</option>
			 
			</select></td>
		</tr>
		
		</tr>
			<tr>
			<td>Rating</td>
			<td><select id="rating" name="rating" style="width: 237px;">
			  <option value="1">1</option>
			  <option value="2">2</option>
			  <option value="3">3</option>
			  <option value="4">4</option>
			  <option value="5">5</option>
			  <option value="6">6</option>
			  <option value="7">7</option>
			  <option value="8">8</option>
			  <option value="9">9</option>
			  <option value="10">10</option>
			</select></td>
		</tr>
		
		<tr>
			<td>Comments  for Mobile</td>
			<td><textarea id="comment" name="comment" style="width: 500px;height: 400px;"></textarea></td>
			
		</tr>
		
		<tr>
			<td></td>
			<td><input type="submit" value="post" style="width: 50px;"/>
			</td>
		</tr>
	</table>

</form:form></section></div>
<div id="search"></div>
<div id="result"></div>
</body>
</html>