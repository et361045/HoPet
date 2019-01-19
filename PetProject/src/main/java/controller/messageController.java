package controller;



import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import model.member.MemberBean;
import model.member.MemberService;
import model.messageboard.MessageboardBean;
import model.messageboard.messageboardservice;


@Controller
@SessionAttributes("user")
public class messageController {
	@Autowired
	private messageboardservice service;

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = {"*/messgaeinsert"})
	public String method(MessageboardBean bean, Model model) {
		MemberBean temp  = (MemberBean) model.asMap().get("user");
		bean.setMemberid(temp.getMemberId());
		bean.setTotlepoint(0);
		
		
		return null;
		
	}
}
