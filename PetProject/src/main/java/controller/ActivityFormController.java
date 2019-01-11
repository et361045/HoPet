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
import model.activityForm.ActivityFormBean;
import model.activityForm.ActivityFormService;
	
	@Controller
	public class ActivityFormController {
		@Autowired
		private ActivityFormService activityFormService;
		@InitBinder
		private void method1(WebDataBinder webDataBinder)
		{
			webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class,true));
		}
		@RequestMapping("/pages/ActivityForm.controller")
		public String method(String activityForm, ActivityFormBean bean, BindingResult bindingResult, Model model) {
			System.out.println("bean="+bean);
			System.out.println("bindingResult="+bindingResult);
			
			Map<String, String> errors = new HashMap<>();
			model.addAttribute("errors", errors);
		
			
			if(errors!=null && !errors.isEmpty()) {
				
				System.out.println("enter errors");
				return "activityForm.errors";
			}
			 if("Insert".equals(activityForm)) {
				 ActivityFormBean result = activityFormService.insert(bean);
				if(result==null) {
					errors.put("action", "insert failed");
				} else {
					model.addAttribute("insert", result);
				}
				return "activityForm.errors";
				
			} 	
			  else if("Delete".equals(activityForm)) {
				boolean result = activityFormService.delete(bean);
				model.addAttribute("delete", result);
				return "activityForm.errors";
				
			} else {
				errors.put("action", "unknown action: "+activityForm);
				return "activityForm.errors";
			}
		}
	}
