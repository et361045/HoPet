package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.petEncyclopedia.PetEncyclopediaBean;
import model.petEncyclopedia.PetEncyclopediaService;

@Controller
public class PetEncyclopediaController {
	
	@Autowired
	private PetEncyclopediaService petEncyclopediaService;
	
	@RequestMapping({ "/PetEncyclopedia/findDogData" })
	public String findDogData(@RequestParam Integer petEncyclopediaId, Model model) {
		model.addAttribute("bean", petEncyclopediaService.searchPetEncyclopediaId(petEncyclopediaId));
		return "dogItem";
	}
	
	@RequestMapping({"/dogItemUpdate"})
	public String dogItem(@RequestParam Integer petEncyclopediaId, Model model) {
		model.addAttribute("bean", petEncyclopediaService.searchPetEncyclopediaId(petEncyclopediaId));
		return "dogItemUpdate";
	}
	@RequestMapping({"/dogItem"})
	public String dogItemUpdate(PetEncyclopediaBean petEncyclopediaBean, Model model) {
		petEncyclopediaService.updateDogItems(petEncyclopediaBean);
		model.addAttribute("bean", petEncyclopediaService.searchPetEncyclopediaId(petEncyclopediaBean.getPetEncyclopediaId()));
		return "dogItem";
	}

}
