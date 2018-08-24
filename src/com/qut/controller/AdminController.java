package com.qut.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Admin;
import com.qut.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	
	public ModelAndView login(Admin admin){
		Admin a = adminService.login(admin);
		ModelAndView view = new ModelAndView();
		if(a!=null){
			//验证成功，跳转Admin_main.jsp页面
			view.setViewName("Admin_main");
		}else{
			//验证失败，跳转到Login.jsp页面
			view.setViewName("Login");
		}
		return view;
	}
	
//	@RequestMapping("/delAdmin")     //删除其他管理员信息
//	public ModelAndView delAdmin(Admin admin){
//		int res = adminService.delAdmin(admin);
//		ModelAndView view = new ModelAndView();
//		if(res != 0){
//			//删除成功
//			view.setViewName("");
//		}else{
//			//删除失败
//			view.setViewName("admin_main");
//		}
//		return view;
//	}
	
//	@RequestMapping("/addAdmin")     //添加其他管理员信息
//	public ModelAndView addAdmin(Admin admin){
//		int res = adminService.addAdmin(admin);
//		ModelAndView view = new ModelAndView();
//		if(res != 0){
//			//添加成功
//			view.setViewName("");
//		}else{
//			//添加失败
//			view.setViewName("admin_main");
//		}
//		return view;
//	}
	
	@RequestMapping("/updAdm")     //添加其他管理员信息
	public ModelAndView updAdm(Admin admin){
		int res = adminService.updAdm(admin);
		ModelAndView view = new ModelAndView();
		if(res != 0){
			//添加成功
			view.setViewName("");
		}else{
			//添加失败
			view.setViewName("admin_main");
		}
		return view;
	}
	

	
	
}