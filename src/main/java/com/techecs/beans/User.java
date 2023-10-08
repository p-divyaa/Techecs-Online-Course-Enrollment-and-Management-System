package com.techecs.beans;

import org.springframework.stereotype.Component;

@Component("user")
public class User {
	private String name;
	private String email;
	private String username;
	private String password;
	private String phoneno;
	private String courseid;

	public User(String name, String email, String username, String password, String phoneno, String courseid) {
		super();
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
		this.phoneno = phoneno;
		this.courseid = courseid;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public User() {
		System.out.println("User constructor");
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", email=" + email + ", username=" + username + ", password=" + password + "]";
	}

}
