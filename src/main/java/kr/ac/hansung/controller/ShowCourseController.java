package kr.ac.hansung.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.service.CourseService;

@Controller
public class ShowCourseController {
	@Autowired
	private CourseService courseService;
	private static final Logger logger = LoggerFactory.getLogger(ShowCourseController.class);
	
	@RequestMapping("/semester")
	public String showSemester(Model model) {
		
		List<Course> semesterList = courseService.getSemesterList();
		model.addAttribute("semesterList", semesterList); 
		
		return "semester";
	}
	
	@RequestMapping("/division")
	public String showDivision(Model model) {
		List<Course> sumDivision = courseService.getDivisionSum();
		model.addAttribute("sumDivision",sumDivision);
		
		int total = courseService.getSumCredit();
		model.addAttribute("total",total);
		
		return "division";
	}
	
}
