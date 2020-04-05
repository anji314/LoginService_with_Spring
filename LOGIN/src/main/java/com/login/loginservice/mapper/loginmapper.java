package com.login.loginservice.mapper;

import org.springframework.stereotype.Repository;

import com.login.loginservice.domain.LoginVO;

@Repository("com.login.loginservice.mapper.loginmapper")
public interface loginmapper {


	public int count()throws Exception;
	
	public int loginCK(LoginVO vo) throws Exception;
	
	public LoginVO loginUSER(LoginVO vo)throws Exception;
}
