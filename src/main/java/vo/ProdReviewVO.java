package vo;

public class ProdReviewVO {
	private int reViewID;
	private int idCord;
	private String nickName;
	private String idEmail;
	private String prodID;
	private String viewTitle;
	private String viewDate;
	private String viewContenxt;
	private String oneline;
	private int viewcnt;
	private int viewUpCnt;
	private String viewImg;
	private int viewStar;
	private int viewPoice;

	ProdReviewVO() {
		viewcnt = 0;
		viewUpCnt = 0;
		viewPoice = 0;
	}

	public int getReViewID() {
		return reViewID;
	}

	public void setReViewID(int reViewID) {
		this.reViewID = reViewID;
	}

	public int getIdCord() {
		return idCord;
	}

	public void setIdCord(int idCord) {
		this.idCord = idCord;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getIdEmail() {
		return idEmail;
	}

	public void setIdEmail(String idEmail) {
		this.idEmail = idEmail;
	}

	public String getProdID() {
		return prodID;
	}

	public void setProdID(String prodID) {
		this.prodID = prodID;
	}

	public String getViewTitle() {
		return viewTitle;
	}

	public void setViewTitle(String viewTitle) {
		this.viewTitle = viewTitle;
	}

	public String getViewDate() {
		return viewDate;
	}

	public void setViewDate(String viewDate) {
		this.viewDate = viewDate;
	}

	public String getViewContenxt() {
		return viewContenxt;
	}

	public void setViewContenxt(String viewContenxt) {
		this.viewContenxt = viewContenxt;
	}

	public String getOneline() {
		return oneline;
	}

	public void setOneline(String oneline) {
		this.oneline = oneline;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public int getViewUpCnt() {
		return viewUpCnt;
	}

	public void setViewUpCnt(int viewUpCnt) {
		this.viewUpCnt = viewUpCnt;
	}

	public String getViewImg() {
		return viewImg;
	}

	public void setViewImg(String viewImg) {
		this.viewImg = viewImg;
	}

	public int getViewStar() {
		return viewStar;
	}

	public void setViewStar(int viewStar) {
		this.viewStar = viewStar;
	}

	public int getViewPoice() {
		return viewPoice;
	}

	public void setViewPoice(int viewPoice) {
		this.viewPoice = viewPoice;
	}

	
}
