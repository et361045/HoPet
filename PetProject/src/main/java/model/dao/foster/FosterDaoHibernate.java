package model.dao.foster;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fosterDetail.FosterDetailDao;
import model.fosterDetail.FosterDetailBean;
@Repository
public class FosterDaoHibernate implements FosterDetailDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public FosterDetailBean findByFosterId(int fosterid) {
		return this.getSession().get(FosterDetailBean.class, fosterid);
	}

	@Override
	public FosterDetailBean findByCarerId(Integer carer) {
		return this.getSession().get(FosterDetailBean.class, carer);
	}

	@Override
	public FosterDetailBean update(FosterDetailBean fosterBean) {
		if (fosterBean.getFosterDetailId() != null) {
			FosterDetailBean result = this.getSession().get(FosterDetailBean.class, fosterBean.getFosterDetailId());
			result.setFosterCommissionId(fosterBean.getFosterCommissionId());
			result.setFosterFormId(fosterBean.getFosterFormId());
			result.setOwner(fosterBean.getOwner());
			result.setCarer(fosterBean.getCarer());
			return result;
		}
		return null;
	}

	@Override
	public FosterDetailBean insert(FosterDetailBean fosterBean) {
		if (fosterBean.getFosterDetailId() == null) {
			this.getSession().save(fosterBean);
			return fosterBean;
		}
		return null;
	}

	@Override
	public boolean delete(FosterDetailBean fosterBean) {
		if (this.findByFosterId(fosterBean.getFosterDetailId()) != null) {
			this.getSession().delete(fosterBean);
			return true;
		}
		return false;
	}

}
