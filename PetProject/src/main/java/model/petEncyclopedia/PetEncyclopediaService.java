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

	public PetEncyclopediaBean updateDogItems(PetEncyclopediaBean petEncyclopediaBean) {
		PetEncyclopediaBean bean = petEncyclopediaDao.finBypetEncyclopediaId(petEncyclopediaBean.getPetEncyclopediaId());
		bean.setPetData(petEncyclopediaBean.getPetData());
		bean.setFeature(petEncyclopediaBean.getFeature());
		bean.setOrigin(petEncyclopediaBean.getOrigin());
		bean.setEssentials(petEncyclopediaBean.getEssentials());
		petEncyclopediaDao.update(bean);
		return bean;
	}

}
