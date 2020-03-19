package vo;

public class FindReviewVO {
	
	private String prodID;
	public int viewstar;
	public int lineCnt; // 한 화면에 구성하는 글 개수
	public int pageCnt; // 한 화면의 페이지 개수
	public int postCnt; // 요구 사항을 만족하는 글의 전체 개수
	public int pgNum; // 현재 페이지 넘버
	
	public String getProdID() {
		return prodID;
	}
	public void setProdID(String prodID) {
		this.prodID = prodID;
	}
	public int getViewstar() {
		return viewstar;
	}
	public void setViewstar(int viewstar) {
		this.viewstar = viewstar;
	}
	public int getLineCnt() {
		return lineCnt;
	}
	public void setLineCnt(int lineCnt) {
		this.lineCnt = lineCnt;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getPostCnt() {
		return postCnt;
	}
	public void setPostCnt(int postCnt) {
		this.postCnt = postCnt;
	}
	public int getPgNum() {
		return pgNum;
	}
	public void setPgNum(int pgNum) {
		this.pgNum = pgNum;
	}
	
}
