package model.dao.pet;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import model.pet.PetBean;
import model.pet.PetDAO;

@Repository
public class petDAOHibernate implements PetDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public PetBean findpetBean(Integer petid) {
		// TODO Auto-generated method stub
		return this.getSession().get(PetBean.class, petid);

	}

	@Override
	public List<PetBean> findpetBymember(Integer member) {
		return this.getSession().createQuery("from PetBean where memberid = '" + member + "'", PetBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public boolean update(PetBean Bean) {
		if (Bean.getPetId() != null) {
			PetBean result = this.getSession().get(PetBean.class, Bean.getPetId());
			if (result != null) {
				result.setAge(Bean.getAge());
				result.setPetPicture((Bean.getPetPicture()));;
				result.setMemberid(Bean.getMemberid());
				result.setPetName(Bean.getPetName());
				result.setPetRemarks(Bean.getPetRemarks());
				result.setPetSize(Bean.getPetSize());
				result.setPetVariety(Bean.getPetVariety());
				result.setVaccine(Bean.getVaccine());
				result.setWafer(Bean.getWafer());
				return true;
			}
		}
		return false;
	}

	@Override
	public boolean insert(PetBean Bean) {
		if (Bean.getPetId() == null) {
			this.getSession().save(Bean);
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(PetBean Bean) {
		if (this.findpetBean(Bean.getPetId()) != null) {
			this.getSession().delete(Bean);
			return true;
		}
		return false;
	}

}
