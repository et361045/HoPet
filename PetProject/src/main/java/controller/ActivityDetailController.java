package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import misc.PrimitiveNumberEditor;
import model.activityCommission.ActivityCommissionService;
import model.activityDetail.ActivityDetailBean;
import model.activityDetail.ActivityDetailService;

@Controller
public class ActivityDetailController {
	@Autowired
	private ActivityDetailService activityDetailService;
	@InitBinder
	private void method1(WebDataBinder webDataBinder)
	{
		webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class,true));
	}
	
	@RequestMapping("/pages/Activity.controller")
	public String method(String activitydetail, ActivityDetailBean bean, BindingResult bindingResult, Model model) {
		System.out.println("bean="+bean);
		System.out.println("bindingResult="+bindingResult);
	
	Map<String, String> errors = new HashMap<>();
	model.addAttribute("errors", errors);

	
	if(errors!=null && !errors.isEmpty()) {
		
		System.out.println("enter errors");
		return "fostercareform.errors";
	}
	 if("Insert".equals(activitydetail)) {
		 ActivityDetailBean result = activityDetailService.insert(bean);
		if(result==null) {
			errors.put("action", "insert failed");
		} else {
			model.addAttribute("insert", result);
		}
		return "fostercareform.errors";
		
	} 	
	  else if("Delete".equals(activitydetail)) {
		boolean result = activityDetailService.delete(bean);
		model.addAttribute("delete", result);
		return "fostercareform.errors";
		
	} else {
		errors.put("action", "unknown action: "+activitydetail);
		return "fostercareform.errors";
	}

}
}
	
	
	
	
	
	
	

