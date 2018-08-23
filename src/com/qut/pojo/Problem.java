package com.qut.pojo;

public class Problem {

	private int proId;
	private String proTitle;
	private String proKey;
	//习题类型为：1选择题、2判断题
	private int proType;
	//习题难度为：1、2、3、4、5
	private String proCoe;
	//所属章节编号
	private String chaNo;
	//所属章节题目
	private String chaTitle;
	//所属章节要点
	private String chaMpoint;
	//习题内容
	private String proConta="";
	private String proContb="";
	private String proContc="";
	private String proContd="";
	//习题答案
	private int proAns;
	//出题教师编号
	private int proTeaid;
	
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProTitle() {
		return proTitle;
	}
	public void setProTitle(String proTitle) {
		this.proTitle = proTitle;
	}
	public String getProKey() {
		return proKey;
	}
	public void setProKey(String proKey) {
		this.proKey = proKey;
	}
	public int getProType() {
		return proType;
	}
	public void setProType(int proType) {
		this.proType = proType;
	}
	public String getProCoe() {
		return proCoe;
	}
	public void setProCoe(String proCoe) {
		this.proCoe = proCoe;
	}
	public String getChaNo() {
		return chaNo;
	}
	public void setChaNo(String chaNo) {
		this.chaNo = chaNo;
	}
	public String getChaTitle() {
		return chaTitle;
	}
	public void setChaTitle(String chaTitle) {
		this.chaTitle = chaTitle;
	}
	public String getChaMpoint() {
		return chaMpoint;
	}
	public void setChaMpoint(String chaMpoint) {
		this.chaMpoint = chaMpoint;
	}
	public String getProConta() {
		return proConta;
	}
	public void setProConta(String proConta) {
		this.proConta = proConta;
	}
	public String getProContb() {
		return proContb;
	}
	public void setProContb(String proContb) {
		this.proContb = proContb;
	}
	public String getProContc() {
		return proContc;
	}
	public void setProContc(String proContc) {
		this.proContc = proContc;
	}
	public String getProContd() {
		return proContd;
	}
	public void setProContd(String proContd) {
		this.proContd = proContd;
	}
	public int getProAns() {
		return proAns;
	}
	public void setProAns(int proAns) {
		this.proAns = proAns;
	}
	public int getProTeaid() {
		return proTeaid;
	}
	public void setProTeaid(int proTeaid) {
		this.proTeaid = proTeaid;
	}

	
	
	
}
