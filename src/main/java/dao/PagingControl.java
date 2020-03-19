package dao;

public class PagingControl {
	
	public int lineCnt; 	// 한 화면에 구성하는 글 개수
	public int pageCnt;  	// 한 화면의 페이지 개수
	public int postCnt; 	// 요구 사항을 만족하는 글의 전체 개수
	public int pgNum; 	    // 현재 페이지 넘버
	
	public int getPgNum() {
		return pgNum;
	}

	public void setPgNum(int pgNum) {
		this.pgNum = pgNum;
	}

	public PagingControl(int total) {
		lineCnt = 10; 		// 한 화면에 구성하는 글 개수
		pageCnt = 5;  		// 한 화면의 페이지 개수
		postCnt = total; 	// 요구 사항을 만족하는 글의 전체 개수
		pgNum = 0; 	    	// 현재 페이지 넘버
	}
	
	public int getPageCount() {
		return ((postCnt - 1) / lineCnt) + 1;
	}
	public int getPageStart() {
		return ((pgNum - 1) / pageCnt) * pageCnt + 1;
	}
	public int getPageEnd() {
		return Math.min(getPageStart() + pageCnt - 1, getPageCount());
	}
	public boolean isPreData() {
		return getPageStart() != 1;
	}
	public boolean isNextData() {
		if(getPageEnd() < getPageCount()) 
			if(postCnt/lineCnt!= getPageEnd( )) 
				return true;
		return false;
	}
	public int getWritingStart() {
		return getWritingEnd() - lineCnt + 1;
	}
	public int getWritingEnd() {
		return pgNum * lineCnt;
	}
	
	
//	public int getPageCount( ) {
//		return ((postCnt-1)/lineCnt)+1;
//	}
//	
//	public int getPageStart( ) {
////		((현재 페이지넘버-1)/ 한 화면의 페이지 개수)*한 화면의 페이지 개수+1
//		return ((pgNum-1)/pageCnt)*pageCnt+1;
//	}
//	
//	public int getPageEnd( ) {
//		//각 화면 별 시작 페이지 번호 + 한 화면의 페이지 개수 - 1 과 전체 페이지 개수 중에서 작은 값
//		int start = getPageStart();
//		return (start + pageCnt-1)<postCnt/lineCnt ? (start + pageCnt-1) : postCnt/lineCnt;
//	}
//	
//	public boolean isPreData( ) {
//		boolean result = false;
//		if(pgNum-5>0)
//			result = true;
//		return result;
//		
//	}
//	
//	public boolean isNextData( ) {
//		boolean result = false;
//		if(pgNum+pageCnt<postCnt)
//			result = true;
//		return result;
//		
//	}
//	
//	public int getWritingStart( ) {
//		return getWritingEnd()-lineCnt+1;
//		
//	}
//	
//	public int getWritingEnd() {
//		return pgNum*lineCnt;
//	}
//	
//	public String returnAll() {
//		return ""+getPageCount() + "\n" + getPageStart()+ "\n" +getPageEnd( )+ "\n" +isPreData( )+ "\n" +isNextData( )+ "\n" +getWritingStart( )+ "\n" +getWritingEnd();
//	}

}
