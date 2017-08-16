package com.app.dao;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.app.user.AddBikeComment;
import com.app.user.AddBikes;
import com.app.user.AddBlog;
import com.app.user.AddBlogUser;
import com.app.user.AddCar;
import com.app.user.AddCarComment;
import com.app.user.AddComment;
import com.app.user.AddMobileComment;
import com.app.user.AddMobiles;
import com.app.user.AddMovie;
import com.app.user.AddRestro;
import com.app.user.AddRestroComment;
import com.app.user.AddUserBlog;
import com.app.user.RestroSearch;
import com.app.user.User;
import com.app.user.WriteConfession;


public interface UserDao {

    public void addUser(User loginUser, String path);

    public void addMovie(AddMovie addMovie, String path);

    public void addCars(AddCar addCar, String path1, String path2, String path3, String path4, String path5, String path6);

    public void addRestro(AddRestro addRestro, String path1, String path2, String path3, String path4, String path5, String path6);

    public void addBlog(AddBlog addBlog) throws ClassNotFoundException;

    public void addComment(AddComment addComment);

    public void addCarComment(AddCarComment addComment);

    public void addRestroComment(AddRestroComment addRestroComment);

    public List<User> userList();

    public List<Map<String, Object>> getDetailsPic(String string);

    public List<Map<String, Object>> getCarsDetails(String string);

    public List<Map<String, Object>> getRestroDetails(String string);

    public List<Map<String, Object>> getDetailsComments(String string);

    public List<Map<String, Object>> getCarsComments(String string);

    public List<Map<String, Object>> getRestroComments(String string);

    public void updateRestroComment(int value, int id ,int tComment);

    public List<Map<String, Object>> getDetailsList();

    public List<Map<String, Object>> getCarsList();

    public List<Map<String, Object>> getRestroList();
    public List<Map<String, Object>> getTreandRestro();
    public List<Map<String, Object>> getTrendingBlog();
    public List<Map<String, Object>> getTreandBike();
    public List<Map<String, Object>> getTreandCar();


    public void deleteUser(String userName);

    public void deleteUser();

    public User getUserRecord(String userName);

    public User signIn(User user);

    public void editUser(User editUser);

    public User getUserName(String value);

    public List<Map<String, Object>> getDetailsList(String userName);

    List<Map<String, Object>> getDetailsBlogs(String category) throws DataAccessException;

    List<Map<String, Object>> getBlogPic(String id) throws DataAccessException;

    List<Map<String, Object>> getBlogComments(String id)
            throws DataAccessException;

    public void addUserBlog(AddUserBlog addBlog);
    
    public List<Map<String, Object>> searchRestro(RestroSearch rSearch);
    
    public List<Map<String, Object>> dropDownValueForRestro(String city);
    
    
    //shantanu
        public List<Map<String, Object>> getTrendMobile();
        public List<Map<String, Object>> getTrendBike();

	        
        public List<Map<String, Object>> getMobilePic(String string);

        public List<Map<String, Object>> getBikePic(String string);
        
        public List<Map<String, Object>> getMobilesComments(String string);
	
	public List<Map<String, Object>> getMobileList();

	
	
	public List<Map<String, Object>> getBikeComments(String string);

	

        public List<Map<String, Object>> getBikesList();
        
	


	public void addMobile(AddMobiles addMobiles, String path1, String path2,
			String path3, String path4, String path5, String path6);

	public List<Map<String, Object>> getMobileList(String brandName);

    public void addMobileRating(int comment_post_ID, int userRating);

    public void addBike(AddBikes addBikes, String path1, String path2, String path3, String path4, String path5, String path6);

    public void addBikeComment(AddBikeComment addBikeComment);

    public void addBikeRating(int parseInt, int userRating);

    public List<Map<String, Object>> getSearchBikesList(String bikeBrand);

    public List<Map<String, Object>> getSearchList(String uName);
    
    public void addMobileComment(AddMobileComment addMobileComment);

	List<Map<String, Object>> getLatestBlog();

	List<Map<String, Object>> getmobileListing();

	List<Map<String, Object>> getCarListing();

	List<Map<String, Object>> getBikeListing();

	public List<Map<String, Object>> getUpcomingCar();

	public List<Map<String, Object>> getUpcomingBike();

	public List<Map<String, Object>> getUpcomingMobile();

	public List<Map<String, Object>> getBlogerWeek();

	public void addUserForBlog(AddBlogUser addBlogUser, String path);

	public List<Map<String, Object>> getDetailsVideos();

	public List<Map<String, Object>> getBlogOldPic(String oldpicId);

	public void addConfession(WriteConfession writeConfession);

	public List<Map<String, Object>> getConfessionDetail(String tag);

	List<Map<String, Object>> getConfession();

	public List<Map<String, Object>> getNewsFacts();

	public void addWifiData(String name, String surname);


    //end shntanu
}
