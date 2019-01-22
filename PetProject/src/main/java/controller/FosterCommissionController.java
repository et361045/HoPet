package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.fosterCommission.FosterCommissionBean;
import model.fosterCommission.FosterCommissionService;
import model.fosterCommission.PetDetailBean;
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
	public void insertFosterCommission(Model model, FosterCommissionBean fosterCommissionBean) {
		FosterCommissionBean newBean = fosterCommissionService.insertFosterCommission(fosterCommissionBean);
		model.addAttribute("newBean", newBean);

	}

	@ResponseBody
	@RequestMapping("insertFosterForm")
	public void insertFosterForm(FosterFormBean fosterFormBean,
			@RequestParam(value = "adoptionpetId") Integer petId) {
		fosterFormService.insertFosterForm(fosterFormBean, petId);
	}

	@RequestMapping("findFosterForm")
	public String findAll(Model model) {
		model.addAttribute("findallbean", fosterCommissionService.searchAllFosterCommission());
		return "fosterCommission";
	}

	@ResponseBody
	@RequestMapping("findPetId")
	public PetDetailBean findPetId(Model model, @RequestParam Integer id) {
		return fosterCommissionService.searchPetId(id);

	}

	@RequestMapping("foster_search")
	public String fosterSearch(FosterCommissionBean fosterCommissionBean, Model model) {
		model.addAttribute("findallbean", fosterCommissionService.searchFosterCommission(fosterCommissionBean.getArea(),
				fosterCommissionBean.getVariety()));
		return "fosterCommission";
	}

}
