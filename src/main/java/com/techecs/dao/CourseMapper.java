package com.techecs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.techecs.beans.Courses;

public class CourseMapper implements RowMapper<Courses> {

	public Courses mapRow(ResultSet rs, int rowNum) throws SQLException {
		Courses course = new Courses();
		course.setCourse(rs.getString("course"));
		course.setCourseid(rs.getString("courseid"));
		course.setAboutcourse(rs.getString("aboutcourse"));
		course.setCourseurl(rs.getString("url"));
		course.setAmount(rs.getInt("amount"));

		return course;
	}

}