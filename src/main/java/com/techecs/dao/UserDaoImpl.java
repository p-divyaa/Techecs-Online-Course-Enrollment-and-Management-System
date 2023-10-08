package com.techecs.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import com.techecs.beans.Courses;
import com.techecs.beans.Login;
import com.techecs.beans.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	private JdbcTemplate jdbcTemplate;
	private DriverManagerDataSource ds;

	@Autowired
	public UserDaoImpl(JdbcTemplate jdbcTemplate, DriverManagerDataSource ds) {

		this.jdbcTemplate = jdbcTemplate;
		this.ds = ds;
		String query = "insert into student(id,name,city)values(?,?,?)";
		try {
			/*
			 * jdbcTemplate.update(query, 502, "yuvraj", "bihar");
			 * System.out.println("query running");
			 */
			Connection con = DataSourceUtils.getConnection(ds); // your datasource
			Statement s = con.createStatement();
			query = "select * from student";
			ResultSet rs = s.executeQuery(query);
			ResultSetMetaData rsmd = rs.getMetaData();
			System.out.println(rsmd.getColumnName(1) + " " + rsmd.getColumnName(2) + " " + rsmd.getColumnName(3));
			while (rs.next()) {// your query

				int a = rs.getInt(1);
				String b = rs.getString(2);
				String c = rs.getString(3);
				System.out.println(a + " " + b + " " + c + " ");
			}

		} catch (Exception e) {
			System.out.println("same id you entered");
		}
	}

	public int save(User user) {
		int added = 0;
		try {
			String query = "insert into users(name,email,username,password,phoneno)values(?,?,?,?,?)";

			added = jdbcTemplate.update(query, user.getName(), user.getEmail(), user.getUsername(), user.getPassword(),
					user.getPhoneno());
		} catch (Exception e) {
			System.out.println("In exception user saving" + e.getMessage());
		}
		return added;
	}

	public boolean login(String username, String pwd) {
		String query = "insert into student(id,name,city)values(?,?,?)";
		return false;
	}

	public User get(String username) {
		String query = "select * from users where username='" + username + "'";
		List<User> listuser = jdbcTemplate.query(query, new UserMapper());

		User user = listuser.get(0);
		return user;
	}

	public User validateUser(Login login) {

		List<User> users = null;
		try {
			String sql = "select * from users where username='" + login.getUsername() + "' and password='"
					+ login.getPassword() + "'";

			users = jdbcTemplate.query(sql, new UserMapper());

		} catch (Exception e) {
			System.out.println("exception in get uservalidation" + e.getMessage());
		}

		return users.size() > 0 ? users.get(0) : null;
	}

	public List<Courses> getCoursedetails() {
		List<Courses> listcourses = null;
		try {
			String query = "select * from courses ";
			listcourses = jdbcTemplate.query(query, new CourseMapper());
		} catch (Exception e) {

			System.out.println("exception in get coursedetails" + e.getMessage());
		}

		return listcourses;
	}

	public List<String> getCourses() {
		List<String> coursetext = new ArrayList<>();

		try {

			Connection con = DataSourceUtils.getConnection(ds); // your datasource
			Statement s = con.createStatement();
			String query = "select course from courses";
			ResultSet rs = s.executeQuery(query);
			ResultSetMetaData rsmd = rs.getMetaData();
			// System.out.println(rsmd.getColumnName(1) + " " + rsmd.getColumnName(2) + " "
			// + rsmd.getColumnName(3));
			while (rs.next()) {// your query

				coursetext.add(rs.getString(1));
				// System.out.println(a + " " + b + " " + c + " ");
			}

		} catch (Exception e) {
			System.out.println("Exception in courses" + e.getMessage());
		}
		return coursetext;
	}

	@Override
	public List<Courses> getUserCoursedetails(String coursid) {
		String[] course_id = coursid.split(",");
		List<Courses> listcourses = null;
		List<Courses> coursepurchased = new ArrayList<Courses>();
		for (int i = 0; i < course_id.length; i++) {
			String query = "select * from courses where courseid='" + course_id[i] + "'";
			listcourses = jdbcTemplate.query(query, new CourseMapper());
			coursepurchased.add(listcourses.get(0));
		}
		return coursepurchased;
	}

	@Override
	public boolean getAlreadyUser(String username) {
		String query = "select * from users where username='" + username + "'";
		List<User> listuser = jdbcTemplate.query(query, new UserMapper());
		boolean alreadyuser = true;

		try {
			User user = listuser.get(0);

		} catch (Exception e) {
			System.out.println("not available user");
			alreadyuser = false;
		}

		return alreadyuser;

	}

	public boolean getCorrectAmount(String courseid, Integer amounts) throws Exception {
		int amount = amounts.intValue();
		System.out.println(amount);
		System.out.println(courseid);
		List<Courses> course = null;
		String sql = "select * from courses where courseid='" + courseid + "' and amount=" + amount + "";
		course = jdbcTemplate.query(sql, new CourseMapper());
		return course.size() > 0 ? true : false;
	}

	@Override
	public String checkAndAdd(String courseid, Integer amount, String username) {
		String message = "wrong course id/Amount";
		String query = null;
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		boolean correctid = false;
		boolean add = true;
		try {
			con = DataSourceUtils.getConnection(ds);
			Statement s = con.createStatement();
			query = "select courseid from courses ";
			rs = s.executeQuery(query);
			ResultSetMetaData rsmd = rs.getMetaData();
			while (rs.next()) {
				String course = rs.getString(1);

				if (courseid.equals(course)) {

					System.out.println("in right id");
					correctid = true;
					System.out.println(correctid);
					correctid = getCorrectAmount(courseid, amount);
					System.out.println("in end");
					System.out.println(correctid);
				}
			}

			// List<Courses> listcourses = jdbcTemplate.query(query, new CourseMapper());

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception" + e.getMessage());
			correctid = false;
		}
		if (correctid == false) {
		} else {
			try {
				String[] course_id = null;
				// your datasource
				con = DataSourceUtils.getConnection(ds);
				Statement s = con.createStatement();
				query = "select courseid from users where username='" + username + "'";
				rs = s.executeQuery(query);
				ResultSetMetaData rsmd = rs.getMetaData();
				rs.next();
				String course = rs.getString(1);
				if (course.length() == 0) {
					int added = 0;
					try {
						query = "UPDATE users set courseid='" + courseid + "where username='" + username + "'";

						added = jdbcTemplate.update(query);
						message = "Course Added";
					} catch (Exception e) {
						System.out.println("In adding course id :" + e.getMessage());
					}

				} else {
					course_id = course.split(",");
					for (int i = 0; i < course_id.length; i++) {
						if (!courseid.equals(course_id[i])) {

						} else {
							System.out.println("In already purchase");
							message = "Course Already Purchased";
							add = false;
						}
					}
					if (add) {
						int added = 0;
						try {
							query = "UPDATE users set courseid='" + course + "," + courseid + "'where username='"
									+ username + "'";

							added = jdbcTemplate.update(query);
							message = "Course Added";
						} catch (Exception e) {
							System.out.println("In adding course id :" + e.getMessage());
						}
					}
				}

			} catch (Exception e) {
				System.out.println("Exception in courses" + e.getMessage());
				int added = 0;
				try {
					query = "UPDATE users set courseid='" + courseid + "'where username='" + username + "'";

					added = jdbcTemplate.update(query);
					message = "Course Added";
				} catch (Exception ne) {
					System.out.println("In adding course id :" + ne.getMessage());
				}
			}
			return message;
		}
		return message;
	}

}
