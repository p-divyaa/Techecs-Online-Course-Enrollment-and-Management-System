package com.techecs.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.techecs.beans.Courses;
import com.techecs.beans.Login;
import com.techecs.beans.User;
import com.techecs.dao.UserDao;

@Controller
@RequestMapping("home")
class PageController {
	@Autowired
	UserDao userDao;

	@RequestMapping("homepage")
	public String homepage() throws ServletException, IOException {

		return "index";

	}

	@RequestMapping("header")
	public String header() throws ServletException, IOException {

		return "header";

	}

	@RequestMapping("footer")
	public String footer() throws ServletException, IOException {

		return "footer";

	}

	@RequestMapping("courses")
	public ModelAndView courses() throws ServletException, IOException {
		List<String> courses = userDao.getCourses();
		ModelAndView mv = new ModelAndView("courses");
		mv.addObject("course", courses);
		return mv;

	}

	@RequestMapping("coursedetails")
	public ModelAndView coursedetails() throws ServletException, IOException {
		System.out.println("in course details");
		List<Courses> courses = userDao.getCoursedetails();
		ModelAndView mv = new ModelAndView("coursedetails");
		mv.addObject("coursetext", courses);
		return mv;

	}

	@RequestMapping("checkcourse")
	public ModelAndView ccheckcourse(HttpServletRequest req) throws ServletException, IOException {
		String id = (String) req.getParameter("id");
		// List<Courses> courses = userDao.checkCourse(id);

		ModelAndView mv = new ModelAndView("checkcourse");
		// mv.addObject("coursetext", courses);
		return mv;

	}

	@RequestMapping("clicked")
	public ModelAndView clickedcourse(HttpServletRequest req) throws ServletException, IOException {
		ModelAndView mv = null;
		HttpSession session = req.getSession(false);

		if (session.getAttribute("username") == null) {

			mv = new ModelAndView("login");
			mv.addObject("message", "First Login to get Entrolled");

		} else {
			mv = new ModelAndView("clicked");
			String courseid = (String) req.getParameter("courseid");
			Integer amount = Integer.parseInt(req.getParameter("amount"));
			String username = (String) session.getAttribute("username");
			String message = userDao.checkAndAdd(courseid, amount, username);
			if (message.equals("Course Already Purchased")) {
				// mv = new ModelAndView("coursedetails");
				mv = coursedetails();
				mv.addObject("message", message);
			} else if (message.equals("wrong course id/Amount")) {
				mv = coursedetails();

				mv.addObject("message", message);
			} else {
				mv.addObject("message", message);

			}

		}
		return mv;

	}

	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		ModelAndView v = null;
		if (hs.getAttribute("username") != null) {
			v = new ModelAndView("logout");
			try {
				hs.invalidate();
			} catch (Exception e) {
				System.out.println("in session error");
			}
		} else {
			v = new ModelAndView("login");
		}
		return v;

	}

	@RequestMapping("registration")
	public ModelAndView registrartion(HttpServletRequest req) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		ModelAndView mv = null;
		try {
			if (session.getAttribute("username").equals(null)) {
				mv = new ModelAndView("registration");
			} else {
				mv = new ModelAndView("login");
				mv.addObject("message", "first click on logout to signup");

			}
		} catch (Exception e) {
			mv = new ModelAndView("registration");
		}
		return mv;
	}

	@RequestMapping(value = "loginProcess", method = RequestMethod.GET)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		System.err.println("loginProcess");

		User user = userDao.validateUser(login);
		HttpSession hs = request.getSession(false);
		hs.setAttribute("username", login.getUsername());
		hs.setAttribute("password", login.getPassword());
		// System.out.println(hs.getAttribute("username"));
		System.out.println(user);
		if (null != user) {
			mav = new ModelAndView("loggedin");
			mav.addObject("firstname", user.getName());
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}

		return mav;
	}

	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public ModelAndView signupProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("registration") User user) {
		ModelAndView mav = null;
		int submitted = 0;
		System.err.println("signupProcess...");
		boolean alreadyusername = userDao.getAlreadyUser(user.getUsername());
		HttpSession session = request.getSession(false);
		System.out.println(alreadyusername);
		if (alreadyusername == false) {
			submitted = userDao.save(user);
		} else {
			mav = new ModelAndView("registration");
			mav.addObject("message", "User Already Available");
			return mav;
		}

		if (1 == submitted) {
			mav = new ModelAndView("registered");
			mav.addObject("user", user);
		} else {
			mav = new ModelAndView("registration");
			mav.addObject("message", "User not registered");
		}

		return mav;

	}

	@RequestMapping("main")
	public ModelAndView main(HttpServletRequest req) throws ServletException, IOException {
		ModelAndView mv = null;
		HttpSession session = req.getSession(false);
		String username = (String) session.getAttribute("username");
		if (session.getAttribute("username") != null) {
			// List<User> user=userDao.getUserDetails(username);
			mv = new ModelAndView("checkdetails");
			User user = userDao.get(username);
			mv.addObject("user", user);
			System.out.println("after user");
			try {
				String courseid = user.getCourseid();
				List<Courses> purchasedCourse = userDao.getUserCoursedetails(courseid);
				mv.addObject("course", purchasedCourse);
				System.out.println(purchasedCourse);
			} catch (Exception e) {
				String courseid = user.getCourseid();
				List<Courses> purchasedCourse = new ArrayList<>();
				mv.addObject("course", purchasedCourse);
				System.out.println(purchasedCourse);

			}
		} else {
			mv = new ModelAndView("main");
		}
		return mv;

	}
}
