package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.ProblemMapper;
import com.qut.pojo.Problem;
import com.qut.service.ProblemService;


@Service
@Transactional(rollbackFor=Exception.class)
public class ProblemServiceImpl implements ProblemService{

	@Autowired
	private ProblemMapper problemMapper;
	
	public int addPro(Problem problem){
		return problemMapper.addPro(problem);
	}
	public int delProById(int proId){
		return problemMapper.delProById(proId);
	}

	public Problem findProById(int proId){
		return problemMapper.findProById(proId);
	}
	
	public int updPro(Problem pro){
		return problemMapper.updPro(pro);
	}

	public List<Problem> selectAllPro(){
		return problemMapper.selectAllPro();
	}
	
	public List<Problem> selectPro(Problem pro){
		return problemMapper.selectPro(pro);
	}

}
