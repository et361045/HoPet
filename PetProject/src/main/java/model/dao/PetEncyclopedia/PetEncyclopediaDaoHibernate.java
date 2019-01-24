package model.dao.PetEncyclopedia;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.petEncyclopedia.PetEncyclopediaBean;
import model.petEncyclopedia.PetEncyclopediaDao;

@Repository
public class PetEncyclopediaDaoHibernate implements PetEncyclopediaDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public PetEncyclopediaBean update(PetEncyclopediaBean petEncyclopediaBean) {
		this.getSession().save(petEncyclopediaBean);
		return this.getSession().get(PetEncyclopediaBean.class, petEncyclopediaBean.getPetEncyclopediaId());
	}
		

	@Override
	public PetEncyclopediaBean finBypetEncyclopediaId(Integer petEncyclopediaId) {
		return this.getSession().get(PetEncyclopediaBean.class, petEncyclopediaId);
	}
}
