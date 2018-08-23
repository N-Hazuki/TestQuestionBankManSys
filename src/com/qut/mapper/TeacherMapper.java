package com.qut.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qut.pojo.Teacher;


@Repository
public interface TeacherMapper {

	
	public Teacher findTea(Teacher teacher);
	
	public int addTea(Teacher teacher);
	
	public int updTea(Teacher teacher);

	public List<Teacher> selectTea();

	public Teacher findTeaById(int teaId);

	public int delTeaById(int teaId);
}
