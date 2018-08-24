package com.qut.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Student;
import com.qut.service.StuService;

@Controller
public class StuController {

	@Autowired
	private StuService stuService;
	

	public ModelAndView login(Student stu){
		Student s = stuService.login(stu);
		ModelAndView view = new ModelAndView();
		if(s!=null){
			view.setViewName("Stu_main");
		}else{
			view.setViewName("Login");
		}
		return view;
	}
	
	@RequestMapping("/updStu")//修改
	public ModelAndView updStu(Student stu){
		int res = stuService.updStu(stu);
		ModelAndView view = new ModelAndView();
		if(res != 0){
			view.setViewName("success");
		}else{
			view.setViewName("error");
		}
		return view;
	}
	
	@RequestMapping("/addStu")     //添加
	public ModelAndView addStu(Student student){
		int res = stuService.addStu(student);
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
	
	@RequestMapping("/findStuById")     //添加
	public ModelAndView findStuById(int stuId,HttpServletRequest request){
		Student stu = stuService.findStuById(stuId);
		ModelAndView view = new ModelAndView();
		if(stu != null){
			//
			view.addObject("stu", stu);
			view.setViewName("Admin_UpdateInfoStu");
		}else{
			//
			view.setViewName("error");
		}
		return view;
	}
	
	@RequestMapping("/selectStu")    
	public ModelAndView selectStu(
			//HttpServletRequest request,
			//HttpServletResponse response,
			//Model model
			){
		ModelAndView view =new ModelAndView();
		List<Student> stuList = stuService.selectStu();
		view.addObject("stuList", stuList);
		view.setViewName("Admin_SearchStu");
		return view;
	}

	@RequestMapping("/delStuById")     //添加其他管理员信息
	public ModelAndView delStuById(int stuId){
		int res = stuService.delStuById(stuId);
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
