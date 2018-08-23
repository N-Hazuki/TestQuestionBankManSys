package com.qut.pojo;

public class Page {
	
	private int curPage;//当前页
	private int pageSize;//每页条数
	private int totalPage;//总页数
	private int totalRows;//总记录数
	private int startIndex;//检索起始位置
	//private int endIndex;//检索结束位置
	
	public Page(int curPage,int totalRows,int pageSize) {
		this.curPage=curPage;
		this.totalRows=totalRows;
		this.pageSize=pageSize;
		
		this.totalPage=totalRows/pageSize;
		if(totalRows%pageSize!=0){
			this.totalPage++;
		}
		
		if(curPage<1){
			curPage=1;
		}
		
		if(curPage>totalPage){
			curPage=totalPage;
		}
		
		this.startIndex=(curPage-1)*pageSize;
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	@Override
	public String toString() {
		return "Page [curPage=" + curPage + ", pageSize=" + pageSize
				+ ", totalPage=" + totalPage + ", totalRows=" + totalRows
				+ ", startIndex=" + startIndex + "]";
	}
	
	
}