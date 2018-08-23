package com.qut.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qut.pojo.Student;


@Repository
public interface StuMapper {

	
	public Student findStu(Student stu);

	public int addStu(Student stu);
	
	public int updStu(Student stu);

	public Student findStuById(int stuId);
	//学生结果集，待分页查询
	public List<Student> selectStu();

	public int delStuById(int stuId);
}
