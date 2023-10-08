package com.techecs.beans;

import org.springframework.stereotype.Component;

@Component
public class CourseUser {
	private String username;
	private String courseid;
	private String dateofenroll;

	public CourseUser(String username, String courseid, String dateofenroll) {

		this.username = username;
		this.courseid = courseid;
		this.dateofenroll = dateofenroll;
	}

	public CourseUser() {

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public String getDateofenroll() {
		return dateofenroll;
	}

	public void setDateofenroll(String dateofenroll) {
		this.dateofenroll = dateofenroll;
	}

	@Override
	public String toString() {
		return "CourseUser [username=" + username + ", courseid=" + courseid + ", dateofenroll=" + dateofenroll + "]";
	}

}
