package model.dao.foster;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.foster.FosterBean;
import model.foster.FosterDao;
@Repository
public class FosterDaoHibernate implements FosterDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public FosterBean findByFosterId(Integer fosterid) {
		return this.getSession().get(FosterBean.class, fosterid);
	}

	@Override
	public FosterBean findByCarerId(Integer carer) {
		return this.getSession().get(FosterBean.class, carer);
	}

	@Override
	public FosterBean update(FosterBean fosterBean) {
		if (fosterBean.getFosterId() != null) {
			FosterBean result = this.getSession().get(FosterBean.class, fosterBean.getFosterId());
			result.setFosterCommissionId(fosterBean.getFosterCommissionId());
			result.setFosterFormId(fosterBean.getFosterFormId());
			result.setOwner(fosterBean.getOwner());
			result.setCarer(fosterBean.getCarer());
			return result;
		}
		return null;
	}

	@Override
	public FosterBean insert(FosterBean fosterBean) {
		if (fosterBean.getFosterId() == null) {
			this.getSession().save(fosterBean);
			return fosterBean;
		}
		return null;
	}

	@Override
	public boolean delete(FosterBean fosterBean) {
		if (this.findByFosterId(fosterBean.getFosterId()) != null) {
			this.getSession().delete(fosterBean);
			return true;
		}
		return false;
	}

}
