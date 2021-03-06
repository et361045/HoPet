package model.dao.fosterCommission;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fosterCommission.FosterCommissionBean;
import model.fosterCommission.FosterCommissionDao;
import model.fosterForm.FosterFormBean;

@Repository
public class FosterCommissionDaoHibernate implements FosterCommissionDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void deleteByPetId(Integer petId) {
		FosterCommissionBean temp = this.findByPetId(petId);
		this.getSession().delete(temp);
	}

	@Override
	public List<FosterCommissionBean> findByOwner(Integer Owner) {
		return this.getSession().createQuery("from FosterCommissionBean where owner='" + Owner + "'").list();
	}

	@Override
	public FosterCommissionBean findByPetId(Integer petId) {
		Query<FosterCommissionBean> query = this.getSession()
				.createQuery("from FosterCommissionBean where petId='" + petId + "'");
		FosterCommissionBean CommissionBean = query.uniqueResult();
		return CommissionBean;
	}

	@Override
	public List<FosterCommissionBean> findByVarietyFosterCommission(String variety) {
		return this.getSession().createQuery("from FosterCommissionBean where variety='" + variety + "'").list();
	}

	@Override
	public List<FosterCommissionBean> findByAreaAndVarietyFosterCommission(String area, String variety) {
		return this.getSession()
				.createQuery("from FosterCommissionBean where area='" + area + "' and variety='" + variety + "'")
				.list();
	}

	@Override
	public List<FosterCommissionBean> findByAreaFosterCommission(String area) {
		return this.getSession().createQuery("from FosterCommissionBean where area='" + area + "'").list();
	}

	@Override
	public List<FosterCommissionBean> findAllFosterCommission() {

		return this.getSession().createQuery("from FosterCommissionBean", FosterCommissionBean.class).list();
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
