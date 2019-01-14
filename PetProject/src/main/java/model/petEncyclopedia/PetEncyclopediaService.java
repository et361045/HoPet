package model.petEncyclopedia;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetEncyclopediaService {
	@Autowired
	private PetEncyclopediaDao petEncyclopediaDao;
	
	public PetEncyclopediaBean searchPetEncyclopediaId(Integer petEncyclopediaId) {
		PetEncyclopediaBean bean = petEncyclopediaDao.finBypetEncyclopediaId(petEncyclopediaId);
		return bean;
	}

}
