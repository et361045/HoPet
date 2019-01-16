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
import model.dao.hospital.HospitalDaoHibernate;
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
	@ResponseBody
	@RequestMapping("/oooo")
	public List<HospitalBean> test456(@RequestParam(name = "town", required = false)  String town,Model model) {
		System.out.println(town);
		System.out.println("enter test456");
		List<HospitalBean>beans=hospitalService.selectarea(town);
		System.out.println(beans);
		return beans;
	}
	
	
	@ResponseBody
	@RequestMapping("/pages/hospital/update.controller")
	public String updatehospital(Integer hospitalId , String hospitalName,String hospitalAddress,
									String hospitalphone,String hospitalowner,Double longitude,Double latitude) {
		System.out.println(hospitalId);
		System.out.println(hospitalName);
		System.out.println(hospitalAddress);
		System.out.println(longitude);
		
		HospitalBean temp = hospitalService.findone(hospitalId);
		System.out.println(hospitalName);
		if(!hospitalName.isEmpty()) {
			temp.setHospitalName(hospitalName);
		}if(!hospitalAddress.isEmpty()) {
			temp.setHospitalAddress(hospitalAddress);
		}if(!hospitalphone.isEmpty()) {
			temp.setHospitalphone(hospitalphone);
		}if(!hospitalowner.isEmpty()) {
			temp.setHospitalowner(hospitalowner);
		}if(longitude!=null) {
			temp.setLongitude(longitude);
		}if(latitude!=null) {
			temp.setLatitude(latitude);
		}
		HospitalBean result = hospitalService.update(temp);
		
		System.out.println("result"+result);
		return result+"";
	}

	@ResponseBody
	@RequestMapping("/pages/hospital/delete.controller")
	public String deletehospital(@RequestParam Integer hospitalId) {
		HospitalBean bean = new HospitalBean();
		bean.setHospitalId(hospitalId);
		boolean result = hospitalService.delete(bean);
		System.out.println("result"+result);
		return result+"";
	}
	
	
	@RequestMapping("/hospitaltest.controller")
	public String method(String hospital, HospitalBean bean, BindingResult bindingResult, Model model) {
		System.out.println("bean=" + bean);
		System.out.println("bindingResult=" + bindingResult);
		System.out.println(hospital);

		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		
		if("Insert".equals(hospital) || "Update".equals(hospital) || "Delete".equals(hospital)) {
			if ( bean.getHospitalName()==null||bean.getHospitalName().trim()=="") {
				errors.put("hospitalName", "請輸入名稱 ");
				System.out.println(errors);
			}
			if ( bean.getHospitalAddress()==null||bean.getHospitalAddress().trim()=="") {
				errors.put("hospitalAddress", "請輸入地址");
				System.out.println(errors);
			}
			if ( bean.getHospitalphone()==null||bean.getHospitalphone().trim()=="") {
				errors.put("hospitalphone", "請輸入電話");
				System.out.println(errors);
			}
			if ( bean.getHospitalowner()==null||bean.getHospitalowner().trim()=="") {
				errors.put("hospitalowner", "請輸入擁有人");
				System.out.println(errors);
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
			System.out.println("result"+result);
			if (result == null) {
				System.out.println("result"+result);
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "hospital.errors";

		} else {
			errors.put("action", "unknown action: " + hospital);
			return "hospital.errors";
		}

	}
}
