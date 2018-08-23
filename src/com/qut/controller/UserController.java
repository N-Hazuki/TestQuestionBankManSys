package com.qut.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Admin;
import com.qut.pojo.Student;
import com.qut.pojo.Teacher;
import com.qut.pojo.User;
import com.qut.service.AdminService;
import com.qut.service.StuService;
import com.qut.service.TeacherService;

@Controller
public class UserController {

	@Autowired
	private StuService stuService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/User.action")
	public ModelAndView login(User u,String identity,HttpSession session){
		ModelAndView view = new ModelAndView();
		switch (identity){
				case "stu":{
					Student stu=new Student();
					stu.setStuNo(u.getUser());
					stu.setStuPwd(u.getPwd());
					Student s = stuService.login(stu);
					if(s != null){
						session.setAttribute("type", "stu");
						session.setAttribute("userId", s.getStuId());
						view.addObject("user", u);
						view.setViewName("Stu_main");
					}else{
						view.setViewName("Login");
					}
					break;
				}
		
				case "tea":{
					Teacher tea=new Teacher();
					tea.setTeaNo(u.getUser());
					tea.setTeaPwd(u.getPwd());
					Teacher t = teacherService.login(tea);
					if(t!=null){
						session.setAttribute("type", "tea");
						session.setAttribute("userId", t.getTeaId());
						view.addObject("user", u);
						view.setViewName("Tea_main");
					}else{
						view.setViewName("Login");
					}
					break;
				}
				case "adm":{
					Admin adm=new Admin();
					adm.setAdminNo(u.getUser());
					adm.setAdminPwd(u.getPwd());
					Admin a = adminService.login(adm);
					if(a!=null){
						session.setAttribute("type", "adm");
						session.setAttribute("userId", a.getAdminId());
						view.addObject("user", u);
						view.setViewName("Admin_main");
					}else{
						view.setViewName("Login");
					}
					break;
				}
		}
		return view;
	}
	
	//注销不起作用，session会话没正常结束？
	@RequestMapping("/Logout.action")
	public String logout(HttpSession session){
		session.invalidate();
		return "Login";
	}
	
	@RequestMapping("/updUser.action")
	public ModelAndView updUser(User u,String pwdNew,String type,int userId,HttpServletResponse response){
		ModelAndView view = new ModelAndView();
			switch (type){
					case "stu":{
						Student stu=stuService.findStuById(userId);
						u.setPwd(pwdNew);
						stu.setStuId(userId);
						String stuNo=u.getUser();
						stu.setStuNo(stuNo);
						stu.setStuPwd(u.getPwd());
						int res = stuService.updStu(stu);
						if(res != 0){
							view.setViewName("success");
						}else{
							view.setViewName("error");
						}
						break;
					}
			
					case "tea":{
						Teacher tea=teacherService.findTeaById(userId);
						u.setPwd(pwdNew);
						tea.setTeaId(userId);
						String teaNo=u.getUser();
						tea.setTeaNo(teaNo);
						tea.setTeaPwd(u.getPwd());
						System.out.println(tea.getTeaNo());
						int res = teacherService.updTea(tea);
						if(res!=0){
							view.setViewName("success");
						}else{
							view.setViewName("error");
						}
						break;
					}
					case "adm":{
						Admin adm = adminService.findAdminById(userId);
						u.setPwd(pwdNew);
						adm.setAdminId(userId);
						String adminNo=u.getUser();
						adm.setAdminNo(adminNo);
						adm.setAdminPwd(u.getPwd());
						int res = adminService.updAdm(adm);
						if(res!=0){
							view.setViewName("success");
						}
						else{
							view.setViewName("error");
						}
						break;
					}
			}
			return view;
		
	}
}
