package controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import model.activityForm.ActivityFormService;
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
	@RequestMapping("/aaa")
	public String insertActivityCommission(Model model,ActivityCommissionBean bean,String city,String town,String activityname,
			String activites,Integer limit,String address,Integer phone,Integer activitymemberid ) {
//		System.out.println("bean="+bean);
//		System.out.println("starttime="+starttime);
//		System.out.println("endtime="+endtime);
//		System.out.println("area="+city+town);
//		System.out.println("Petid="+activitymemberid);	
		System.out.println(bean);
		MemberBean usertemp  = (MemberBean) model.asMap().get("user");
//		System.out.println(temp);
		bean.setActivitymemberid(usertemp.getMemberId());
		bean.setActivityname(activityname);
		bean.setActivites(activites);
		bean.setLimit(limit);
		bean.setAddress(address);
		bean.setPhone(phone);
//		bean.setSignup(temp.getSignup());
//		bean.setStatus(temp.getStatus());
		ActivityCommissionBean result = activityCommissionService.insert(bean);
		model.addAttribute("insert", result);
		return "activityCommission";
		
	}


	@RequestMapping("/activityCommission")
	public String findall(ActivityCommissionBean bean,Model model){	
		List<ActivityCommissionBean>beans= activityCommissionService.select(bean);
		model.addAttribute("select10",beans);
		return "activityCommission";
	}
//	
//	@ResponseBody
//	@RequestMapping("findcarePetId")
//	public PetDetailBean findPetId(Model model,@RequestParam Integer id) {
//		return fostercareservice.searchPetId(id);
//
//	}
	
	
//	@InitBinder
//	private void method1(WebDataBinder webDataBinder)
//	{
//		webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class,true));
//	}
//	@RequestMapping("/pages/activityCommission.controller")
//	public String method(String activityCommission, ActivityCommissionBean bean, BindingResult bindingResult, Model model) {
//		System.out.println("bean="+bean);
//		System.out.println("bindingResult="+bindingResult);
//		
//		Map<String, String> errors = new HashMap<>();
//		model.addAttribute("errors", errors);
//	
//		if (bindingResult != null && bindingResult.hasFieldErrors()) {
//			
////轉換資料
//	
//			
//			if (bindingResult.hasFieldErrors("activitymemberid")) {
//
//				errors.put("activitymemberid", "activitymemberid must be an Integer");
//			}
//			if (bindingResult.hasFieldErrors("activityname")) {
//
//				errors.put("activityname", "activityname must be an String");
//			}
//			if (bindingResult.hasFieldErrors("activities")) {
//
//				errors.put("activities", "Please enter activities for");
//			}
//			
//			if (bindingResult.hasFieldErrors("limit")) {
//
//				errors.put("limit", "Please enter limit for");
//			}
//			if (bindingResult.hasFieldErrors("signup")) {
//
//				errors.put("signup", "Please enter signup for");
//			}
//			if (bindingResult.hasFieldErrors("status")) {
//				
//				errors.put("status", "Please enter status for");
//			}
//			
//		}
//		
//		if("Insert".equals(activityCommission) || "Update".equals(activityCommission) || "Delete".equals(activityCommission)) {
//			
//			if (bean == null || bean.getActivitymemberid() == null) {
//				errors.put("petid", "Please enter id for " + activityCommission);
//			} 
//		}
//		if(errors!=null && !errors.isEmpty()) {
//			
//			System.out.println("enter errors");
//			return "activityCommission.errors";
//		}
//		if("Select".equals(activityCommission)) {
//			List<ActivityCommissionBean> result = activityCommissionService.select(bean);
//			model.addAttribute("select", result);
//			return "activityCommission.select";
//			
//		} else if("Insert".equals(activityCommission)) {
//		System.out.println("enter insert");
//			ActivityCommissionBean result = activityCommissionService.insert(bean);
//			System.out.println("insert result="+result);
//			if(result==null) {
//				errors.put("action", "insert failed");
//				System.out.println(result);
//			} else {
//				model.addAttribute("insert", result);
//				System.out.println(result);
//			}
//			return "activityCommission.errors";
//			
//		} else if("Update".equals(activityCommission)) {
//			ActivityCommissionBean result = activityCommissionService.update(bean);
//			if(result==null) {
//				errors.put("action", "update failed");
//			} else {
//				model.addAttribute("insert", result);
//			}
//			return "activityCommission.errors";
//			
//		} else if("Delete".equals(activityCommission)) {
//			boolean result = activityCommissionService.delete(bean);
//			model.addAttribute("delete", result);
//			return "activityCommission.errors";
//			
//		} else {
//			errors.put("action", "unknown action: "+activityCommission);
//			return "activityCommission.errors";
//		}
//
//
//	}
}
