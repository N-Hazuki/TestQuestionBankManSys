package com.qut.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Problem;
import com.qut.pojo.Test;
import com.qut.service.ProblemService;
import com.qut.service.TestService;

@Controller
public class TestController {

	@Autowired
	private TestService testService;
	@Autowired
	private ProblemService problemService;
	
	@RequestMapping("/addTest")                //添加教师信息
	public ModelAndView addTest(Test test){
		ModelAndView view = new ModelAndView();
		int res = testService.addTest(test);
		if(res != 0){
			//添加成功
			view.setViewName("success");
		}else{
			//添加失败
			view.setViewName("error");
		}
		return view;
	}
	
	@RequestMapping("/delTestById")     //删除某一个
	public ModelAndView delTestById(int testId){
		int res = testService.delTestById(testId);
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

	@RequestMapping("/selectTestByTeaid")             //查询登录老师，创建的所有试卷
	public ModelAndView selectTestByTeaid(int userId              
			//HttpServletRequest request,
			//HttpServletResponse response,
			//Model model
			){
		ModelAndView view =new ModelAndView();
		List<Test> testList = testService.selectTestByTeaid(userId);
		if(testList != null){
		view.addObject("testList", testList);
		view.setViewName("Tea_SearchTest");
		}else
			view.setViewName("Tea_SearchTest");
		return view;

	}

	@RequestMapping("/findTestById")     //查出待修改的试题
	public ModelAndView findTestById(int testId,HttpServletRequest request){
//		System.out.println(testId);
		Test t = testService.findTestById(testId);
		ModelAndView view = new ModelAndView();
		if(t != null){
			List<Problem> proList = t.getProList();
			view.addObject("proList", proList);
			view.setViewName("Tea_DetailText");      //待添加页面
			
		}else{
			
			view.setViewName("Tea_DetailText");
		}
		return view;
	}

	@RequestMapping("/findTestByCond")     //查出待查看的试题
	public ModelAndView findTestByCond(Test test,HttpServletRequest request){
		
		List<Test> testList = testService.findTestByCond(test);
		ModelAndView view = new ModelAndView();
		if(testList != null){
	
			view.addObject("testList", testList);
			view.setViewName("Stu_SearchTest");      //待添加页面
			
		}else{
			
			view.setViewName("Stu_SearchTest");
		}
		return view;
	}
	
	
	@RequestMapping("/selTestById")     //查出待修改的试题
	public ModelAndView selTestById(int testId,HttpServletRequest request){
		
		Test t = testService.selTestById(testId);
		ModelAndView view = new ModelAndView();
		if(t != null){
			List<Problem> proList = t.getProList();
			view.addObject("proList", proList);
			view.setViewName("Stu_SearchProByTest");      //待添加页面
			
		}else{
			
			view.setViewName("Stu_SearchProByTest");
		}
		return view;
	}

}
