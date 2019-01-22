package controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.member.MemberBean;
import model.messageboard.MessageboardBean;
import model.messageboard.messageboardservice;
import model.petEncyclopedia.PetEncyclopediaService;
import model.returnmessage.ReturnMessageBean;
import model.returnmessage.ReturnMessageDAO;
import model.returnmessage.returnmessageService;

@Controller
@SessionAttributes(value = "user")
public class returnmessageController {
	@Autowired
	private returnmessageService service;

	@Autowired
	private messageboardservice messageboardservice;

	@RequestMapping({ "/insertreturn", "*/insertreturn" })
	public String method1(Model model, ReturnMessageBean returnMessageBean) {
		MemberBean temp = (MemberBean) model.asMap().get("user");
		returnMessageBean.setMemberid(temp.getMemberId());
		java.util.Date dateD = new java.util.Date();
		Date date = new Date(dateD.getTime());
		returnMessageBean.setMessagetime(date);
		returnMessageBean.setPoint(0);
		System.out.println(returnMessageBean);
		service.insert(returnMessageBean);
		List<MessageboardBean> temp1 = messageboardservice.selectByPermission("public");
		model.addAttribute("select", temp1);
		model.addAttribute("aaa", "132");
		System.out.println(model.toString());
		return "message.selcet";
	}

}
