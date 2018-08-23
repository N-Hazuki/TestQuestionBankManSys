package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.TeacherMapper;
import com.qut.pojo.Teacher;
import com.qut.service.TeacherService;


@Service
@Transactional(rollbackFor=Exception.class)
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	private TeacherMapper teacherMapper;
	

	public Teacher login(Teacher teacher) {
		return teacherMapper.findTea(teacher);
	}
	
	public int addTea(Teacher teacher){
		return teacherMapper.addTea(teacher);
	}

	public int updTea(Teacher teacher){
		return teacherMapper.updTea(teacher);
	}

	public List<Teacher> selectTea(){
		return teacherMapper.selectTea();
	}
	
	public Teacher findTeaById(int teaId){
		return teacherMapper.findTeaById(teaId);
	}
	
	public int delTeaById(int teaId){
		return teacherMapper.delTeaById(teaId);
	}
}

