package com.qut.mapper;

import org.springframework.stereotype.Repository;

import com.qut.pojo.TestPro;


@Repository
public interface TestProMapper {

	public void addTp(TestPro tp);

	public int[] findProByTestid(int testId);
	
	
	
}
