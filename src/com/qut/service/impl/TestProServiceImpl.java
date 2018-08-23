package com.qut.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.TestProMapper;


@Service
@Transactional(rollbackFor=Exception.class)
public class TestProServiceImpl {

	@Autowired
	private TestProMapper testProMapper;
	
	public int[] findProByTestid(int testId){
		return testProMapper.findProByTestid(testId);
	}



}
