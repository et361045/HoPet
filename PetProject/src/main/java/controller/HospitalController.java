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
import org.springframework.web.bind.annotation.ResponseBody;

import misc.PrimitiveNumberEditor;
import model.fostercareCommission.FostercareCommissionBean;
import model.hospital.HospitalBean;
import model.hospital.HospitalService;

@Controller
public class HospitalController {
	@Autowired
	private HospitalService hospitalService;

	@InitBinder
	private void method1(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(int.class, new PrimitiveNumberEditor(java.lang.Integer.class, true));
	}
	
	@ResponseBody
	@RequestMapping("/query")
	public List<HospitalBean> test123(HospitalBean bean){
		
		List<HospitalBean>beans= hospitalService.select(bean);
		System.out.println(beans);
		return beans;
		
	}
	
	

	@RequestMapping("/pages/hospital.controller")
	public String method(String hospital, HospitalBean bean, BindingResult bindingResult, Model model) {
		System.out.println("bean=" + bean);
		System.out.println("bindingResult=" + bindingResult);

		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);

		if (bindingResult != null && bindingResult.hasFieldErrors()) {

//轉換資料

			if (bindingResult.hasFieldErrors("hospitalId")) {

				errors.put("hospitalId", "hospitalId must be an integer");
			}
			if (bindingResult.hasFieldErrors("hospitalName")) {

				errors.put("hospitalName", "Please enter hospitalName for");
			}
			if (bindingResult.hasFieldErrors("hospitalAddress")) {

				errors.put("hospitalAddress", "Please enter hospitalAddress for");
			}

			if (bindingResult.hasFieldErrors("hospitalphone")) {

				errors.put("hospitalphone", "Please enter hospitalphone for");
			}
			if (bindingResult.hasFieldErrors("hospitalowner")) {

				errors.put("hospitalowner", "Please enter hospitalphone for");
			}
			if (bindingResult.hasFieldErrors("longitude")) {

				errors.put("longitude", "Please enter longitude for");
			}
			if (bindingResult.hasFieldErrors("latitude")) {

				errors.put("latitude", "Please enter latitude for");
			}

		}

	
		if (errors != null && !errors.isEmpty()) {

			System.out.println("enter errors");
			return "hospital.errors";
		}
		if ("Select".equals(hospital)) {
			List<HospitalBean> result = hospitalService.select(bean);
			model.addAttribute("select", result);
			return "hospital.select";

		} else if ("Insert".equals(hospital)) {
			System.out.println("enter inset "+ bean);
			HospitalBean result = hospitalService.insert(bean);
			if (result == null) {
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "hospital.errors";

		} else if ("Update".equals(hospital)) {
			HospitalBean result = hospitalService.update(bean);
			if (result == null) {
				errors.put("action", "update failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "hospital.errors";

		} else if ("Delete".equals(hospital)) {
			boolean result = hospitalService.delete(bean);
			model.addAttribute("delete", result);
			return "hospital.errors";

		} else {
			errors.put("action", "unknown action: " + hospital);
			return "hospital.errors";
		}

	}
}
