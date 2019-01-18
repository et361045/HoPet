package controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.fosterCommission.PetDetailBean;
import model.fosterForm.FosterFormBean;
import model.fosterForm.FosterFormService;
import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareCommission.FostercareCommissionService;
import model.fostercareForm.FostercareFormBean;
import model.fostercareForm.FostercareFormService;
import model.member.MemberBean;
import model.pet.PetBean;
import model.pet.PetService;

@Controller
@SessionAttributes("user")
public class FostercareCommissionController {
//	private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	@Autowired
	private FostercareCommissionService fostercareservice;
	
	@Autowired
	private PetService petService;
	@Autowired
	private FostercareFormService fostercareFormService;
	
	@ResponseBody
	@RequestMapping("insertFostercareForm")
	public String insertFosterForm(Model model,FostercareFormBean fostercareFormBean,
			Integer petid) {
		System.out.println("hihiiihi");
		MemberBean usertemp  = (MemberBean) model.asMap().get("user");
		fostercareFormBean.setCarer(usertemp.getMemberId());
		System.out.println(fostercareFormBean);
	System.out.println("petid ="+petid);
		FostercareFormBean  temp =fostercareFormService.insertFostercareForm(fostercareFormBean, petid);
		temp.setStatus("0");
         System.out.println("temp ="+temp);
         
         fostercareFormService.insert(temp);
		return "fostercarecommission";
//		fostercareFormBean.setFostercareCommissionid(fostercareCommissionid);
		
	}
	
	
	
	
	@RequestMapping("/xxxxx")
	public String insertFostercareCommission(Model model,FostercareCommissionBean bean,Date starttime,Date endtime,String city,String town,Integer petId ) {
		System.out.println("bean="+bean);
		System.out.println("starttime="+starttime);
		System.out.println("endtime="+endtime);
		System.out.println("area="+city+town);
		System.out.println("Petid="+petId);	
		MemberBean usertemp  = (MemberBean) model.asMap().get("user");
		PetBean temp =petService.findpetBeanbypk(petId);
//		System.out.println(temp);
		bean.setName(usertemp.getMemberName());
		bean.setPetid(petId);
		bean.setArea(city+town);
		bean.setOwner(temp.getMemberid());
		bean.setPicture(temp.getPetPicture());
		bean.setVariety(temp.getPetVariety());
		FostercareCommissionBean result = fostercareservice.insert(bean);
		model.addAttribute("insert", result);
		return "fostercarecommission";
		
	}


	@RequestMapping("/fostercarecommission")
	public String findall(FostercareCommissionBean bean,Model model){	
		List<FostercareCommissionBean>beans= fostercareservice.select(bean);
		System.out.println(beans);
		model.addAttribute("select1",beans);
		return "fostercarecommission";
	}
	
	@ResponseBody
	@RequestMapping("findcarePetId")
	public model.fostercareCommission.PetDetailBean findPetId(Model model,@RequestParam Integer id) {	
		return fostercareservice.searchPetId(id);

	}
	
	
	
//	@RequestMapping("/pages/fostercarecommmission.controller")
//	public String method(String fostercare, FostercareCommissionBean bean, BindingResult bindingResult, Model model,Date starttime,Date endtime,String city,String town,Integer petId) {
//		System.out.println("bean="+bean);
//		System.out.println("starttime="+starttime);
//		System.out.println("endtime="+endtime);
//		System.out.println("area="+city+town);
//		System.out.println("Petid="+petId);
//		MemberBean usertemp  = (MemberBean) model.asMap().get("user");
//		PetBean temp =petService.findpetBeanbypk(petId);
//		System.out.println(temp);
//		bean.setName(usertemp.getMemberName());
//		bean.setPetid(petId);
//		bean.setArea(city+town);
//		bean.setOwner(temp.getMemberid());
//		bean.setPicture(temp.getPetPicture());
//		bean.setVariety(temp.getPetVariety());
//		Map<String, String> errors = new HashMap<>();
//		model.addAttribute("errors", errors);
//	
//
//		if("Select".equals(fostercare)) {
//			List<FostercareCommissionBean> result = fostercareservice.select(bean);
//			model.addAttribute("select", result);
//			return "fostercarecommission.select";
//			
//		} else if("Insert".equals(fostercare)) {
//			System.out.println("hahaha");
//			FostercareCommissionBean result = fostercareservice.insert(bean);
//			model.addAttribute("insert", result);
//			return "fostercarecommission";
//			
//		} else {
//			errors.put("action", "unknown action: "+fostercare);
//			return "fostercarecommission.errors";
//		}
//
//		
//
//
//	}
}

