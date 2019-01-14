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
		PetEncyclopediaBean bean = petEncyclopediaService.searchPetEncyclopediaId(petEncyclopediaId);
		model.addAttribute("bean", bean);
		return "dogItem";
	}

}
