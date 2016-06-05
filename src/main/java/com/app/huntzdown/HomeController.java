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
import com.app.user.WriteConfession;

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
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	// start
	@RequestMapping(value = "/homePage", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest req,
			HttpServletResponse response, ModelMap model) throws IOException,
			SQLException, ClassNotFoundException {

		response.setHeader("Cache-Control", "no-cache");
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		Writer out;
		out = response.getWriter();
		StringBuilder restroDetails = new StringBuilder();
		StringBuilder latestBlog = new StringBuilder();
		StringBuilder trendingBlog = new StringBuilder();
		StringBuilder videoBlog = new StringBuilder();	
		StringBuilder newsFact = new StringBuilder();



		Map<String, Object> aeLatestBlog = null;
		Map<String, Object> aeTrendingBlog = null;
		Map<String, Object> aeConfession = null;
		Map<String, Object> aeFactsNews = null;



		List<Map<String, Object>> getLatestBlog = userdao.getLatestBlog();
		List<Map<String, Object>> getTrendingBlog = userdao.getTrendingBlog();
		List<Map<String, Object>> getNewsFacts = userdao.getNewsFacts();

		
		//Video Functinality
		List<Map<String, Object>> getVideo = userdao.getDetailsVideos();
		Iterator<Map<String, Object>> itrVideo = getVideo.iterator();
		Map<String, Object> aeVideo = null;

		while (itrVideo.hasNext()) {
			aeVideo = itrVideo.next();
			videoBlog.append("<div style=\"float: left; width: 200px; margin-bottom: 10px; padding: 0px 10px 0px 0px;background-color: floralwhite;\">\n"
					+ "<div><iframe src='"+aeVideo.get("path")+"' allowfullscreen='allowfullscreen' width='200' height='114'></iframe><a href='#'><h5>"
					+ aeVideo.get("blog_name")
					+ "</h5></a>"
					+ "&nbsp;&nbsp;</div></div>");
		}
		//End Video Functionality


		Iterator<Map<String, Object>> itrLatestBlog = getLatestBlog.iterator();
		while (itrLatestBlog.hasNext()) {
			aeLatestBlog = itrLatestBlog.next();
			latestBlog
					.append("<li><font size='4'><img src='resources/images/rightfinger.png' style='width: 15px; height: 15px;'/><a href='/blogInfo?tag="
							+ aeLatestBlog.get("tag")
							+ "'>"
							+ aeLatestBlog.get("blog_name")
							+ "</a></font></li>");
			
			restroDetails
			.append("<div style=\"float: left; width: 200px; margin-bottom: 10px; padding: 0px 10px 0px 0px;background-color: floralwhite;\">\n"
					+ "<div><a href='/blogInfo?tag="
					+ aeLatestBlog.get("tag")
					+ "'><img src='"
					+ aeLatestBlog.get("path")
					+ "' title='' alt='alt' width=\"200px\" height=\"214px\"></a><a href='/blogInfo?tag="
					+ aeLatestBlog.get("tag")
					+ "'><h5 style='height:59px;'>"
					+ aeLatestBlog.get("blog_name")
					+ "</h5></a>"
					+ "&nbsp;&nbsp;</div></div>");
		}

		Iterator<Map<String, Object>> itrFactsNews = getNewsFacts.iterator();
		while (itrFactsNews.hasNext()) {
			aeFactsNews = itrFactsNews.next();
					
			newsFact
			.append("<div style=\"float: left; width: 200px; margin-bottom: 10px; padding: 0px 10px 0px 0px;background-color: floralwhite;\">\n"
					+ "<div><a href='/newsFacts?tag="
					+ aeFactsNews.get("tag")
					+ "'><img src='"
					+ aeFactsNews.get("path1")
					+ "' title='' alt='alt' width=\"200px\" height=\"214px\"></a><a href='/newsFacts?tag="
					+ aeFactsNews.get("tag")
					+ "'><h5 style='height:59px;'>"
					+ aeFactsNews.get("fact_name")
					+ "</h5></a>"
					+ "&nbsp;&nbsp;</div></div>");
		}
		
		
		Iterator<Map<String, Object>> itrTrendingBlog = getTrendingBlog
				.iterator();
		while (itrTrendingBlog.hasNext()) {
			aeTrendingBlog = itrTrendingBlog.next();
			trendingBlog
					.append("<li><font size='4'><img src='resources/images/rightfinger.png' style='width: 15px; height: 15px;'/><a href='/blogInfo?tag="
							+ aeTrendingBlog.get("tag")
							+ "'>"
							+ aeTrendingBlog.get("blog_name")
							+ "</a></font></li>");
		}

		model.addAttribute("latestBlog", latestBlog.toString());

		model.addAttribute("restroDetails", restroDetails.toString()
				.replaceAll("\n", "<br>"));

		ModelAndView mv = new ModelAndView();

		mv.addObject("newsFact", newsFact.toString());
		mv.addObject("restroDetails", restroDetails.toString());
		mv.addObject("getLatestBlog", getLatestBlog);
		mv.addObject("getTrendingBlog", trendingBlog);
		mv.addObject("videoBlog", videoBlog);
		mv.setViewName("index");
		return mv;
		// return "index";
	} // ends : agencyDash()

	@RequestMapping(value = "/blog", method = RequestMethod.POST)
	public String addBlog(@ModelAttribute("blog") AddBlog addBlog,
			BindingResult result, SessionStatus status, ModelMap model,
			HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException, ClassNotFoundException {
		HttpSession session = req.getSession();

		String path;
		InputStream inputStream = null;

		if (result.hasErrors()) {
			return "login";
		} else {
			userdao.addBlog(addBlog, "dfgdf", inputStream);
		}

		return "home";
	}

	@RequestMapping(value = "/blogInfo", method = RequestMethod.GET)
	public ModelAndView blogInfo(HttpServletRequest req,
			HttpServletResponse response, ModelMap model) throws IOException,
			SQLException, ClassNotFoundException {
		response.setHeader("Cache-Control", "no-cache");
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		Writer out;
		out = response.getWriter();

		String picId = req.getParameter("tag");
		String oldpicId = req.getParameter("pictureId");

		StringBuilder details = new StringBuilder();
		StringBuilder detailsDiv = new StringBuilder();
		StringBuilder detailsDivText = new StringBuilder();
		StringBuilder haeding = new StringBuilder();
		StringBuilder titlePage = new StringBuilder();
		StringBuilder userId = new StringBuilder();
		StringBuilder comment = new StringBuilder();
		StringBuilder ratingDiv = new StringBuilder();
		StringBuilder keywords = new StringBuilder();
		StringBuilder restroDetails = new StringBuilder();

		Map<String, Object> aeDataMap = null;
		Map<String, Object> dataMap = null;
		List<Map<String, Object>> getProductList;
		List<Map<String, Object>> getLatestBlog = userdao.getTrendingBlog();
		Map<String, Object> aeLatestBlog = null;

		
		if(oldpicId != null){
			getProductList = userdao.getBlogOldPic(oldpicId);
			
		}else{
			getProductList = userdao.getBlogPic(picId);
		}
		
		

		Iterator<Map<String, Object>> itr = getProductList.iterator();
		String imagePath= null;
		while (itr.hasNext()) {
			aeDataMap = itr.next();
			imagePath=aeDataMap.get("path").toString();
			details.append("<img src='" + aeDataMap.get("path")
					+ "' alt='"+aeDataMap.get("blog_name")+"' class='blogImage'/>");
			detailsDiv
					.append("<p><strong>Client </strong>"
							+ aeDataMap.get("blog_name")
							+ "</p><p><strong>Date </strong>"
							+ aeDataMap.get("date")
							+ "</p><p><a href='#' class='launch'>Launch Project</a></p>");
			detailsDivText.append("<p>" + aeDataMap.get("comments") + "</p>");
			System.out.println("check this" + aeDataMap.get("comments"));
			haeding.append("<p>" + aeDataMap.get("blog_name") + "</p>");
			titlePage.append(aeDataMap.get("blog_name"));
			keywords.append(aeDataMap.get("keywords"));

			userId.append(picId);
		}
		
		
		Iterator<Map<String, Object>> itrLatestBlog = getLatestBlog.iterator();
		while (itrLatestBlog.hasNext()) {
			aeLatestBlog = itrLatestBlog.next();
			
			restroDetails
			.append("<div style=\"float: left; width: 200px; margin-bottom: 10px; padding: 0px 10px 0px 0px;background-color: floralwhite;\">\n"
					+ "<div><a href='/blogInfo?tag="
					+ aeLatestBlog.get("tag")
					+ "'><img src='"
					+ aeLatestBlog.get("path")
					+ "' title='' alt='alt' width=\"200px\" height=\"214px\"></a><a href='/blogInfo?tag="
					+ aeLatestBlog.get("tag")
					+ "'><h5 style='height:59px;'>"
					+ aeLatestBlog.get("blog_name")
					+ "</h5></a>"
					+ "&nbsp;&nbsp;</div></div>");
		}

		//
		model.addAttribute("userRatingsBlog", ratingDiv.toString());

		model.addAttribute("commentBlog", comment.toString());
		model.addAttribute("detailsDivTextBlog", detailsDiv.toString());
		model.addAttribute("haedingBlog", haeding.toString());
		model.addAttribute("titlePage", titlePage.toString());
		model.addAttribute("userIdBlog", userId.toString());
		model.addAttribute("detailsBlog", details.toString());
		model.addAttribute("detailsDivTextBlog", detailsDivText.toString());
		model.addAttribute("imagePath", imagePath);
		model.addAttribute("keywords", keywords.toString());
		model.addAttribute("restroDetails", restroDetails.toString());

		ModelAndView mv = new ModelAndView();
		mv.setViewName("blogComment");
		return mv;
		
	}

	@RequestMapping(value = "/writeBlog", method = RequestMethod.GET)
	public String writeBlog(HttpServletRequest req,
			HttpServletResponse response, ModelMap model) throws IOException,
			SQLException {
		return "blog";
	}

	@RequestMapping(value = "/searchUser", method = RequestMethod.GET)
	public String searchUser(@ModelAttribute("blog") AddBlog addBlog,
			BindingResult result, SessionStatus status, ModelMap model,
			HttpServletRequest req, HttpServletResponse res) throws IOException {
		System.out.println("hiiiiiiiiiiiiiiiiiiiiiii match");

		StringBuilder data = new StringBuilder();
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		String uName = req.getParameter("userName");
		String password = req.getParameter("password");
		String userMail = req.getParameter("userMail");

		System.out.println("values of user name passwrd" + uName + "passwrd.."
				+ password);

		if (uName != null && !uName.isEmpty()) {
			List<Map<String, Object>> getProductList = userdao
					.getSearchList(uName);
			System.out.println("get product list>>see>>"
					+ getProductList.size());

			if (getProductList.isEmpty()) {
				data.append("Email Id not Registerd");

			}

			if (!getProductList.isEmpty()) {
				String password1 = getProductList.get(0).get("password")
						.toString();
				if (!password.equals(password1)) {
					System.out.println("not match");
					data.append("Email & Password not correct");
				} else {
					System.out.println("match");
					data.append("Success");
				}
			}
			out.write(data.toString());
		}

		if (userMail != null && !userMail.isEmpty()) {

			System.out.println("null ni hai user mail" + userMail);
			List<Map<String, Object>> getProductList = userdao
					.getSearchList(userMail);
			if (!getProductList.isEmpty()) {
				System.out.println("not null inner lloopp");

				data.append("Email already exist");
			}
			out.write(data.toString());

		}

		return null;
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView about = new ModelAndView("about");
		return about;
	}

	// strt test
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public ModelAndView getUserBlog(HttpServletRequest req,
			HttpServletResponse response, ModelMap model) throws IOException,
			SQLException {
		
		
		
		response.setHeader("Cache-Control", "no-cache");
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		String category = req.getParameter("category");

		StringBuilder detailsDiv = new StringBuilder();
		StringBuilder asideDiv = new StringBuilder();

		Map<String, Object> aeDataMap = null;
		Map<String, Object> dataMap = null;
		List<Map<String, Object>> getCommentList = userdao
				.getDetailsBlogs(category);

		ModelAndView mv = new ModelAndView();
		if (getCommentList.size() > 0) {
			int i = 0;

			Iterator<Map<String, Object>> itrt = getCommentList.iterator();
			while (itrt.hasNext()) {
				dataMap = itrt.next();
				if (i % 2 == 0) {
					detailsDiv
							.append("<article class='format-standard'><div class='feature-image'><a href='blogInfo?tag="
									+ dataMap.get("tag")
									+ "'>"
									+ "<img src=' "
									+ dataMap.get("path")
									+ "' alt='Alt text' style='width: 600px; height: 300px;'/></a></div>"

									+ "<div class='box cf'><div class='excerpt'><a href='blogInfo?tag="
									+ dataMap.get("tag")
									+ "' class='post-heading'>"
									+ dataMap.get("blog_name")
									+ "</a><p></p></div>" + "</div></article>");
					i = i + 1;
				} else {
					asideDiv.append("<article class='format-standard'><div class='feature-image'><a href='/blogInfo?tag="
							+ dataMap.get("tag")
							+ "'>"
							+ "<img src='"
							+ dataMap.get("path")
							+ "' alt='Alt text' style='width: 600px; height: 300px;'/></a></div>"
							+ "<div class='box cf'><div class='excerpt'><a href='/blogInfo?tag="
							+ dataMap.get("tag")
							+ "' class='post-heading'>"
							+ dataMap.get("blog_name")
							+ "</a><p></p></div>"
							+ "</div></article>");
					i = i + 1;
				}

			}
		}

		mv.addObject("blogDetails", detailsDiv.toString());
		mv.addObject("asideDiv", asideDiv.toString());

		mv.setViewName("userBlog");
		return mv;

	}
	
	//Video fetching for the site
	// strt test
		@RequestMapping(value = "/videos", method = RequestMethod.GET)
		public ModelAndView getUservideos(HttpServletRequest req,
				HttpServletResponse response, ModelMap model) throws IOException,
				SQLException {
			HttpSession session = req.getSession();
			response.setHeader("Cache-Control", "no-cache");
			response.setContentType("text/plain");
			response.setCharacterEncoding("utf-8");
			
			StringBuilder detailsDiv = new StringBuilder();
			StringBuilder asideDiv = new StringBuilder();

			Map<String, Object> aeDataMap = null;
			Map<String, Object> dataMap = null;
			List<Map<String, Object>> getCommentList = userdao.getDetailsVideos();

			ModelAndView mv = new ModelAndView();
			if (getCommentList.size() > 0) {
				int i = 0;

				Iterator<Map<String, Object>> itrt = getCommentList.iterator();
				while (itrt.hasNext()) {
					dataMap = itrt.next();
					if (i % 2 == 0) {
						detailsDiv
								.append("<article class='format-standard'><div class='feature-image'><a href='blogInfo?tag="
										+ dataMap.get("tag")
										+ "'>"
										+ "<iframe src='"
										+ dataMap.get("path")
										+ "' alt='Alt text' allowfullscreen='allowfullscreen' width='400px' height='300px'></iframe></div>"

										+ "<div class='box cf'><div class='excerpt'><a href='#' class='post-heading'>"
										+ dataMap.get("blog_name")
										+ "</a><p></p></div>" + "</div></article>");
						i = i + 1;
					} else {
						asideDiv.append("<article class='format-standard'><div class='feature-image'><a href='/blogInfo?tag="
								+ dataMap.get("tag")
								+ "'>"
								+ "<iframe src='"
								+ dataMap.get("path")
								+ "' alt='Alt text' allowfullscreen='allowfullscreen' width='400px' height='300px'></iframe></div>"
								+ "<div class='box cf'><div class='excerpt'><a href='#' class='post-heading'>"
								+ dataMap.get("blog_name")
								+ "</a><p></p></div>"
								+ "</div></article>");
						i = i + 1;
					}

				}
			}

			mv.addObject("blogDetails", detailsDiv.toString());
			mv.addObject("asideDiv", asideDiv.toString());

			mv.setViewName("userBlog");
			return mv;

		}
	
	 @RequestMapping(value = "/contact")
	    public ModelAndView contact() {
	        ModelAndView contact = new ModelAndView("contact");
	        return contact;
	    }
	 
	 @RequestMapping(value = "/privacy")
	    public ModelAndView privacy() {
	        ModelAndView privacy = new ModelAndView("privacy");
	        return privacy;
	    }
	 
	 
	 
	 @RequestMapping(value = "/newsFacts",method = RequestMethod.GET)
     public ModelAndView detailsBike(HttpServletRequest req,HttpServletResponse response, ModelMap model) throws IOException, SQLException{
		
		response.setHeader("Cache-Control", "no-cache");
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		Writer out;
		out = response.getWriter();

		StringBuilder details = new StringBuilder();
		StringBuilder detailsDiv = new StringBuilder();
		StringBuilder haeding = new StringBuilder();
		StringBuilder userId = new StringBuilder();
		StringBuilder comment = new StringBuilder();
		StringBuilder restroDetails = new StringBuilder();
		
		List<Map<String, Object>> getLatestBlog = userdao.getTrendingBlog();
		
		String bikeId = req.getParameter("tag");

		Map<String, Object> aeDataMap = null;
		Map<String, Object> dataMap = null;
		Map<String, Object> aeLatestBlog = null;
		List<Map<String, Object>> getBikeList = userdao.getBikePic(bikeId);
		String imagePath = null;
		String keywords = null;
		
		
		Iterator<Map<String, Object>> itrLatestBlog = getLatestBlog.iterator();
		while (itrLatestBlog.hasNext()) {
			aeLatestBlog = itrLatestBlog.next();
			
			restroDetails
			.append("<div style=\"float: left; width: 200px; margin-bottom: 10px; padding: 0px 10px 0px 0px;background-color: floralwhite;\">\n"
					+ "<div><a href='/blogInfo?tag="
					+ aeLatestBlog.get("tag")
					+ "'><img src='"
					+ aeLatestBlog.get("path")
					+ "' title='' alt='alt' width=\"200px\" height=\"214px\"></a><a href='/blogInfo?tag="
					+ aeLatestBlog.get("tag")
					+ "'><h5 style='height:59px;'>"
					+ aeLatestBlog.get("blog_name")
					+ "</h5></a>"
					+ "&nbsp;&nbsp;</div></div>");
		}

		Iterator<Map<String, Object>> itr = getBikeList.iterator();
		while (itr.hasNext()) {
			aeDataMap = itr.next();
			imagePath = aeDataMap.get("path1").toString();
			keywords = aeDataMap.get("keywords").toString();
			details.append("<li><img src='" + aeDataMap.get("path1")
					+ "' class='blogImageFacts'/><div class='sliderComment'>"
					+ aeDataMap.get("comments1") + "</div></li>");
			details.append("<li><img src='" + aeDataMap.get("path2")
					+ "' class='blogImageFacts'/><div class='sliderComment'>"
					+ aeDataMap.get("comments2") + "</div></li>");
			details.append("<li><img src='" + aeDataMap.get("path3")
					+ "' class='blogImageFacts'/><div class='sliderComment'>"
					+ aeDataMap.get("comments3") + "</div></li>");
			details.append("<li><img src='" + aeDataMap.get("path4")
					+ "' class='blogImageFacts'/><div class='sliderComment'>"
					+ aeDataMap.get("comments4") + "</div></li>");
			details.append("<li><img src='" + aeDataMap.get("path5")
					+ "' class='blogImageFacts'/><div class='sliderComment'>"
					+ aeDataMap.get("comments5") + "</div></li>");
			details.append("<li><img src='" + aeDataMap.get("path6")
					+ "' class='blogImageFacts'/><div class='sliderComment'>"
					
					+ aeDataMap.get("comments6") + "</div></li>");

		}
		userId.append(bikeId);
		

		Iterator<Map<String, Object>> itrt = getBikeList.iterator();

		while (itrt.hasNext()) {
			dataMap = itrt.next();
			haeding.append("" + aeDataMap.get("fact_name") + "");
			detailsDiv.append("" + aeDataMap.get("comments") + "");
		}
		model.addAttribute("bikeRating", details.toString());
		model.addAttribute("heading", haeding.toString());
		model.addAttribute("commentBlog", comment.toString());
		model.addAttribute("detailsDivTextBlog", detailsDiv.toString());
		model.addAttribute("haedingBlog", haeding.toString());
		model.addAttribute("titlePage", haeding.toString());
		model.addAttribute("userIdBlog", userId.toString());
		model.addAttribute("detailsBlog", details.toString());
		model.addAttribute("imagePath", imagePath);
		model.addAttribute("keywords", keywords.toString());
		model.addAttribute("restroDetails", restroDetails.toString());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("factsNews");
		return mv;
}
	 
	 @RequestMapping(value = "/writeConfession", method = RequestMethod.GET)
		public String writeConfession(HttpServletRequest req, HttpServletResponse response, ModelMap model)
				throws IOException, SQLException {
			return "confession";
		}

		 @RequestMapping(value = "/writeConfession",method = RequestMethod.POST)
		 public String writeConfession(@ModelAttribute("writeConfession")WriteConfession writeConfession,BindingResult result,SessionStatus status,ModelMap model,HttpServletRequest req,HttpServletResponse res) throws IOException{
			 HttpSession session = req.getSession();

			System.out.println("check comment"+writeConfession.getConfession());
			System.out.println("check author name"+writeConfession.getAuthorName());
			
			 userdao.addConfession(writeConfession);
			 
			 model.addAttribute("message", "Thanks for confessing. We will review and publish your confession.");

			 
			 return "confession";
		 }     
		 
		 
		 @RequestMapping(value = "/chapterConfession", method = RequestMethod.GET)
			public ModelAndView chapterConfession(HttpServletRequest req,
					HttpServletResponse response, ModelMap model) throws IOException,
					SQLException, ClassNotFoundException {
				response.setHeader("Cache-Control", "no-cache");
				response.setContentType("text/plain");
				response.setCharacterEncoding("utf-8");
				Writer out;
				out = response.getWriter();

				String tag = req.getParameter("tag");

				StringBuilder details = new StringBuilder();
				StringBuilder detailsDiv = new StringBuilder();
				StringBuilder detailsDivText = new StringBuilder();
				StringBuilder haeding = new StringBuilder();
				StringBuilder titlePage = new StringBuilder();
				StringBuilder userId = new StringBuilder();
				StringBuilder comment = new StringBuilder();
				StringBuilder ratingDiv = new StringBuilder();
				StringBuilder keywords = new StringBuilder();

				Map<String, Object> aeDataMap = null;
				Map<String, Object> dataMap = null;
				List<Map<String, Object>> getProductList;
				
				getProductList = userdao.getConfessionDetail(tag);
			
				Iterator<Map<String, Object>> itr = getProductList.iterator();
				String imagePath= null;
				while (itr.hasNext()) {
					aeDataMap = itr.next();
					imagePath=aeDataMap.get("path").toString();
					details.append("<img src='" + aeDataMap.get("path")
							+ "' alt='"+aeDataMap.get("title")+"' class='blogImage'/>");
					detailsDiv	
							.append("<p><strong>Client </strong>"
									+ aeDataMap.get("title")
									+ "</p><p><strong>Date </strong>"
									+ aeDataMap.get("date")
									+ "</p><p><a href='#' class='launch'>Launch Project</a></p>");
					detailsDivText.append("<p>" + aeDataMap.get("comments") + "</p>");
					System.out.println("check this" + aeDataMap.get("comments"));
					haeding.append("<p>" + aeDataMap.get("title") + "</p>");
					titlePage.append(aeDataMap.get("title"));
					keywords.append(aeDataMap.get("keywords"));

					userId.append(tag);
				}
				model.addAttribute("userRatingsBlog", ratingDiv.toString());
				model.addAttribute("commentBlog", comment.toString());
				model.addAttribute("detailsDivTextBlog", detailsDiv.toString());
				model.addAttribute("haedingBlog", haeding.toString());
				model.addAttribute("titlePage", titlePage.toString());
				model.addAttribute("userIdBlog", userId.toString());
				model.addAttribute("detailsBlog", details.toString());
				model.addAttribute("detailsDivTextBlog", detailsDivText.toString());
				model.addAttribute("imagePath", imagePath);
				model.addAttribute("keywords", keywords.toString());

				ModelAndView mv = new ModelAndView();

				
				
				mv.setViewName("chapterConfession");
				return mv;
				
			}
	

}
