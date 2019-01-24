package model.dao.fosterForm;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fosterCommission.FosterCommissionBean;
import model.fosterForm.FosterFormBean;
import model.fosterForm.FosterFormDao;

@Repository
public class FosterFormDaoHibernate implements FosterFormDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void deleteByCarer(Integer carer, Integer petId) {

	}

	@Override
	public List<FosterFormBean> findByonwer(Integer owner) {
		return this.getSession().createQuery("from FosterFormBean where owner='" + owner + "'").list();
	}

	@Override
	public void deleteByPetId(Integer petId) {
		List<FosterFormBean> temp = this.findByPetId(petId);
		for (int i = 0; i < temp.size(); i++) {
			this.getSession().delete(temp.get(i));
		}
	}

	@Override
	public FosterFormBean findByPetIdAndCarer(Integer petId, Integer carer) {
		Query<FosterFormBean> query = this.getSession()
				.createQuery("from FosterFormBean where petId='" + petId + "' and carer='" + carer + "'");
		FosterFormBean formBean = query.uniqueResult();
		return formBean;
	}

	@Override
	public List<FosterFormBean> findByPetId(Integer petId) {
		return this.getSession().createQuery("from FosterFormBean where petId='" + petId + "'", FosterFormBean.class)
				.list();
	}

	@Override
	public FosterFormBean findByFosterFormId(Integer fosterFormId) {
		return this.getSession().get(FosterFormBean.class, fosterFormId);
	}

	@Override
	public FosterFormBean update(FosterFormBean fosterFormBean) {
		if (fosterFormBean.getFosterFormId() != null) {
			FosterFormBean result = this.getSession().get(FosterFormBean.class, fosterFormBean.getFosterFormId());
			result.setFosterId(fosterFormBean.getFosterId());
			result.setCarer(fosterFormBean.getCarer());
			return result;
		}
		return null;
	}

	@Override
	public FosterFormBean insert(FosterFormBean fosterFormBean) {
		if (fosterFormBean.getFosterFormId() == null) {
			this.getSession().save(fosterFormBean);
			return fosterFormBean;
		}
		return null;
	}

	@Override
	public boolean delete(FosterFormBean fosterFormBean) {
		if (this.findByFosterFormId(fosterFormBean.getFosterFormId()) != null) {
			this.getSession().delete(fosterFormBean);
			return true;
		}
		return false;
	}

}
