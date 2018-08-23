package com.qut.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qut.pojo.Test;


@Repository
public interface TestMapper {

	public int addTest(Test test);

	public int delTestById(int testId);

	public List<Test> selectTestByTeaid(int teaId);
	
	public Test findTestById(int testId);

	public Test findLastTest();

	public List<Test> findTestByCond(Test test);

}
