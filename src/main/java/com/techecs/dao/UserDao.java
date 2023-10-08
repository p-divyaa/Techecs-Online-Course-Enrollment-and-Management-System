package com.techecs.dao;

import java.util.List;

import com.techecs.beans.Courses;
import com.techecs.beans.Login;
import com.techecs.beans.User;

public interface UserDao {

	public int save(User user);

	public boolean login(String username, String pwd);

	public User get(String username);

	public User validateUser(Login login);

	public boolean getAlreadyUser(String username);

	public List<String> getCourses();

	public List<Courses> getCoursedetails();

	public List<Courses> getUserCoursedetails(String coursid);

	public String checkAndAdd(String courseid, Integer amount, String username);

}
