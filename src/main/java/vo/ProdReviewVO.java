package vo;

public class ProdReviewVO {
	private int reViewID;
	private int IDCord;
	private String NickName;
	private String IDEmail;
	private String prodID;
	private String viewTitle;
	private String ViewDate;
	private String ViewContenxt;
	private String oneline;
	private int Viewcnt;
	private int ViewUpCnt;
	private String ViewImg;
	private int ViewStar;
	private int ViewPoice;
	
	ProdReviewVO () {
		IDCord=1111;
		IDEmail="111";
		prodID="11111";
		NickName="11111";
		Viewcnt = 0;
		ViewUpCnt = 0;
		ViewPoice = 0;
	}
	
	public int getReViewID() {
		
		return reViewID;
	}
	public void setReViewID(int reViewID) {
		this.reViewID = reViewID;
	}
	public int getIDCord() {
		return IDCord;
	}
	public void setIDCord(int iDCord) {
		IDCord = iDCord;
	}
	public String getNickName() {
		return NickName;
	}
	public void setNickName(String nickName) {
		NickName = nickName;
	}
	public String getIDEmail() {
		return IDEmail;
	}
	public void setIDEmail(String iDEmail) {
		IDEmail = iDEmail;
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
		return ViewDate;
	}
	public void setViewDate(String viewDate) {
		ViewDate = viewDate;
	}
	public String getViewContenxt() {
		return ViewContenxt;
	}
	public void setViewContenxt(String viewContenxt) {
		ViewContenxt = viewContenxt;
	}
	public int getViewcnt() {
		return Viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		Viewcnt = viewcnt;
	}
	public int getViewUpCnt() {
		return ViewUpCnt;
	}
	public void setViewUpCnt(int viewUpCnt) {
		ViewUpCnt = viewUpCnt;
	}
	public String getViewImg() {
		return ViewImg;
	}
	public void setViewImg(String viewImg) {
		ViewImg = viewImg;
	}
	public int getViewStar() {
		return ViewStar;
	}
	public void setViewStar(int viewStar) {
		ViewStar = viewStar;
	}
	public int getViewPoice() {
		return ViewPoice;
	}
	public void setViewPoice(int viewPoice) {
		ViewPoice = viewPoice;
	}
}
