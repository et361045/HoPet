package controller.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;


import model.member.MemberBean;
import model.member.MemberService;

@ResponseBody
@Controller
public class SignonController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private ApplicationContext context;


	@RequestMapping(value = "checkemail", produces = { "application/text; charset=UTF-8" })
	public String method1(@RequestParam(name = "email", required = false) String email) {
		System.out.println("email=" +email);
		MemberBean bean = memberService.selectemail(email);
		System.out.println("bean =" + bean);
		if(bean==null) {
	    return "帳號可以使用";
		}
		return"帳號重複";
	}
	
	
	@RequestMapping(path= {"/index"})
	public String method2(MemberBean bean,Model model) {
	   System.out.println("enter method2");
	   System.out.println("enter MemberBean"+ bean);
	    
	     System.out.println(memberService.Signon(bean));
	   
         return "";
}
}

