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


		Map<String, Object> aeLatestBlog = null;
		Map<String, Object> aeTrendingBlog = null;

		List<Map<String, Object>> getLatestBlog = userdao.getLatestBlog();
		List<Map<String, Object>> getTrendingBlog = userdao.getTrendingBlog();
		
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
					+ "' title='' alt='alt' width=\"200px\" height=\"114px\"></a><a href='/blogInfo?tag="
					+ aeLatestBlog.get("tag")
					+ "'><h5 style='height:59px;'>"
					+ aeLatestBlog.get("blog_name")
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
	public String blogInfo(HttpServletRequest req,
			HttpServletResponse response, ModelMap model) throws IOException,
			SQLException, ClassNotFoundException {
		HttpSession session = req.getSession();
		session.removeAttribute("userRatingsBlog");
		session.removeAttribute("commentBlog");
		session.removeAttribute("detailsDivBlog");
		session.removeAttribute("haedingBlog");
		session.removeAttribute("userIdBlog");
		session.removeAttribute("detailsBlog");
		session.removeAttribute("detailsDivTextBlog");

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

		Map<String, Object> aeDataMap = null;
		Map<String, Object> dataMap = null;
		List<Map<String, Object>> getProductList;
		
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

		session.setAttribute("userRatingsBlog", ratingDiv.toString());
		session.setAttribute("commentBlog", comment.toString());
		session.setAttribute("detailsDivTextBlog", detailsDiv.toString());
		session.setAttribute("haedingBlog", haeding.toString());
		session.setAttribute("titlePage", titlePage.toString());
		session.setAttribute("userIdBlog", userId.toString());
		session.setAttribute("detailsBlog", details.toString());
		session.setAttribute("detailsDivTextBlog", detailsDivText.toString());
		session.setAttribute("imagePath", imagePath);
		session.setAttribute("keywords", keywords.toString());



		return "blogComment";

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
		HttpSession session = req.getSession();
		session.removeAttribute("blogDetails");
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

									+ "<div class='box cf'><div class='excerpt'><a href='#' class='post-heading'>"
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
	
	//Video fetching for the site
	// strt test
		@RequestMapping(value = "/videos", method = RequestMethod.GET)
		public ModelAndView getUservideos(HttpServletRequest req,
				HttpServletResponse response, ModelMap model) throws IOException,
				SQLException {
			HttpSession session = req.getSession();
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
	 
	

}
