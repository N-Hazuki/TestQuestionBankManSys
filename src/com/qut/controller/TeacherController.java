package com.qut.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Teacher;
import com.qut.service.TeacherService;



@Controller
public class TeacherController {

	@Autowired
	private TeacherService teacherService;
	
	
	public ModelAndView login(Teacher teacher){
		Teacher t = teacherService.login(teacher);
		ModelAndView view = new ModelAndView();
		if(t != null){
			
			view.setViewName("Tea_main");
		}else{
			//
			view.setViewName("Login");
		}
		return view;
	}
	
	
	@RequestMapping("/addTea")                //添加教师信息
	public ModelAndView addTea(Teacher teacher){
		int res = teacherService.addTea(teacher);
		ModelAndView view = new ModelAndView();
		if(res != 0){
			//添加成功
			view.setViewName("success");
		}else{
			//添加失败
			view.setViewName("error");
		}
		return view;
	}
	
	@RequestMapping("/updTea")     //添加其他管理员信息
	public ModelAndView updTea(Teacher teacher){
		int res = teacherService.updTea(teacher);
		ModelAndView view = new ModelAndView();
		if(res != 0){
			//添加成功
			view.setViewName("success");
		}else{
			//添加失败
			view.setViewName("error");
		}
		return view;
	}
	
	@RequestMapping("/selectTea")             //查询所有老师
	public ModelAndView selectTea(                  
			//HttpServletRequest request,
			//HttpServletResponse response,
			//Model model
			){
		ModelAndView view =new ModelAndView();
		List<Teacher> teaList = teacherService.selectTea();
		view.addObject("teaList", teaList);
		view.setViewName("Admin_SearchTea");
		return view;
//		try {
//			response.sendRedirect("Admin_SearchTea.jsp");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
	
	@RequestMapping("/findTeaById")     //某一个老师的信息
	public ModelAndView findTeaById(int teaId,HttpServletRequest request){
		Teacher tea = teacherService.findTeaById(teaId);
		ModelAndView view = new ModelAndView();
		if(tea != null){
			//
			view.addObject("tea", tea);
			view.setViewName("Admin_UpdateInfoTeach");
		}else{
			//
			view.setViewName("error");
		}
		return view;
	}
	
	@RequestMapping("/delTeaById")     //删除某一个老师
	public ModelAndView delTeaById(int teaId){
		int res = teacherService.delTeaById(teaId);
		ModelAndView view = new ModelAndView();
		if(res != 0){
			//删除成功
			view.setViewName("success");
		}else{
			//删除失败
			view.setViewName("error");
		}
		return view;
	}
	
}
