package com.app.huntzdown;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.URL;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.app.dao.UserDao;
import com.app.user.AddBlog;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	 @Autowired
	    UserDao userdao;
	    HttpServletRequest request;
	    HttpServletResponse response;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	//start
	  @RequestMapping(value = "/homePage", method = RequestMethod.GET)
	  public ModelAndView homePage(HttpServletRequest req,
	          HttpServletResponse response, ModelMap model) throws IOException, SQLException, ClassNotFoundException {
		  
	      response.setHeader("Cache-Control", "no-cache");
	      response.setContentType("text/plain");
	      response.setCharacterEncoding("utf-8");
	      Writer out;
	      out = response.getWriter();
	    
	      StringBuilder restroDetails = new StringBuilder();
	      StringBuilder topNews = new StringBuilder();
	      StringBuilder latestBlog = new StringBuilder();
	      StringBuilder trendingBlog = new StringBuilder();



	      Map<String, Object> aeTopNewsMapRestro = null;
	     
	      Map<String, Object> aeLatestBlog = null;
	      Map<String, Object> aeTrendingBlog = null;




	      List<Map<String, Object>> getHighRatingRestro  = userdao.getLatestBlog();
	    
	      List<Map<String, Object>> getLatestBlog  = userdao.getLatestBlog();
	      List<Map<String, Object>> getTrendingBlog  = userdao.getTrendingBlog ();

	      
	     

	      Iterator<Map<String, Object>> itrTopNews = getHighRatingRestro.iterator();
	      while (itrTopNews.hasNext()) {
	          aeTopNewsMapRestro = itrTopNews.next();
	          topNews.append("<li>"+aeTopNewsMapRestro.get("restro_name")+"</li>");
	      }
	    
	      
	      Iterator<Map<String, Object>> itrLatestBlog  = getLatestBlog.iterator();
	      while (itrLatestBlog.hasNext()) {
	          aeLatestBlog   = itrLatestBlog.next();
	          latestBlog.append("<li><font size='4'><img src='resources/images/rightfinger.png' style='width: 15px; height: 15px;'/><a href='/blogInfo?pictureId="+aeLatestBlog.get("id")+"'>"+aeLatestBlog.get("blog_name")+"</a></font></li>");
	      }
	      
	      Iterator<Map<String, Object>> itrTrendingBlog  = getTrendingBlog.iterator();
	      while (itrTrendingBlog.hasNext()) {
	    	  aeTrendingBlog   = itrTrendingBlog.next();
	    	  trendingBlog.append("<li><font size='4'><img src='resources/images/rightfinger.png' style='width: 15px; height: 15px;'/><a href='/blogInfo?pictureId="+aeTrendingBlog.get("id")+"'>"+aeTrendingBlog.get("blog_name")+"</a></font></li>");
	      }
	      
	      model.addAttribute("latestBlog",latestBlog.toString());
	    
	      model.addAttribute("restroDetails", restroDetails.toString().replaceAll("\n", "<br>"));


	      ModelAndView mv = new ModelAndView();
	      
			 ResourceBundle bundle = ResourceBundle.getBundle("jdbc"); 
	         String driverClassName=bundle.getString("jdbc.driverClassName");
	         String dbURL=bundle.getString("jdbc.databaseurl");
	         String dbUser= bundle.getString("jdbc.username");
	         String dbPass= bundle.getString("jdbc.password");

			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con = DriverManager.getConnection(dbURL,dbUser,dbPass);
			Statement st = con.createStatement();
			String filename= null;
			ResultSet i = st.executeQuery("select * from huntzdown.blog");
			Blob image = null;  
			byte[] imgData = null; 
			BufferedImage img= null;
			 while(i.next()){
				 image = i.getBlob(3);  
				 Blob blob =  i.getBlob(3);
				 imgData = image.getBytes(1, (int) image.length());	
				 InputStream is = blob.getBinaryStream();
				 filename = i.getString(1);
				 String blogName= i.getString(2);
				  String useSession = System.getProperty("user.dir")+"/webapp/resources/imagesPic";
				  FileOutputStream fos = new FileOutputStream(useSession + "/" +filename+".jpg");
					int b = 0;
					while ((b = is.read()) != -1)
					{
					    fos.write(b); 
					}
					
					fos.close();
					
					 restroDetails.append("<div style=\"float: left; width: 200px; margin-bottom: 10px; padding: 0px 10px 0px 0px;background-color: floralwhite;\">\n"
			                  + "<div><a href='/huntzdown/blogInfo?pictureId=" + filename+ "'><img src='resources/imagesPic/" + filename +".jpg" +"' title='' alt='alt' width=\"200px\" height=\"114px\"></a><a href='#'><h5>" + blogName + "</h5></a>"  + "&nbsp;&nbsp;</div></div>");
			      

			 	}
	    

	      mv.addObject("restroDetails", restroDetails.toString());
	      mv.addObject("getLatestBlog",getLatestBlog);
	      mv.addObject("getTrendingBlog",trendingBlog);

	      if(getLatestBlog.size() > 0){
		      mv.addObject("getLatestBlogImg",getLatestBlog.get(0).get("path"));

	      }
	      
	          mv.setViewName("index");
	          return mv;
	     
	      //  return "index";
	  } // ends : agencyDash() 
	  
	  
	  @RequestMapping(value = "/blog", method = RequestMethod.POST)
	    public String addBlog(@ModelAttribute("blog") AddBlog addBlog, BindingResult result, SessionStatus status, ModelMap model, HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException, ClassNotFoundException {
	        HttpSession session = req.getSession();

	        String path;
	        InputStream inputStream = null;
	        OutputStream outputStream = null;
	        InputStream inputStream1 = null;



	        MultipartFile file = addBlog.getUploadImage();
	        String fileName = file.getOriginalFilename();
	        // File newFile = new File("D:/INDIA_ONLINE_PROJECT_PICTUES/" + fileName);
	        path = file.getOriginalFilename().toString();
	        // obtains the upload file part in this multipart request
	        inputStream = file.getInputStream();
	        if (file != null) {
	            // prints out some information for debugging
	            System.out.println("name**"+file.getName());
	            System.out.println("size**"+file.getSize());
	            System.out.println("type**"+file.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream1 = file.getInputStream();
	        }

	       


	        if (result.hasErrors()) {
	            return "login";
	        } else {
	            userdao.addBlog(addBlog, path,inputStream1);
	        }


	        return "home";
	    }
	  
	  //strt test
	    @RequestMapping(value = "/blog", method = RequestMethod.GET)
	    public String getUserBlog(HttpServletRequest req, HttpServletResponse response, ModelMap model) throws IOException, SQLException {
	        HttpSession session = req.getSession();
	        session.removeAttribute("blogDetails");

	        StringBuilder detailsDiv = new StringBuilder();



	        Map<String, Object> aeDataMap = null;
	        Map<String, Object> dataMap = null;
	        List<Map<String, Object>> getCommentList = userdao.getDetailsBlogs();

	        System.out.println("get getCommentList lists>>>>>" + getCommentList);


	        Iterator<Map<String, Object>> itrt = getCommentList.iterator();
	        while (itrt.hasNext()) {
	            dataMap = itrt.next();
	            detailsDiv.append("<article class='format-standard'><div class='feature-image'><a href='/blogInfo?pictureId=" + dataMap.get("id") + "'><img src='imagesPic/pictures/" + dataMap.get("path") + "' alt='Alt text'/></a></div><div class='box cf'><div class='entry-date'><div class='number'>" + dataMap.get("date") + "</div></div><div class='excerpt'><a href='single.html' class='post-heading'>" + dataMap.get("blog_name") + "</a><p></p></div><div class='meta'><span class='format'>Post</span><span class='user'><a href='#''>By </span><span class='comments'>16 comments</span></div></div></article>");

	        }



	        session.setAttribute("blogDetails", detailsDiv.toString());



	        return "userBlog";

	    }

	
	    
	    @RequestMapping(value = "/blogInfo", method = RequestMethod.GET)
	    public String blogInfo(HttpServletRequest req, HttpServletResponse response, ModelMap model) throws IOException, SQLException, ClassNotFoundException {
	        System.out.println("picId>> dekh");

	        HttpSession session = req.getSession();
	        session.removeAttribute("userRatingsBlog");
	        session.removeAttribute("commentBlog");
	        session.removeAttribute("detailsDivBlog");
	        session.removeAttribute("haedingBlog");
	        session.removeAttribute("userIdBlog");
	        session.removeAttribute("detailsBlog");
	        session.removeAttribute("detailsDivTextBlog");




	        String picId = req.getParameter("pictureId");
	        StringBuilder details = new StringBuilder();
	        StringBuilder detailsDiv = new StringBuilder();
	        StringBuilder detailsDivText = new StringBuilder();
	        StringBuilder haeding = new StringBuilder();
	        StringBuilder userId = new StringBuilder();
	        StringBuilder comment = new StringBuilder();
	        StringBuilder ratingDiv = new StringBuilder();
	        
	        if (picId == null) {
	            System.out.println("andar gaya null me....<>>>>" + req.getSession().getAttribute("userBlogId").toString());
	            picId = req.getSession().getAttribute("userBlogId").toString();

	        }


	        Map<String, Object> aeDataMap = null;
	        Map<String, Object> dataMap = null;
	        List<Map<String, Object>> getProductList = userdao.getBlogPic(picId);
	        
	        ResourceBundle bundle = ResourceBundle.getBundle("jdbc"); 
	         String driverClassName=bundle.getString("jdbc.driverClassName");
	         String dbURL=bundle.getString("jdbc.databaseurl");
	         String dbUser= bundle.getString("jdbc.username");
	         String dbPass= bundle.getString("jdbc.password");

			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con = DriverManager.getConnection(dbURL,dbUser, dbPass);
			Statement st = con.createStatement();
			String filename= null;
			ResultSet i = st.executeQuery("select * from huntzdown.blog");
			Blob image = null;  
			byte[] imgData = null; 
			BufferedImage img= null;
			 while(i.next()){
				 image = i.getBlob(3);  
				 Blob blob =  i.getBlob(3);
				 imgData = image.getBytes(1, (int) image.length());	
				 InputStream is = blob.getBinaryStream();
				 filename = i.getString(1);
				 String blogName= i.getString(2);
				 System.out.println("check_**"+System.getenv("OPENSHIFT_DATA_DIR"));
				  String useSession = System.getenv("OPENSHIFT_DATA_DIR") +"webapps/";
	              FileOutputStream fos = new FileOutputStream(filename+".jpg");
	              int b = 0;
					while ((b = is.read()) != -1)
					{
					    fos.write(b); 
					}
					
			 	}
	       
	       

	        Iterator<Map<String, Object>> itr = getProductList.iterator();
	        while (itr.hasNext()) {
	            aeDataMap = itr.next();
	            System.out.println("iamge path before setting>>>>" + aeDataMap.get("path"));
	            details.append("<img src='resources/imagesPic/" + aeDataMap.get("id") + ".jpg" + "' alt='Alt text' height='945' width='945'/>");
	            detailsDiv.append("<p><strong>Client </strong>" + aeDataMap.get("blog_name") + "</p><p><strong>Date </strong>" + aeDataMap.get("date") + "</p><p><a href='#' class='launch'>Launch Project</a></p>");
	            detailsDivText.append("<p>" + aeDataMap.get("comments") + "</p>");
	            System.out.println("check this"+aeDataMap.get("comments"));
	            haeding.append("<p>" + aeDataMap.get("blog_name") + "</p>");
	            userId.append(picId);
	        }


	        session.setAttribute("userRatingsBlog", ratingDiv.toString());
	        session.setAttribute("commentBlog", comment.toString());
	        session.setAttribute("detailsDivTextBlog", detailsDiv.toString());
	        session.setAttribute("haedingBlog", haeding.toString());
	        session.setAttribute("userIdBlog", userId.toString());
	        session.setAttribute("detailsBlog", details.toString());
	        session.setAttribute("detailsDivTextBlog", detailsDivText.toString());



	        return "blogComment";

	    }
	    
	    @RequestMapping(value = "/writeBlog",method = RequestMethod.GET)
			 public String writeBlog(HttpServletRequest req,
						HttpServletResponse response, ModelMap model) throws IOException, SQLException{
	                return "blog";
	                 }
	    
	    @RequestMapping(value = "/searchUser",method = RequestMethod.GET)
    	 public String searchUser(@ModelAttribute("blog")AddBlog addBlog,BindingResult result,SessionStatus status,ModelMap model,HttpServletRequest req,HttpServletResponse res) throws IOException{
    		                    System.out.println("hiiiiiiiiiiiiiiiiiiiiiii match");

                   StringBuilder data = new StringBuilder();
                    PrintWriter out = res.getWriter();
                    res.setContentType("text/html");
                    String uName=req.getParameter("userName");
                    String password=req.getParameter("password"); 
                    String userMail=req.getParameter("userMail");
                    
                    System.out.println("values of user name passwrd"+uName+"passwrd.."+password);


                    if(uName != null && !uName.isEmpty()){
                    List<Map<String, Object>> getProductList = userdao.getSearchList(uName);
                    System.out.println("get product list>>see>>"+getProductList.size());
                     
                    if(getProductList.isEmpty()){
                       data.append("Email Id not Registerd");

                    }
                    
                    if(!getProductList.isEmpty()){
                    String password1=getProductList.get(0).get("password").toString();
                    if(!password.equals(password1)){
                        System.out.println("not match");
                        data.append("Email & Password not correct");
                    }else{
                    System.out.println("match");
                    data.append("Success");
                    }}
                    out.write(data.toString());
                    }
                    
                     if(userMail != null && !userMail.isEmpty()){
                      
                     System.out.println("null ni hai user mail"+userMail);
                     List<Map<String, Object>> getProductList = userdao.getSearchList(userMail);
                     if(!getProductList.isEmpty()){
                     System.out.println("not null inner lloopp");

                     data.append("Email already exist");
                     }
                     out.write(data.toString());

                     
                     }
                     
                    
             

                return null;
             }
	         
}
