package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.fosterCommission.FosterCommissionBean;
import model.fosterCommission.FosterCommissionService;
import model.fosterForm.FosterFormBean;
import model.fosterForm.FosterFormService;

@Controller
public class FosterCommissionController {
	
	@Autowired
	private FosterCommissionService fosterCommissionService;
	@Autowired
	private FosterFormService fosterFormService;
	@ResponseBody
	@RequestMapping("fosterCommission")
	public String insertFosterCommission(Model model,FosterCommissionBean fosterCommissionBean ) {
		FosterCommissionBean newBean = 
		fosterCommissionService.insertFosterCommission(fosterCommissionBean);
		System.out.println(fosterCommissionBean);
		model.addAttribute("newBean",newBean);
		System.out.println(newBean);
		return "ghkdx";
		
	}
	
	@ResponseBody
	@RequestMapping("insertFosterForm")
	public String insertFosterForm(FosterFormBean fosterFormBean ) {
		System.out.println("132123");
//		fosterFormService.insertFosterForm(fosterFormBean);
		
		return "123";
		
	}
	@RequestMapping("findFosterForm")
	public String findAll(Model model) {
	model.addAttribute("findallbean", fosterCommissionService.searchAllFosterCommission());
	System.out.println(fosterCommissionService.searchAllFosterCommission());
		return "fosterCommission";
	}
	
	@RequestMapping("findPetId")
	public String findPetId(Integer petId) {
		

		return "fosterCommission";
	}
	

}
