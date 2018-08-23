package com.qut.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qut.pojo.Problem;


@Repository
public interface ProblemMapper {

	public int addPro(Problem problem);

	public int delProById(int proId);

	public Problem findProById(int proId);

	public int updPro(Problem pro);
	//查询出所有习题
	public List<Problem> selectAllPro();
	//按条件查询
	public List<Problem> selectPro(Problem pro);
	//按试题数目查询
	public List<Problem> selectProByNum(int Num);

	//按条件查询的结果应当也分页
	
	
	
}
