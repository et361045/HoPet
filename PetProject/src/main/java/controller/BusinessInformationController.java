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
import model.businessInformation.BusinessInformationBean;
import model.businessInformation.BusinessInformationService;

@Controller
public class BusinessInformationController {
	@Autowired
	private BusinessInformationService businessInformationService;

	@InitBinder
	private void method1(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(int.class, new PrimitiveNumberEditor(java.lang.Integer.class, true));
	}

	@RequestMapping("/pages/businessInformation.controller")
	public String method(String businessInformation, BusinessInformationBean bean, BindingResult bindingResult, Model model) {
		System.out.println("bean=" + bean);
		System.out.println("bindingResult=" + bindingResult);

		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);

		if (bindingResult != null && bindingResult.hasFieldErrors()) {

//轉換資料

			if (bindingResult.hasFieldErrors("businessId")) {

				errors.put("businessId", "businessId must be an integer");
			}
			if (bindingResult.hasFieldErrors("externalname")) {

				errors.put("externalname", "Please enter externalname for");
			}

			if (bindingResult.hasFieldErrors("companyname")) {

				errors.put("companyname", "Please enter companyname for");
			}
			if (bindingResult.hasFieldErrors("idname")) {

				errors.put("idname", "Please enter idname for");
			}
			if (bindingResult.hasFieldErrors("businessproject")) {

				errors.put("businessproject", "Please enter businessproject for");
			}
			if (bindingResult.hasFieldErrors("businessPhone")) {
				
				errors.put("businessPhone", "Please enter businessPhone for");
			}
			if (bindingResult.hasFieldErrors("region")) {
				
				errors.put("region", "Please enter region for");
			}
			if (bindingResult.hasFieldErrors("businessAddress")) {
				
				errors.put("businessAddress", "Please enter businessAddress for");
			}
			if (bindingResult.hasFieldErrors("latitude")) {
				
				errors.put("latitude", "Please enter latitude for");
			}

		}

	
		if (errors != null && !errors.isEmpty()) {

			System.out.println("enter errors");
			return "BusinessInformation.errors";
		}
		if ("Select".equals(businessInformation)) {
			List<BusinessInformationBean> result = businessInformationService.select(bean);
			model.addAttribute("select", result);
			return "businessInformation.select";

		} else if ("Insert".equals(businessInformation)) {
			System.out.println("enter inset "+ bean);
			BusinessInformationBean result = businessInformationService.insert(bean);
			if (result == null) {
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "businessInformation.errors";

		} else if ("Update".equals(businessInformation)) {
			BusinessInformationBean result = businessInformationService.update(bean);
			if (result == null) {
				errors.put("action", "update failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "businessInformation.errors";

		} else if ("Delete".equals(businessInformation)) {
			boolean result = businessInformationService.delete(bean);
			model.addAttribute("delete", result);
			return "businessInformation.errors";

		} else {
			errors.put("action", "unknown action: " + businessInformation);
			return "businessInformation.errors";
		}

	}
}
