package controller;

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

import misc.PrimitiveNumberEditor;
import model.activityCommission.ActivityCommissionBean;
import model.activityCommission.ActivityCommissionService;

@Controller
public class ActivityCommissionController {
	
	@Autowired
	private ActivityCommissionService activityCommissionService;
	@InitBinder
	private void method1(WebDataBinder webDataBinder)
	{
		webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class,true));
	}
	@RequestMapping("/pages/activityCommission.controller")
	public String method(String activityCommission, ActivityCommissionBean bean, BindingResult bindingResult, Model model) {
		System.out.println("bean="+bean);
		System.out.println("bindingResult="+bindingResult);
		
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
	
		if (bindingResult != null && bindingResult.hasFieldErrors()) {
			
//轉換資料
	
			
			if (bindingResult.hasFieldErrors("activitymemberid")) {

				errors.put("activitymemberid", "activitymemberid must be an Integer");
			}
			if (bindingResult.hasFieldErrors("activityname")) {

				errors.put("activityname", "activityname must be an String");
			}
			if (bindingResult.hasFieldErrors("activities")) {

				errors.put("activities", "Please enter activities for");
			}
			
			if (bindingResult.hasFieldErrors("limit")) {

				errors.put("limit", "Please enter limit for");
			}
			if (bindingResult.hasFieldErrors("signup")) {

				errors.put("signup", "Please enter signup for");
			}
			if (bindingResult.hasFieldErrors("status")) {
				
				errors.put("status", "Please enter status for");
			}
			
		}
		
		if("Insert".equals(activityCommission) || "Update".equals(activityCommission) || "Delete".equals(activityCommission)) {
			
			if (bean == null || bean.getActivitymemberid() == null) {
				errors.put("petid", "Please enter id for " + activityCommission);
			} 
		}
		if(errors!=null && !errors.isEmpty()) {
			
			System.out.println("enter errors");
			return "activityCommission.errors";
		}
		if("Select".equals(activityCommission)) {
			List<ActivityCommissionBean> result = activityCommissionService.select(bean);
			model.addAttribute("select", result);
			return "activityCommission.select";
			
		} else if("Insert".equals(activityCommission)) {
			ActivityCommissionBean result = activityCommissionService.insert(bean);
			if(result==null) {
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "activityCommission.errors";
			
		} else if("Update".equals(activityCommission)) {
			ActivityCommissionBean result = activityCommissionService.update(bean);
			if(result==null) {
				errors.put("action", "update failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "activityCommission.errors";
			
		} else if("Delete".equals(activityCommission)) {
			boolean result = activityCommissionService.delete(bean);
			model.addAttribute("delete", result);
			return "activityCommission.errors";
			
		} else {
			errors.put("action", "unknown action: "+activityCommission);
			return "activityCommission.errors";
		}


	}
}
