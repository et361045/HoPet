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
import model.fostercareCommission.FostercareBean;
import model.fostercareForm.FostercareFormBean;
import model.fostercareForm.FostercareFormService;
@Controller
public class FostercareFormController {
	@Autowired
	private FostercareFormService fostercareFormService;
	@InitBinder
	private void method1(WebDataBinder webDataBinder)
	{
		webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class,true));
	}
	@RequestMapping("/pages/fostercareForm.controller")
	public String method(String fostercareform, FostercareFormBean bean, BindingResult bindingResult, Model model) {
		System.out.println("bean="+bean);
		System.out.println("bindingResult="+bindingResult);
		
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
	
		
		if(errors!=null && !errors.isEmpty()) {
			
			System.out.println("enter errors");
			return "fostercareform.errors";
		}
		 if("Insert".equals(fostercareform)) {
			 FostercareFormBean result = fostercareFormService.insert(bean);
			if(result==null) {
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "fostercareform.errors";
			
		} 	
		  else if("Delete".equals(fostercareform)) {
			boolean result = fostercareFormService.delete(bean);
			model.addAttribute("delete", result);
			return "fostercareform.errors";
			
		} else {
			errors.put("action", "unknown action: "+fostercareform);
			return "fostercareform.errors";
		}

		


	}
}
