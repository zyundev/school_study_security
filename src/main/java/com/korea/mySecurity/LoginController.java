package com.korea.mySecurity;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	private  static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/login/loginForm.do", method = RequestMethod.GET)
	public String loginFor(Locale locale, Model model) {
		logger.info("welcome Login Form 오늘은 타자치는 금요일");
		
		return "login/loginForm";
	}
	
	@RequestMapping(value = "/login/accessDenied.do", method = RequestMethod.GET)
	public String accessDenied(Locale locale, Model model) {
		logger.info("welcome Access Denied 들어오는거 아냐");
		
		return "login/accessDenied";
	}
	
	
	
}
