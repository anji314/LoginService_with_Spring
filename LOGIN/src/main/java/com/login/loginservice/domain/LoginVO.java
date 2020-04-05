package com.login.loginservice.domain;

public class LoginVO {
	private String userID;
	private String userPWD;
	private String userNAME;
	
	
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPWD() {
		return userPWD;
	}
	public void setUserPWD(String userPWD) {
		this.userPWD = userPWD;
	}
	public String getUserNAME() {
		return userNAME;
	}
	public void setUserNAME(String userNAME) {
		this.userNAME = userNAME;
	}
	
}
