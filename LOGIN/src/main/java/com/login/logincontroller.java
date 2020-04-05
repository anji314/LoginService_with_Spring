package com.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.login.loginservice.domain.LoginVO;
import com.login.loginservice.mapper.loginmapper;
import com.login.loginservice.service.Loginservice;

@Controller
public class logincontroller {
	
	@RequestMapping("/main")
	private String Main() {
		return "/main";
	}
	@RequestMapping(value="/loginservice/loginform")
	private String loginform() {
		return "/loginservice/loginform";
	}
	
	
	@Resource(name="com.login.loginservice.mapper.loginmapper")
	loginmapper mloginmapper;
	@RequestMapping("/test")
	private String jspTest() {
		try {
			System.out.println(mloginmapper.count());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/test";
	}
	
	@Resource(name="com.login.loginservice.service.Loginservice")
	Loginservice service;
	
	@RequestMapping("loginservice/loginck")
	private String loginCK(HttpServletRequest request,HttpSession session) throws Exception{
		//LoginVO vo=(LoginVO)request.getParameterMap();
		LoginVO vo=new LoginVO();
		vo.setUserID(request.getParameter("userID"));
		vo.setUserPWD(request.getParameter("userPWD"));
		//System.out.println(vo.getUserID());
		//System.out.println(vo.getUserPWD());
		
		if(service.loginCKservice(vo)==1) {
			LoginVO member = service.loginUSERservice(vo);
			session.setAttribute("sessionID",member.getUserID());
			session.setAttribute("sessionNAME", member.getUserNAME());
		
			return "redirect:/main";
		}else return "redirect:/loginservice/loginform?ck=-1";

	}
	@RequestMapping("loginservice/logout")
	private String logOut(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:/main";
	}
	
	@RequestMapping(value="loginservice/getinfo",method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody String getinfo(HttpSession session) throws Exception{
		if(session.getAttribute("sessionID")==null) {
			return null;
		}
		else return (String)session.getAttribute("sessionID");
	}


	
}





