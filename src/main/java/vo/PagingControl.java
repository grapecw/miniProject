package vo;

public class PagingControl {
	
	public int lineCnt=10; // 한 화면에 구성하는 글 개수
	public int pageCnt=5; // 한 화면의 페이지 개수
	public int postCnt; // 요구 사항을 만족하는 글의 전체 개수
	public int pgNum; // 현재 페이지 넘버

	public int getPgNum() {
		return pgNum;
	}

	public void setPgNum(int pgNum) {
		this.pgNum = pgNum;
	}

	public PagingControl(int pgnum) {
		pgNum = pgnum; // 현재 페이지 넘버
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
		if (getPageEnd() < getPageCount())
			if (postCnt / lineCnt != getPageEnd())
				return true;
		return false;
	}

	public int getWritingStart() {
		return getWritingEnd() - lineCnt + 1;
	}

	public int getWritingEnd() {
		return pgNum * lineCnt;
	}
}
