package controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import fostercaremodel.fostercareBean;
import fostercaremodel.fostercareService;
import misc.PrimitiveNumberEditor;

@Controller
public class fostercareController {
//	private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	@Autowired
	private fostercareService fostercareservice;
	@InitBinder
	private void method1(WebDataBinder webDataBinder)
	{
		webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class,true));
	}
	@RequestMapping("/pages/fostercarecommmission.controller")
	public String method(String fostercare, fostercareBean bean, BindingResult bindingResult, Model model) {
		System.out.println("bean="+bean);
		System.out.println("bindingResult="+bindingResult);
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		if (bindingResult != null && bindingResult.hasFieldErrors()) {
			if (bindingResult.hasFieldErrors("FostercareCommissionid")) {
				errors.put("FostercareCommissionid", "Please enter FostercareCommissionid for ");
			}

//轉換資料
			if (bindingResult.hasFieldErrors("FostercareCommissionid")) {
				errors.put("FostercareCommissionid", "FostercareCommissionid must be an integer");
			}

			if (bindingResult.hasFieldErrors("owner")) {
				errors.put("owner", "owner must be a number");
			}
	
			if (bindingResult.hasFieldErrors("txt")) {
			
					errors.put("txt", "Please enter txt for");
		
			}
			if (bindingResult.hasFieldErrors("petid")) {

				errors.put("petid", "petid must be an integer");
			}
			if (bindingResult.hasFieldErrors("region")) {

				errors.put("region", "Please enter region for");
			}
			if (bindingResult.hasFieldErrors("dday")) {

				errors.put("dday", "dday must be an integer");
			}
			if (bindingResult.hasFieldErrors("size")) {

				errors.put("size", "Please enter size for");
			}
			if (bindingResult.hasFieldErrors("Variety")) {

				errors.put("size", "Please enter Variety for");
			}
		}
		
		if("Insert".equals(fostercare) || "Update".equals(fostercare) || "Delete".equals(fostercare)) {
			if (bean == null || bean.getFostercareCommissionid() == 0) {
				errors.put("id", "Please enter id for " + fostercare);
			} 
		}
		if(errors!=null && !errors.isEmpty()) {
			return "fostercare.errors";
		}
		if("Select".equals(fostercare)) {
			List<fostercareBean> result = fostercareservice.select(bean);
			model.addAttribute("select", result);
			return "fostercare.select";
			
		} else if("Insert".equals(fostercare)) {
			fostercareBean result = fostercareservice.insert(bean);
			if(result==null) {
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "fostercare.errors";
			
		} else if("Update".equals(fostercare)) {
			fostercareBean result = fostercareservice.update(bean);
			if(result==null) {
				errors.put("action", "update failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "fostercare.errors";
			
		} else if("Delete".equals(fostercare)) {
			boolean result = fostercareservice.delete(bean);
			model.addAttribute("delete", result);
			return "fostercare.errors";
			
		} else {
			errors.put("action", "unknown action: "+fostercare);
			return "fostercare.errors";
		}

		


	}
}
