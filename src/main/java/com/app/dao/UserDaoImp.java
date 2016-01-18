package com.app.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

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

@Repository
public class UserDaoImp implements UserDao {

	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	@Qualifier("dataSource")
	public void setJdbcTemplate(DataSource dataSource) {
		System.out.println("Constructor");
		this.jdbcTemplate = new JdbcTemplate(dataSource);

	}

	public List<User> userList() {
		String query = "select * from huntzdown.login";
		// List<?> list = jdbcTemplate.queryForList(query);

		List<User> userList = jdbcTemplate.query(query, new RowMapper() {
			@Override
			public User mapRow(ResultSet rs, int arg1) throws SQLException {
				User user = new User();
				user.setUserName(rs.getString("userName"));
				user.setRoll(rs.getString("roll"));
				user.setPassWord(rs.getString("passWord"));
				return user;
			}
		});
		// return (List<User>) list;
		return userList;
	}

	@Override
	public void addUser(User user,String path) {
		System.out.println("DAO");
		 


			   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

			   Calendar cal = Calendar.getInstance();
			   System.out.println(dateFormat.format(cal.getTime()));
		 
		
		
		String sql = "INSERT INTO huntzdown.userdata(user_name,password,name,mob_number,email,pic_path,comments,date) VALUES(?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { user.getUserName(),user.getPassWord(), user.getName(),user.getMobNumber(),user.getEmail(),path,user.getComment(),dateFormat.format(cal.getTime())});
		
		System.out.println("Done entries.>>>"+sql);
	}
	
	
	@Override
	public void addComment(AddComment addComment) {
		System.out.println("DAO addComment");
		 


			   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

			   Calendar cal = Calendar.getInstance();
			   System.out.println(dateFormat.format(cal.getTime()));
		 
		
		
		String sql = "INSERT INTO huntzdown.commentdata(itemId,name,email,comments,date,ratings) VALUES(?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { addComment.getComment_post_ID(),addComment.getAuthor(), addComment.getEmail(),addComment.getComment(),dateFormat.format(cal.getTime()),addComment.getRatings()});
		
		System.out.println("Done entries.addComment>>>"+sql);
	}
	
	@Override
	public void addCarComment(AddCarComment addComment) {
		System.out.println("DAO addComment");
		 


			   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

			   Calendar cal = Calendar.getInstance();
			   System.out.println(dateFormat.format(cal.getTime()));
		 
		
		
		String sql = "INSERT INTO huntzdown.carcomment(itemId,name,email,comments,date,ratings) VALUES(?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { addComment.getComment_post_ID(),addComment.getAuthor(), addComment.getEmail(),addComment.getComment(),dateFormat.format(cal.getTime()),addComment.getRatings()});
		
		System.out.println("Done entries.addComment>>>"+sql);
	}
	
	@Override
	public void addRestroComment(AddRestroComment addComment) {
		System.out.println("DAO addComment");
		 


			   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

			   Calendar cal = Calendar.getInstance();
			   System.out.println(dateFormat.format(cal.getTime()));
		 
		
		
		String sql = "INSERT INTO huntzdown.restrocomment(itemId,name,email,comments,date,ratings) VALUES(?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { addComment.getComment_post_ID(),addComment.getAuthor(), addComment.getEmail(),addComment.getComment(),dateFormat.format(cal.getTime()),addComment.getRatings()});
		
		System.out.println("Done entries.addComment>>>"+sql);
	}

	
	public void deleteUser(String userName) {
		System.out.println("Delete Dao");
		String sql = "delete from login where userName='" + userName + "'";
		jdbcTemplate.execute(sql);
	}

	public void deleteUser() {
		System.out.println("Delete Dao");
		String sql = "delete from login where roll !='admin'";
		jdbcTemplate.execute(sql);
	}

	@Override
	public User getUserRecord(String userName) {
		System.out.println("GetRecords");
		// String sql = "select * from login where userName='" + userName + "'";
	return null;
	}

	public User userRecords(String sql) {
		List<Map<String, Object>> userMapList = jdbcTemplate.queryForList(sql);
		User user = new User();
		System.out.println(jdbcTemplate.queryForList(sql));
		if (jdbcTemplate.queryForList(sql).size() > 0) {
			user.setUserName((String) userMapList.get(0).get("userName"));
			user.setPassWord((String) userMapList.get(0).get("passWord"));
			user.setRoll((String) userMapList.get(0).get("roll"));
		}
		System.out.println(user);
		return user;

	}

	@Override
	public User signIn(User user) {
		String sql = "select * from login where userName='"
				+ user.getUserName() + "' and passWord='" + user.getPassWord()
				+ "'";
		return userRecords(sql);
	}

	@Override
	public void editUser(User user) {
		if (user.getUserName().equalsIgnoreCase("arun")) {
			user.setRoll("admin");
		} else {
			user.setRoll("user");
		}
		System.out.println("Update");
		System.out.println(user.getPassWord());
		String sql = "update login set passWord=? , roll=?  where userName = ?";
		jdbcTemplate.update(sql, new Object[] { user.getPassWord(),
				user.getRoll(), user.getUserName() });

	}

	@Override
	public User getUserName(String value) {
		String query = "select * from login where userName like '" + value
				+ "%'";
		System.out.println("QUERY " + query);
		return userRecords(query);

	}
	
	
	public List<Map<String, Object>> getDetailsList() throws DataAccessException {
		System.out.println("inside product list..");
		
		String query = "select * from huntzdown.userdata";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
		
	}
	
	
	


	@Override
	public List<Map<String, Object>> getDetailsList(String userName) {
System.out.println("inside product list..");
		
		String query = "select * from huntzdown.userdata where user_name='"+userName+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}

	@Override
	public List<Map<String, Object>> getDetailsPic(String id) throws DataAccessException {
		System.out.println("inside getDetailsPic list..");
		
		String query = "select * from huntzdown.userdata where id='"+id+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList.>>?????.."+getProductList);
		return getProductList;
	}
	
        @Override
    public List<Map<String, Object>> getMobilePic(String id) throws DataAccessException {
        System.out.println("inside getMobilePic list..");

        String query = "select * from huntzdown.mobiles where id='" + id + "'";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("getProductList.>>?????.." + getProductList);
        return getProductList;
    }
        
	@Override
	public List<Map<String, Object>> getCarsDetails(String id) throws DataAccessException {
		System.out.println("inside getDetailsPic list..");
		
		String query = "select * from huntzdown.cars where id='"+id+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList.>>?????.."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getRestroDetails(String id) throws DataAccessException {
		System.out.println("inside getDetailsPic list..");
		
		String query = "select * from huntzdown.restro where id='"+id+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList.>>?????.."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getBlogPic(String id) throws DataAccessException {
		String query = "select * from huntzdown.blog where id='"+id+"'";
		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList.>>?????.."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getDetailsComments(String id) throws DataAccessException {
		System.out.println("inside getDetailsPic list..");
		
		String query = "select * from huntzdown.commentdata where itemId='"+id+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getDetailsComments listsssssss.>>?????.."+getProductList);
		return getProductList;
	}
        
        @Override
    public List<Map<String, Object>> getMobilesComments(String id) throws DataAccessException {
        System.out.println("inside getDetailsPic list..");

        String query = "select * from huntzdown.mobilecomment where itemId='" + id + "'";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("getDetailsComments listsssssss.>>?????.." + getProductList);
        return getProductList;
    }
	
	@Override
	public List<Map<String, Object>> getCarsComments(String id) throws DataAccessException {
		System.out.println("inside getDetailsPic list..");
		
		String query = "select * from huntzdown.carcomment where itemId='"+id+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getDetailsComments listsssssss.>>?????.."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getRestroComments(String id) throws DataAccessException {
		System.out.println("inside getDetailsPic list..");
		
		String query = "select * from huntzdown.restrocomment where itemId='"+id+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getDetailsComments listsssssss.>>?????.."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getBlogComments(String id) throws DataAccessException {
		
		String query = "select * from huntzdown.blogComment where itemId='"+id+"'";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getDetailsBlogs(String category) throws DataAccessException {
		String query = "select * from huntzdown.blog where category='"+category+"'";
		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getDetailsComments listsssssss.>>?????.."+getProductList);
		return getProductList;
	}

	@Override
	public void addMovie(AddMovie addMovie, String path) {
		
		System.out.println("DAO addMovie");
		   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

		   Calendar cal = Calendar.getInstance();
		   System.out.println(dateFormat.format(cal.getTime()));
	 
	
	
	String sql = "INSERT INTO huntzdown.movie(movie_name,actor_name,pic_path,comments,date,upcoming_movie) VALUES(?,?,?,?,?,?)";
	jdbcTemplate.update(sql, new Object[] { addMovie.getMoviename(),addMovie.getActName(),path,addMovie.getComment(),dateFormat.format(cal.getTime()),addMovie.getUpcomingProduct()});
	
	System.out.println("Done entries.>>>"+sql);
		
		
	}

	@Override
	public void addCars(AddCar addCar, String path1, String path2,
			String path3, String path4, String path5, String path6) {
		
		System.out.println("DAO addCars");
		   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

		   Calendar cal = Calendar.getInstance();
		   System.out.println(dateFormat.format(cal.getTime()));
	 
	
	
	String sql = "INSERT INTO huntzdown.cars(car_name,model,price,path1,path2,path3,path4,path5,path6,comments,upcoming_car) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	jdbcTemplate.update(sql, new Object[] { addCar.getCarName(),addCar.getModel(),addCar.getPrice(),path1,path2,path3,path4,path5,path6,addCar.getComment(),addCar.getUpcomingProduct()});
	
	System.out.println("Done entries.>>>"+sql);
		
		
	}

	@Override
	public void addRestro(AddRestro addRestro, String path1, String path2,
			String path3, String path4, String path5, String path6) {
		System.out.println("addRestro addRestro");
		   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

		   Calendar cal = Calendar.getInstance();
		   System.out.println(dateFormat.format(cal.getTime()));
	 
	
	
	String sql = "INSERT INTO huntzdown.restro(restro_name,location,timing,food,price,phone,path1,path2,path3,path4,path5,path6,comments,rating,totalComment) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	jdbcTemplate.update(sql, new Object[] { addRestro.getRestroName(),addRestro.getLocation(),addRestro.getTiming(),addRestro.getFoodtype(),addRestro.getPrice(),addRestro.getPhone(),path1,path2,path3,path4,path5,path6,addRestro.getComment(),0,0});
	
	System.out.println("Done entries.>>>"+sql);		
	}

	@Override
	public void addBlog(AddBlog addBlog, String path, InputStream inputStream) throws ClassNotFoundException {
		
		 ResourceBundle bundle = ResourceBundle.getBundle("jdbc");  
         String driverClassName=bundle.getString("jdbc.driverClassName");
         String dbURL=bundle.getString("jdbc.databaseurl");
         String dbUser= bundle.getString("jdbc.username");
         String dbPass= bundle.getString("jdbc.password");

		    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

		   Calendar cal = Calendar.getInstance();
		   Connection conn = null; // connection to the database
	        String message = null;  // message will be sent back to client
	         
	        try {
	            // connects to the database
	        	Class.forName("com.mysql.jdbc.Driver");  
	            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
	 
	            // constructs SQL statement
	            String sql = "INSERT INTO huntzdown.blog(blog_name,path,comments,date) VALUES(?,?,?,?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, addBlog.getBlogname());
	                statement.setString(2, "hi");
	            statement.setString(3, addBlog.getComment());
	            statement.setString(4, dateFormat.format(cal.getTime()));
	          
	            // sends the statement to the database server
	            int row = statement.executeUpdate();
	            if (row > 0) {
	                message = "File uploaded and saved into database";
	            }
	        } catch (SQLException ex) {
	            message = "ERROR: " + ex.getMessage();
	            ex.printStackTrace();
	        } finally {
	            if (conn != null) {
	                // closes the database connection
	                try {
	                    conn.close();
	                } catch (SQLException ex) {
	                    ex.printStackTrace();
	                }
	            }
	           
	        }	 
	
	
		
	}

	public void addUserBlog(AddUserBlog addBlog) {
		DateFormat dateFormat = new SimpleDateFormat("yy/MM/dd");

		   Calendar cal = Calendar.getInstance();
		   System.out.println(dateFormat.format(cal.getTime()));
	 
	
	
	String sql = "INSERT INTO huntzdown.blogcomment(itemId,name,email,comments,date) VALUES(?,?,?,?,?)";
	jdbcTemplate.update(sql, new Object[] { addBlog.getComment_post_ID(),addBlog.getAuthor(), addBlog.getEmail(),addBlog.getComment(),dateFormat.format(cal.getTime())});
	
	System.out.println("Done entries.addComment>>>"+sql);		
	}

	@Override
	public List<Map<String, Object>> getCarsList() {
System.out.println("inside product list..");
		
		String query = "select * from huntzdown.cars";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}

	//start latest review listing
	@Override
	public List<Map<String, Object>> getRestroList() {
System.out.println("inside product list..");
		
		String query = "select *from huntzdown.restro order by id desc LIMIT 3";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getBikeListing() {
System.out.println("inside product list..");
		
		String query = "select *from huntzdown.bike WHERE upcoming_bike IS NULL order by id desc LIMIT 3";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getCarListing() {
System.out.println("inside product list..");
		
		String query = "select *from huntzdown.cars WHERE upcoming_car IS NULL order by id desc LIMIT 3";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}
	
	@Override
	public List<Map<String, Object>> getmobileListing() {
System.out.println("inside product list..");
		
		String query = "select *from huntzdown.mobiles WHERE upcoming_mobile IS NULL order by id desc LIMIT 3";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}
	
	//end latest review

    @Override
    public void updateRestroComment(int value,int tcomment,int id) {
                System.out.println(id+"updateRestroComment999.........."+value+"...................."+tcomment);
        String query = "update huntzdown.restro set rating ='"+value+"',totalComment='"+tcomment+"' where id='"+id+"'" ;
        jdbcTemplate.execute(query);
        System.out.println("update successfully");
    }

    @Override
    public List<Map<String, Object>> getTreandRestro() {
        System.out.println("updateRestroComment..............................");
        String query = "select * from huntzdown.restro where rating>=4";
        List<Map<String, Object>> getTreandRestro = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getTreandRestro);
		return getTreandRestro;
    }

    @Override
    public List<Map<String, Object>> searchRestro(RestroSearch rSearch) {
        System.out.println(rSearch.getName()+"=searchRestro..............................="+rSearch.getCity());
        String query="";
        if(rSearch.getCity().equals("select")){
            System.out.println("name is select");
              query = "select * from huntzdown.restro";
        }
        else{
         query = "select * from huntzdown.restro where location="+"'"+rSearch.getCity()+"'"+" && restro_name="+"'"+rSearch.getName()+"'";
            System.out.println(query);
        }
        List<Map<String, Object>> searchResult = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+searchResult);
		return searchResult;
    }

    @Override
    public List<Map<String, Object>> dropDownValueForRestro(String city) {
       System.out.println(city+"searchRestro..............................");
        String query = "select restro_name from huntzdown.restro where location='"+city+"'";
        List<Map<String, Object>> restroName = jdbcTemplate.queryForList(query);	
		System.out.println("restroName..."+restroName);
		return restroName;
    }

//shantanu code 18-may-2014
    @Override
    public void addMobile(AddMobiles addMobiles, String path1, String path2,
            String path3, String path4, String path5, String path6) {
        System.out.println("DAO addCars");
        DateFormat dateFormat = new SimpleDateFormat("dd/MMM/yyyy");

        Calendar cal = Calendar.getInstance();
        System.out.println(dateFormat.format(cal.getTime()));

        String sql = "INSERT INTO huntzdown.mobiles(mobile,companyName,operatingSystem,price,path1,path2,path3,path4,path5,path6,comments,upcoming_mobile) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{addMobiles.getMobileName(), addMobiles.getCompanyName(), addMobiles.getModel(), addMobiles.getPrice(), path1, path2, path3, path4, path5, path6, addMobiles.getComment(),addMobiles.getUpcomingProduct()});

        System.out.println("Done entries.>>>" + sql);

    }

    @Override
    public List<Map<String, Object>> getMobileList() {
        System.out.println("inside product list..");

        String query = "select * from huntzdown.mobiles";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("getProductList..." + getProductList);
        return getProductList;
    }

    @Override
    public List<Map<String, Object>> getMobileList(String brandName) {
        System.out.println("inside product list..");

        String query = "select * from huntzdown.mobiles where companyName='" + brandName + "'";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("andar ja kr laya hai mobile list.>>>..." + getProductList);
        return getProductList;
    }

    public void addMobileComment(AddMobileComment addMobileComment) {
        System.out.println("DAO addComment");

        DateFormat dateFormat = new SimpleDateFormat("dd/MMM/yyyy");

        Calendar cal = Calendar.getInstance();
        System.out.println(dateFormat.format(cal.getTime()));

        String sql = "INSERT INTO huntzdown.mobilecomment(itemId,name,email,comments,date,ratings) VALUES(?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{addMobileComment.getComment_post_ID(), addMobileComment.getAuthor(), addMobileComment.getEmail(), addMobileComment.getComment(), dateFormat.format(cal.getTime()), addMobileComment.getRatings()});

        System.out.println("Done entries.addComment>>>" + sql);

    }

    @Override
    public void addMobileRating(int comment_post_ID, int userRating) {

        String sql = "UPDATE huntzdown.mobiles SET rating='" + userRating + "' WHERE id='" + comment_post_ID + "'";
        jdbcTemplate.execute(sql);
        System.out.println("Done entries.addComment>>>" + sql);
    }

    @Override
    public List<Map<String, Object>> getTrendMobile() {
        System.out.println("updateRestroComment..............................");
        String query = "select * from huntzdown.mobiles where rating>=4";
        List<Map<String, Object>> getTreandMobile = jdbcTemplate.queryForList(query);
        System.out.println("getProductList..." + getTreandMobile);
        return getTreandMobile;
    }

    @Override
    public void addBike(AddBikes addBikes, String path1, String path2, String path3, String path4, String path5, String path6) {
        System.out.println("DAO addBikes");
        DateFormat dateFormat = new SimpleDateFormat("dd/MMM/yyyy");

        Calendar cal = Calendar.getInstance();
        System.out.println(dateFormat.format(cal.getTime()));

        String sql = "INSERT INTO huntzdown.bike(bike_name,company,model,price,path1,path2,path3,path4,path5,path6,comments,date,upcoming_bike) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{addBikes.getBikeName(), addBikes.getCompanyName(), addBikes.getModel(), addBikes.getPrice(), path1, path2, path3, path4, path5, path6, addBikes.getComment(),dateFormat.format(cal.getTime()),addBikes.getUpcomingProduct()});

        System.out.println("Done entries.>>>" + sql);    }

    @Override
    public List<Map<String, Object>> getBikesList() {
 System.out.println("inside product list..");

        String query = "select * from huntzdown.bike";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("getProductList..." + getProductList);
        return getProductList;    }

    @Override
    public List<Map<String, Object>> getTrendBike() {
        System.out.println("updateRestroComment..............................");
        String query = "select * from huntzdown.bike where rating>=4";
        List<Map<String, Object>> getTreandMobile = jdbcTemplate.queryForList(query);
        System.out.println("getProductList..." + getTreandMobile);
        return getTreandMobile;    }

    @Override
    public List<Map<String, Object>> getBikePic(String id) {
        System.out.println("inside getMobilePic list..");

        String query = "select * from huntzdown.bike where id='" + id + "'";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("getProductList.>>?????.." + getProductList);
        return getProductList;    }

    @Override
    public List<Map<String, Object>> getBikeComments(String id) {
        System.out.println("inside getDetailsPic list..");

        String query = "select * from huntzdown.bikecomment where itemId='" + id + "'";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("getDetailsComments listsssssss.>>?????.." + getProductList);
        return getProductList;    }

    @Override
    public void addBikeComment(AddBikeComment addBikeComment) {
        System.out.println("DAO addComment");

        DateFormat dateFormat = new SimpleDateFormat("dd/MMM/yyyy");

        Calendar cal = Calendar.getInstance();
        System.out.println(dateFormat.format(cal.getTime()));

        String sql = "INSERT INTO huntzdown.bikecomment(itemId,name,email,comments,date,ratings) VALUES(?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{addBikeComment.getComment_post_ID(), addBikeComment.getAuthor(), addBikeComment.getEmail(), addBikeComment.getComment(), dateFormat.format(cal.getTime()), addBikeComment.getRatings()});

        System.out.println("Done entries.addComment>>>" + sql);    }

    @Override
    public void addBikeRating(int comment_post_ID, int userRating) {
        String sql = "UPDATE huntzdown.bike SET rating='" + userRating + "' WHERE id='" + comment_post_ID + "'";
        jdbcTemplate.execute(sql);
        System.out.println("Done entries.addComment>>>" + sql);    }

    @Override
    public List<Map<String, Object>> getSearchBikesList(String bikeBrand) {
        System.out.println("inside product list..");
        String query = "select * from huntzdown.bike where company='" + bikeBrand + "'";
        System.out.println("queryyyyy+++++++++++++"+query);
        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("andar ja kr laya hai bike list.>>>..." + getProductList);
        return getProductList;    
    }

    @Override
    public void addUserForBlog(AddBlogUser addBlog, String path) {
        DateFormat dateFormat = new SimpleDateFormat("dd/MMM/yyyy");

        Calendar cal = Calendar.getInstance();
        System.out.println(dateFormat.format(cal.getTime()));

        String sql = "INSERT INTO huntzdown.userdetails(name,pic_path,email,password,gender,city,country,date) VALUES(?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{addBlog.getName(), path, addBlog.getEmail(), addBlog.getPassword(), addBlog.getGender(), addBlog.getCity(), addBlog.getCountry(), dateFormat.format(cal.getTime())});

        System.out.println("Done entries.>>>" + sql);    
        }

    @Override
    public List<Map<String, Object>> getSearchList(String uName) {
        System.out.println("inside product list..");

        String query = "select password from huntzdown.userdetails where email='" + uName + "'";

        List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);
        System.out.println("getProductList..." + getProductList);
        return getProductList;    }
//end shantanu code 2014

    @Override
    public List<Map<String, Object>> getTrendingBlog() {
        String query = "select * from huntzdown.blog where stars>=3 order by id DESC";
        List<Map<String, Object>> getTreandBlog = jdbcTemplate.queryForList(query);	
	return getTreandBlog;    
    }

    @Override
    public List<Map<String, Object>> getTreandBike() {
        String query = "select * from huntzdown.bike where rating>=3";
        List<Map<String, Object>> getTreandBike = jdbcTemplate.queryForList(query);	
        System.out.println("getProductList..."+getTreandBike);
	return getTreandBike;
    }

    @Override
    public List<Map<String, Object>> getTreandCar() {
        String query = "select * from huntzdown.cars where rating>=3";
        List<Map<String, Object>> getTreandCars = jdbcTemplate.queryForList(query);	
        System.out.println("getProductList..."+getTreandCars);
	return getTreandCars;
    }
    
    @Override
    public List<Map<String, Object>> getLatestBlog() {
        String query = "SELECT * FROM huntzdown.blog  where isVideo IS NULL order by id desc";
        List<Map<String, Object>> getblogs = jdbcTemplate.queryForList(query);	
        System.out.println("getProductList..."+getblogs);
	return getblogs;
    }

	@Override
	public List<Map<String, Object>> getUpcomingCar() {
		String query = "select *from huntzdown.cars WHERE upcoming_car IS NOT NULL order by id desc LIMIT 4";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}

	@Override
	public List<Map<String, Object>> getUpcomingBike() {
		String query = "select *from huntzdown.bike WHERE upcoming_bike IS NOT NULL order by id desc LIMIT 4";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}

	@Override
	public List<Map<String, Object>> getUpcomingMobile() {
		String query = "select *from huntzdown.mobiles WHERE upcoming_mobile IS NOT NULL order by id desc LIMIT 4";

		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}

	@Override
	public List<Map<String, Object>> getBlogerWeek() {
		String query = "SELECT * FROM blog WHERE id=(SELECT itemId FROM (SELECT itemId, COUNT(*) AS t FROM blogcomment GROUP BY itemId ORDER BY id DESC) AS tempT WHERE t=(SELECT MAX(t) AS high FROM (SELECT itemId, COUNT(*) AS t FROM blogcomment GROUP BY itemId ORDER BY id DESC) AS vf)LIMIT 1);";
		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		System.out.println("getProductList..."+getProductList);
		return getProductList;
	}

	@Override
	public List<Map<String, Object>> getDetailsVideos() {
		String query = "select * from huntzdown.blog where isVideo='video'";
		List<Map<String, Object>> getProductList = jdbcTemplate.queryForList(query);	
		return getProductList;
	}
    
	

}
