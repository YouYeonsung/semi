package semi_withPet.member.model.vo;

import java.util.Date;

public class Member {

	private int memberNo;
	private String userId;
	private String userPwd;
	private String userName;
	private char grade;
	private String area1;
	private String area2;
	private String phone;
	private String email;
	private char haveDog;
	private char reservation;
	private int point;
	private Date enrollDate;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String userId, String userPwd, String userName, char grade, String area1, String area2,
			String phone, String email, char haveDog, char reservation, int point, Date enrollDate) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.grade = grade;
		this.area1 = area1;
		this.area2 = area2;
		this.phone = phone;
		this.email = email;
		this.haveDog = haveDog;
		this.reservation = reservation;
		this.point = point;
		this.enrollDate = enrollDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public char getGrade() {
		return grade;
	}

	public void setGrade(char grade) {
		this.grade = grade;
	}

	public String getArea1() {
		return area1;
	}

	public void setArea1(String area1) {
		this.area1 = area1;
	}

	public String getArea2() {
		return area2;
	}

	public void setArea2(String area2) {
		this.area2 = area2;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public char getHaveDog() {
		return haveDog;
	}

	public void setHaveDog(char haveDog) {
		this.haveDog = haveDog;
	}

	public char getReservation() {
		return reservation;
	}

	public void setReservation(char reservation) {
		this.reservation = reservation;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", grade=" + grade + ", area1=" + area1 + ", area2=" + area2 + ", phone=" + phone + ", email=" + email
				+ ", haveDog=" + haveDog + ", reservation=" + reservation + ", point=" + point + ", enrollDate="
				+ enrollDate + "]";
	}
}
