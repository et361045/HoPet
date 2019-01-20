package controller;




import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.multipart.MultipartFile;
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
	public String method(MessageboardBean bean, Model model,@RequestParam("time1")  String time1) {
		MemberBean temp  = (MemberBean) model.asMap().get("user");
		bean.setMemberid(temp.getMemberId());
		bean.setTotlepoint(0);
		System.out.println(bean);
		java.util.Date dateD = new java.util.Date();
		Date date = new Date(dateD.getTime());
		bean.setMessagetime(date);
		System.out.println(bean);
		service.insert(bean);
		List<MessageboardBean>  temp1 = service.selectByPermission("public");
		 model.addAttribute("select", temp1);
	     model.addAttribute("aaa", "132");
		
		return "message.selcet";
		
	}
	

	@RequestMapping(value = {"/member/membermessage"})
	public String method1(Model model) {
     List<MessageboardBean>  temp = service.selectByPermission("public");
     System.out.println("temp =" +temp);
     model.addAttribute("select", temp);
     model.addAttribute("aaa", "132");
     System.out.println(model.toString());
	return "message.selcet";	 
	}
	
	
	@RequestMapping(value = {"*/membermessagedelete"})
	public String method2(Model model,MessageboardBean bean ) {
	System.out.println("bean =" +bean);
	 service.delete(bean);
     List<MessageboardBean>  temp = service.selectByPermission("public");
     System.out.println("temp =" +temp);
     model.addAttribute("select", temp);
     model.addAttribute("aaa", "132");
     System.out.println(model.toString());
	return "message.selcet";
	 
	}
	
	
	
	
	
}
