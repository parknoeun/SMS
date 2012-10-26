package kr.go.police.account;

/**
 *	유저 정보 bean
 */
public class UserBean {
	private int index;	// 유저 인덱스
	private String id; // 아이디
	private String pwd; // 비밀번호
	private String psName; // 경찰서명
	private String grade; // 계급
	private String name; // 이름
	private String phone1; // 휴대폰 번호
	private String phone2;
	private String deptName; // 부서명
	private int deptCode; // 부서코드
	private String tel; // 전화번호
	private String email; // 이메일
	private boolean approve; // 승인여부
	private String regDate; // 등록날짜
	private int totalSendCount; // 발송 횟수
	private int monthSendLimit; // 월 발송 제한 수
	private int monthSend; // 월 발송 횟수
	private int userClass;	// 사용자 등급

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPsName() {
		return psName;
	}

	public void setPsName(String psName) {
		this.psName = psName;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public int getDeptCode() {
		return deptCode;
	}

	public void setDeptCode(int deptCode) {
		this.deptCode = deptCode;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isApprove() {
		return approve;
	}

	public void setApprove(boolean approve) {
		this.approve = approve;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getTotalSendCount() {
		return totalSendCount;
	}

	public void setTotalSendCount(int totalSendCount) {
		this.totalSendCount = totalSendCount;
	}

	public int getMonthSendLimit() {
		return monthSendLimit;
	}

	public void setMonthSendLimit(int monthSendLimit) {
		this.monthSendLimit = monthSendLimit;
	}

	public int getMonthSend() {
		return monthSend;
	}

	public void setMonthSend(int monthSend) {
		this.monthSend = monthSend;
	}

	public int getUserClass() {
		return userClass;
	}

	public void setUserClass(int userClass) {
		this.userClass = userClass;
	}

}
