package vo;

public class LoginVO {
	private int IDCord;
	private String NickName;
	private String IDEmail;
	private String sex;
	private String Birth;
	
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirth() {
		return Birth;
	}
	public void setBirth(String birth) {
		Birth = birth;
	}
}
