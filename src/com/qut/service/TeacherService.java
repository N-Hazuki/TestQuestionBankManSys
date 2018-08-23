package com.qut.service;

import java.util.List;

import com.qut.pojo.Teacher;

public interface TeacherService {
	//登录验证
	public Teacher login(Teacher teacher);
	
	public int addTea(Teacher teacher);
	
	public int updTea(Teacher teacher);
	//查找老师信息，返回结果集
	public List<Teacher> selectTea();
	//查找单个教师，修改信息
	public Teacher findTeaById(int teaId);
	//查找老师信息，删除信息
	public int delTeaById(int teaId);
	
	
}
