package com.kvvssut.jsf.service;

import com.kvvssut.jsf.bean.LoginBean;

public class LoginService {

	public String authenticate(LoginBean loginBean) {
		if(loginBean.getLoginId() == 5555 && loginBean.getPassword().equals("kv")){
			loginBean.setMessage("successful");
			return "success";
		}
		loginBean.setMessage("failed");
		return "failure";
	}

}
