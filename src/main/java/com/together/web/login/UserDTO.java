// 회원 정보

package com.together.web.login;

/**
 * @author gram
 *
 */
public class UserDTO {
	// 주요 속성 구성
	int userCode, genderCode;	
	String userId, userPw, name, nickName, email, intro, birth, registDate, shingoCkDate;
	int[] themaCode;
	
	// getter / setter
	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	public int getGenderCode() {
		return genderCode;
	}
	public void setGenderCode(int genderCode) {
		this.genderCode = genderCode;
	}
	public int[] getThemaCode() {
		return themaCode;
	}
	public void setThemaCode(int[] themaCode) {
		this.themaCode = themaCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
	public String getShingoCkDate() {
		return shingoCkDate;
	}
	public void setShingoCkDate(String shingoCkDate) {
		this.shingoCkDate = shingoCkDate;
	}

}