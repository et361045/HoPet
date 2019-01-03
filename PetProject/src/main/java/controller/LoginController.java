package controller;


import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSourceResolvable;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;

import model.member.MemberBean;
import model.member.MemberService;

@Controller
@SessionAttributes("user")

public class LoginController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(path= {"/login.controller"})
	public String method(String email,String password,Model model)
	{
		System.out.println("hahahaaha");
		System.out.println("username:"+email+" password:"+password);
		
		
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		if (email == null || email.length() == 0) {
			errors.put("usernamrError", "請輸入帳號");
		}
		if (password == null || password.length() == 0) {
			errors.put("passwordError", "請輸入密碼");
		}
		
		if (errors != null && !errors.isEmpty()) {
			return "login";
		}
		
		MemberBean bean= memberService.login(email, password);	
		
		
		if (bean == null) {
			errors.put("passwordError", "passwordError");
			return "login";
		} else {
			model.addAttribute("user",bean);
		}
		return "index";
	}
	
}
