package com.qut.service;

import java.util.List;

import com.qut.pojo.Problem;

public interface ProblemService {

	public int addPro(Problem pro);

	public int delProById(int proId);

	public Problem findProById(int proId);

	public int updPro(Problem problem);
	
	public List<Problem> selectAllPro();
	//按条件查询出试题
	public List<Problem> selectPro(Problem pro);


	
}
