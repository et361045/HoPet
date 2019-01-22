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

import model.fosterCommission.FosterCommissionBean;
import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareCommission.FostercareCommissionService;
import model.fostercareForm.FostercareFormBean;
import model.fostercareForm.FostercareFormService;
import model.hospital.HospitalBean;
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
	
	@RequestMapping("/fostercarecommissionall")
	public String findall(FostercareFormBean bean,Model model){	
		List<FostercareFormBean>beans= fostercareFormService.selectFostercareCommission(bean);
		model.addAttribute("fostercareformbean",beans);
		return "fostercareform";
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
		model.addAttribute("allbean1",beans);
		return "fostercarecommission";
	}
	
	@ResponseBody
	@RequestMapping("findcarePetId")
	public model.fostercareCommission.PetDetailBean findPetId(Model model,@RequestParam Integer id) {	
		return fostercareservice.searchPetId(id);

	}
	
	
	@ResponseBody
	@RequestMapping("/findarea")
	public List<FostercareCommissionBean> test456(@RequestParam(name = "city", required = false)  String city,Model model) {
		System.out.println(city);
		List<FostercareCommissionBean>beans=fostercareservice.selectarea(city);
		return beans;
	}
	
//	@RequestMapping("fostercare_search")
//	public String fosterSearch(@RequestParam(name = "city1", required = false)  String city,@RequestParam(name = "termType", required = false)  String termType,FostercareCommissionBean fostercareCommissionBean, Model model) {
//		System.out.println(city);
//		System.out.println(termType);
//		List<FostercareCommissionBean> areabean =fostercareservice.searchFostercareCommission(city,termType);
//		model.addAttribute("allbean1",areabean);
//		
//		return "fostercaresearch";
//	}
	
//	@RequestMapping("findFostercareForm")
//	public String findAll(Model model) {
//		List<FostercareCommissionBean>beans=fostercareservice.searchAllFostercareCommission();
//		model.addAttribute("allbean1", beans);
//		System.out.println(fostercareservice.searchAllFostercareCommission());
//		return "fostercaresearch";
//	}
	

}

