package com.techecs.beans;

public class Courses {
	private String course;
	private String courseid;
	private String aboutcourse;
	private String courseurl;
	private int amount;

	public Courses() {

	}

	public Courses(String course, String courseid, String aboutcourse, String courseurl, int amount) {
		super();
		this.course = course;
		this.courseid = courseid;
		this.aboutcourse = aboutcourse;
		this.courseurl = courseurl;
		this.amount = amount;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public String getAboutcourse() {
		return aboutcourse;
	}

	public void setAboutcourse(String aboutcourse) {
		this.aboutcourse = aboutcourse;
	}

	public String getCourseurl() {
		return courseurl;
	}

	public void setCourseurl(String courseurl) {
		this.courseurl = courseurl;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Courses [course=" + course + ", courseid=" + courseid + ", aboutcourse=" + aboutcourse + ", courseurl="
				+ courseurl + "]";
	}

}