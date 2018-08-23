package com.qut.service;

import java.util.List;

import com.qut.pojo.Test;

public interface TestService {

	public int addTest(Test test);

	public int delTestById(int testId);
	//查询某一个老师的所有试卷
	public List<Test> selectTestByTeaid(int teaId);
	//查出某个试题
	public Test findTestById(int testId);
	
	public Test findLastTest();

	public List<Test> findTestByCond(Test test);

	public Test selTestById(int testId);
	
}
