package model.dao.fosterForm;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import model.fosterForm.FosterFormBean;
import model.fosterForm.FosterFormDao;
import net.bytebuddy.asm.Advice.Return;

public class FosterFoemDaoHibernate implements FosterFormDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
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
