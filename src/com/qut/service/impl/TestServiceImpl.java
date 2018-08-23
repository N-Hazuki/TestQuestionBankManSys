package com.qut.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;





import com.qut.mapper.ProblemMapper;
import com.qut.mapper.TestMapper;
import com.qut.mapper.TestProMapper;
import com.qut.pojo.Problem;
import com.qut.pojo.Test;
import com.qut.pojo.TestPro;
import com.qut.service.TestService;


@Service
@Transactional(rollbackFor=Exception.class)
public class TestServiceImpl implements TestService{

	@Autowired
	private TestMapper testMapper;
	@Autowired
	private ProblemMapper problemMapper;
	@Autowired
	private TestProMapper testProMapper;
	
	public int addTest(Test test){             //test中有难度testCoe、数量testNum
		int res = testMapper.addTest(test);
		Test t = testMapper.findLastTest();
		if(res == 0) return res;
		else{
			List<Problem> proList = problemMapper.selectProByNum(test.getTestNum());
			TestPro tp = new TestPro();
			for(int i=0;i<proList.size();i++){
				tp.setTpProid(proList.get(i).getProId());
				tp.setTpTestid(t.getTestId());
				testProMapper.addTp(tp);
			}
			return res;
		}
			
	}
	
	public int delTestById(int testId){
		return testMapper.delTestById(testId);
	}
	public List<Test> selectTestByTeaid(int teaId){
		return testMapper.selectTestByTeaid(teaId);
	}
	public Test findTestById(int testId){
		int[] proId = testProMapper.findProByTestid(testId);
		Test t = testMapper.findTestById(testId);
		List<Problem> proList = new ArrayList<Problem>();
		for(int i=0;i<proId.length;i++){
		proList.add(problemMapper.findProById(proId[i]));
		}
		t.setProList(proList);
		return t;
	}
	public Test findLastTest(){
		return testMapper.findLastTest();
	}
	
	public List<Test> findTestByCond(Test test){
		return testMapper.findTestByCond(test);
	}
	
	public Test selTestById(int testId){
		int[] proId = testProMapper.findProByTestid(testId);
		Test t = testMapper.findTestById(testId);
		List<Problem> proList = new ArrayList<Problem>();
		for(int i=0;i<proId.length;i++){
		proList.add(problemMapper.findProById(proId[i]));
		}
		t.setProList(proList);
		return t;
	}
	
}
