package com.login.loginservice.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.login.loginservice.domain.LoginVO;
import com.login.loginservice.mapper.loginmapper;

@Service("com.login.loginservice.service.Loginservice")
public class Loginservice {

	
	@Resource(name="com.login.loginservice.mapper.loginmapper")
	loginmapper mloginmapper;
	
	
	public LoginVO loginUSERservice(LoginVO vo) throws Exception{
		return mloginmapper.loginUSER(vo);
		
	}
	
	public int loginCKservice(LoginVO vo) throws Exception{
		return mloginmapper.loginCK(vo);
	}
}
