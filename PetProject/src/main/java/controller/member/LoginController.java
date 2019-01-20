package controller.member;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSourceResolvable;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.annotation.SessionScope;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import model.member.MemberBean;
import model.member.MemberService;

@ResponseBody
@Controller
@SessionAttributes("user")
public class LoginController {
	@Autowired
	private MemberService memberService;

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = {"login","*/login"}, produces = { "application/json; charset=UTF-8" })
	public String method(@RequestParam(name = "email", required = false) String email,
			@RequestParam(name = "password", required = false) String password, Model model,HttpServletResponse response) {
//特解法1/20
		response.reset();
		System.out.println("username:" + email + " password:" + password);
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);

		MemberBean bean = memberService.login(email, password);
		System.out.println("bean =" + bean);
		JsonArray array = new JsonArray();

		if (bean == null) {
			JsonObject obj = new JsonObject();
			obj.addProperty("password", "noexist");
			obj.addProperty("hasMoreData", false);
			array.add(obj);
			System.out.println("1");
			System.out.println(array.toString());
			return array.toString();
		} else {
			JsonObject obj = new JsonObject();
			obj.addProperty("password", "exist");
			array.add(obj);
			model.addAttribute("user", bean);
			System.out.println("2");
			System.out.println(array.toString());
			return array.toString();
		}

	}

	@RequestMapping(value = {"logout","*/logout"})
	public void method1(Model model, SessionStatus sessionStatu) {
		System.out.println("進入登出中");
		System.out.println(model.asMap().get("user"));
		sessionStatu.setComplete();
	}
	
	@RequestMapping(value =  "*/updatemember" )
	public void method2(Model model, @RequestParam(name = "psw", required = false) String psw,
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "memberPhone", required = false) String memberPhone,
			MemberBean updata
			) {
		
		MemberBean temp  = (MemberBean) model.asMap().get("user");
		System.out.println(temp);
		System.out.println(updata);
		if(updata.getPsw()!=null) {
		temp.setPsw(updata.getPsw());
		}
		temp.setMemberName(updata.getMemberName());
		temp.setAddress(updata.getAddress());
		temp.setMemberPhone(updata.getMemberPhone());
	
	    System.out.println(memberService.update(temp));
		model.addAttribute("user", temp);
	   
	}

	
	
	

}
