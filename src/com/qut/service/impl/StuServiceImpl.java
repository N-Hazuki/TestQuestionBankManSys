package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.StuMapper;
import com.qut.pojo.Student;
import com.qut.service.StuService;


@Service
@Transactional(rollbackFor=Exception.class)
public class StuServiceImpl implements StuService{

	@Autowired
	private StuMapper stuMapper;

	public Student login(Student stu) {
		return stuMapper.findStu(stu);
	}

	public int addStu(Student stu) {
		//添加学生信息
		return stuMapper.addStu(stu);
	}
	
	public int updStu(Student stu) {
		//
		return stuMapper.updStu(stu);
	}
	
	public Student findStuById(int stuId) {
		//
		return stuMapper.findStuById(stuId);
	}
	
	
	//学生结果集，待分页查询
	public List<Student> selectStu(){
		return stuMapper.selectStu();
	}

	public int delStuById(int stuId){
		return stuMapper.delStuById(stuId);
	}

}
