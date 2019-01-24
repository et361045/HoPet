package controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import misc.PrimitiveNumberEditor;
import model.activityCommission.ActivityCommissionBean;
import model.activityCommission.ActivityCommissionService;
import model.activityDetail.ActivityDetailBean;
import model.activityForm.ActivityFormBean;
import model.activityForm.ActivityFormService;
import model.fostercareForm.FostercareFormBean;
import model.member.MemberBean;

@Controller
@SessionAttributes(value="user")
public class ActivityCommissionController {
	
	@Autowired
	private ActivityCommissionService activityCommissionService;
	
//	@Autowired
//	private PetService petService;
//	
	@Autowired
	private ActivityFormService activityFormService;
	
	
	
	@ResponseBody
	@RequestMapping("findId")
	public model.activityCommission.ActivityDetailBean findId(Model model,@RequestParam Integer id) {	
		return activityCommissionService.searchformId(id);

	}
	
	//新增 我要參加 成功
	
	@ResponseBody
	@RequestMapping("insertActivityForm")
	public String insertActivityForm(Model model,ActivityFormBean activityFormBean,Integer activityid) {
		System.out.println("hihiiihi");
		MemberBean usertemp  = (MemberBean) model.asMap().get("user");
		activityFormBean.setParticipate(usertemp.getMemberId());
		System.out.println(activityFormBean);
//	System.out.println("petid ="+petid);
		ActivityFormBean temp =activityFormService.insertActivityForm(activityFormBean, activityid);
//		temp.setMnumber("0");
//         System.out.println("temp ="+temp);
         
         activityFormService.insert(temp);
		return "activityCommission";
		
	}
	
	
	
	
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping("/aaa")
	public ActivityCommissionBean insertActivityCommission(Model model,ActivityCommissionBean bean,String city,String town,String activityname,
			String activites,Integer limit,String address,Integer phone,Integer activitymemberid ,HttpServletResponse response) {
//		System.out.println(bean);
		response.reset();
		MemberBean usertemp  = (MemberBean) model.asMap().get("user");
		System.out.println(usertemp);
		bean.setActivitymemberid(usertemp.getMemberId());
		bean.setActivityname(activityname);
		bean.setActivites(activites);
		bean.setLimit(limit);
		bean.setAddress(address);
		bean.setPhone(phone);
        bean.setStatus(usertemp.getMemberName());
//		bean.setSignup(temp.getSignup());
//		bean.setStatus(temp.getStatus());
		ActivityCommissionBean result1 = activityCommissionService.insert(bean);
//		model.addAttribute("insert", result);
//		return "activityCommission";
		return result1;
		
		
	}


	@RequestMapping("/activityCommission")
	public String findall(ActivityCommissionBean bean,Model model){	
		List<ActivityCommissionBean>beans= activityCommissionService.select(bean);
		model.addAttribute("select10",beans);
		
		return "activityCommission";
	}
}
