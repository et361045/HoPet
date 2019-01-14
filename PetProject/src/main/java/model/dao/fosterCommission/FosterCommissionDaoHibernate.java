package model.dao.fosterCommission;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fosterCommission.FosterCommissionBean;
import model.fosterCommission.FosterCommissionDao;
@Repository
public class FosterCommissionDaoHibernate implements FosterCommissionDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public FosterCommissionBean findByFosterCommissionId(Integer fosterCommissionId) {
		return this.getSession().get(FosterCommissionBean.class, fosterCommissionId);
	}

	@Override
	public FosterCommissionBean update(FosterCommissionBean fosterCommissionBean) {
		if (fosterCommissionBean.getFosterCommissionId() != null) {
			FosterCommissionBean result = this.getSession().get(FosterCommissionBean.class,
					fosterCommissionBean.getFosterCommissionId());
			result.setName(fosterCommissionBean.getName());
			result.setVariety(fosterCommissionBean.getVariety());
			result.setArea(fosterCommissionBean.getArea());
			result.setOwner(fosterCommissionBean.getOwner());
			result.setReason(fosterCommissionBean.getReason());
			result.setPicture(fosterCommissionBean.getPicture());
			result.setRemark(fosterCommissionBean.getRemark());
			result.setPetId(fosterCommissionBean.getPetId());
			return result;
		}
		return null;
	}

	@Override
	public FosterCommissionBean insert(FosterCommissionBean fosterCommissionBean) {
		if (fosterCommissionBean.getFosterCommissionId() == null) {
			this.getSession().save(fosterCommissionBean);
			return fosterCommissionBean;
		}
		return null;
	}

	@Override
	public boolean delete(FosterCommissionBean fosterCommissionBean) {
		if (this.findByFosterCommissionId(fosterCommissionBean.getFosterCommissionId()) != null) {
			this.getSession().delete(fosterCommissionBean);
			return true;
		}
		return false;
	}
}
