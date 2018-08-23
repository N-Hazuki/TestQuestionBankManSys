package com.qut.pojo;

import java.util.ArrayList;
import java.util.List;

public class Test {

	private int testId;
	private String testName;
	private String testMajor;
	//试题难度为枚举类型：易中难
	private String testCoe;
	private int testNum;
	private int testScore;
	private String testDetail;
	//出卷教师编号
	private String testTeaid;
	private String testTime;
	private List<Problem> proList =new ArrayList<Problem>();
	//出卷老师姓名
	private String teaName;
	
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public String getTestMajor() {
		return testMajor;
	}
	public void setTestMajor(String testMajor) {
		this.testMajor = testMajor;
	}
	public String getTestCoe() {
		return testCoe;
	}
	public void setTestCoe(String testCoe) {
		this.testCoe = testCoe;
	}
	public int getTestNum() {
		return testNum;
	}
	public void setTestNum(int testNum) {
		this.testNum = testNum;
	}
	public int getTestScore() {
		return testScore;
	}
	public void setTestScore(int testScore) {
		this.testScore = testScore;
	}
	public String getTestDetail() {
		return testDetail;
	}
	public void setTestDetail(String testDetail) {
		this.testDetail = testDetail;
	}
	public String getTestTeaid() {
		return testTeaid;
	}
	public void setTestTeaid(String testTeaid) {
		this.testTeaid = testTeaid;
	}
	public String getTestTime() {
		return testTime;
	}
	public void setTestTime(String testTime) {
		this.testTime = testTime;
	}
	public String getTeaName() {
		return teaName;
	}
	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}
	public List<Problem> getProList() {
		return proList;
	}
	public void setProList(List<Problem> proList) {
		this.proList = proList;
	}

	
	
}
