package vo;

public class ReComment {
	private int reCommentID;
	private int reViewID;
	private int idCord;
	private String nickName;
	private int parentReCommentID;
	private int orderGroupNo;
	private int groupDepth;
	private String contents;
	private String released;
	
	public int getReCommentID() {
		return reCommentID;
	}
	public void setReCommentID(int reCommentID) {
		this.reCommentID = reCommentID;
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
	public int getParentReCommentID() {
		return parentReCommentID;
	}
	public void setParentReCommentID(int parentReCommentID) {
		this.parentReCommentID = parentReCommentID;
	}
	public int getOrderGroupNo() {
		return orderGroupNo;
	}
	public void setOrderGroupNo(int orderGroupNo) {
		this.orderGroupNo = orderGroupNo;
	}
	public int getGroupDepth() {
		return groupDepth;
	}
	public void setGroupDepth(int groupDepth) {
		this.groupDepth = groupDepth;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getReleased() {
		return released;
	}
	public void setReleased(String released) {
		this.released = released;
	}
	
	
}
