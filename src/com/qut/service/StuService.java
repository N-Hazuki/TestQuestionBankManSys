package com.qut.service;

import java.util.List;

import com.qut.pojo.Student;

public interface StuService {

	public Student login(Student stu);
	
	public int addStu(Student stu);
	
	public int updStu(Student stu);

	public Student findStuById(int teaId);

	public List<Student> selectStu();

	public int delStuById(int stuId);
}
