package com.kvvssut.jsf.bean;

import com.kvvssut.jsf.service.LoginService;

public class LoginBean {
	
	private Integer loginId;
	private String password;
	private String message;
	
	public Integer getLoginId() {
		return loginId;
	}
	
	public void setLoginId(Integer loginId) {
		this.loginId = loginId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public String authenticate(){
		System.out.println("1st");
		
		LoginService loginService = new LoginService();
		return loginService.authenticate(this);
	}
	
	@Override
	public String toString() {
		return "LoginBean [loginId=" + loginId + ", password=" + password
				+ ", message=" + message + "]";
	}

}
