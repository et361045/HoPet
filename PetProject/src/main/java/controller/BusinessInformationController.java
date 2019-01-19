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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@ResponseBody
	@RequestMapping("/query1")
	public List<BusinessInformationBean> test456(BusinessInformationBean bean){
		
		List<BusinessInformationBean>beans= businessInformationService.select(bean);
		System.out.println(beans);
		return beans;
		
	}
	
	@ResponseBody
	@RequestMapping("/xxx")
	public List<BusinessInformationBean> test456(@RequestParam(name = "town", required = false)  String town,Model model) {
		System.out.println(town);
		System.out.println("enter test456");
		List<BusinessInformationBean>beans=businessInformationService.selectarea(town);
		System.out.println(beans);
		return beans;
	}
	
	
	@ResponseBody
	@RequestMapping("/pages/businessInformation/update.controller")
	public String updatehospital(Integer businessId , String externalname,String businessAddress,
									String businessPhone,String idname,Double longitude,Double latitude) {
//		System.out.println(businessId);
//		System.out.println(externalname);
//		System.out.println(businessAddress);
//		System.out.println(longitude);
		
		
		BusinessInformationBean temp = businessInformationService.findone(businessId);
		System.out.println(externalname);
		if(!externalname.isEmpty()) {
			temp.setExternalname(externalname);
		}
		if(!businessAddress.isEmpty()) {
			temp.setBusinessAddress(businessAddress);
		}
		if(!businessPhone.isEmpty()) {
			temp.setBusinessPhone(businessPhone);
		}
		if(!idname.isEmpty()) {
			temp.setIdname(idname);
		}
		if(longitude!=null) {
			temp.setLongitude(longitude);
		}
		if(latitude!=null) {
			temp.setLatitude(latitude);
		}
		BusinessInformationBean result = businessInformationService.update(temp);
		
		System.out.println("result"+result);
		return result+"";
	}

	
	@ResponseBody
	@RequestMapping("/pages/businessInformation/delete.controller")
	public String deletebusinessInformation(@RequestParam Integer businessId) {
		BusinessInformationBean bean = new BusinessInformationBean();
		bean.setBusinessId(businessId);
		boolean result = businessInformationService.delete(bean);
		System.out.println("result"+result);
		return result+"";
	}
	
	
	@RequestMapping("/businessInformation.controller")
	public String method(String businessInformation, BusinessInformationBean bean, BindingResult bindingResult,
			Model model) {
//		System.out.println("bean=" + bean);
//		System.out.println("bindingResult=" + bindingResult);
		System.out.println(businessInformation);
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);

		

//轉換資料
		if("Insert".equals(businessInformation) || "Update".equals(businessInformation) || "Delete".equals(businessInformation)) {
			if ( bean.getExternalname()==null||bean.getExternalname().trim()=="") {
				errors.put("externalname", "請輸入名稱 ");
				System.out.println(errors);
			}
			if ( bean.getBusinessAddress()==null||bean.getBusinessAddress().trim()=="") {
				errors.put("businessAddress", "請輸入地址");
				System.out.println(errors);
			}
			if ( bean.getBusinessPhone()==null||bean.getBusinessPhone().trim()=="") {
				errors.put("businessPhone", "請輸入電話");
				System.out.println(errors);
			}
		}
			
		
		
		
		
		
		
		

		if (errors != null && !errors.isEmpty()) {

			System.out.println("enter errors");
			return "businessInformation.errors";
		}
		if ("Select".equals(businessInformation)) {
			List<BusinessInformationBean> result = businessInformationService.select(bean);
			model.addAttribute("select", result);
			return "businessInformation.select";
	
		} else if ("Insert".equals(businessInformation)) {
			System.out.println("enter inset " + bean);
			BusinessInformationBean result = businessInformationService.insert(bean);
			System.out.println("result"+result);
			if (result == null) {
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "businessInformation.errors";

		} else {
			errors.put("action", "unknown action: " + businessInformation);
			return "businessInformation.errors";
		}

	}
}
