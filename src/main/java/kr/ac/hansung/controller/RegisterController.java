package kr.ac.hansung.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.service.CourseService;

@Controller
public class RegisterController {
	private CourseService courseService;
	
	@Autowired
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String sugangCourse(Model model, Course course) {
		
		List<Course> getDivisionSum = courseService.getDivisionSum();
		model.addAttribute("getDivisionSum", getDivisionSum);
	
		return "register";
	}
	
	
	@RequestMapping(value="/register_course", method=RequestMethod.GET)
	public String showRegisterCourse(Model model, Course course) {
		
		System.out.println(course);
		courseService.insert(course);
		
		return "register_course";
	}
	
	@RequestMapping("/view_registered")
	public String showCourse(Model model, @RequestParam int year, @RequestParam int semester) {
		List<Course> getCourseByYearSemester = courseService.getCourseByYearSemester(year, semester);
		
		model.addAttribute("getCourseByYearSemester", getCourseByYearSemester);
		return "view_registered";
	}
}
