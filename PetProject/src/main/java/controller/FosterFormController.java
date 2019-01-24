package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.fosterCommission.FosterCommissionService;
import model.fosterDetail.FosterDetailBean;
import model.fosterDetail.FosterDetailService;
import model.fosterForm.FosterFormService;

@Controller
public class FosterFormController {
	@Autowired
	private FosterFormService formService;
	@Autowired
	private FosterCommissionService fosterCommissionService;
	@Autowired
	private FosterDetailService fosterDetailService;

	@RequestMapping("/findfosterdetial")
	public String findfosterdetial(@RequestParam Integer owner, Model model) {
		model.addAttribute("fosterform", formService.searchCarer(owner));
		model.addAttribute("petNames", formService.searchOwner(owner));
		model.addAttribute("fostersuccess", fosterDetailService.findDetailByOwner(owner));
		model.addAttribute("adoptionsuccess", fosterDetailService.findDetailByCarer(owner));
		return "fosterdetial";
	}

	@RequestMapping("deleteFosterForm")
	public String deleteFosterForm(Integer petId) {
		formService.deleteFosterPetId(petId);
		fosterCommissionService.deleteFosterCommission(petId);
		return "fosterdetial";
	}

	@RequestMapping("fostersuccess")
	public String fostersuccess(@RequestParam(value = "carerId") Integer carer, Integer petId,FosterDetailBean fosterDetailBean) {
		fosterDetailService.insertFoster(carer,petId);
		formService.updateOwner(carer, petId);
		formService.deleteFosterPetId(petId);
		fosterCommissionService.deleteFosterCommission(petId);
		return "fosterdetial";
	}

}
