package model.dao.fosterDetail;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fosterDetail.FosterDetailBean;
import model.fosterDetail.FosterDetailDao;

@Repository
public class fosterDetailDaoHibernate implements FosterDetailDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<FosterDetailBean> findByOwner(Integer owner) {

		return this.getSession().createQuery("from FosterDetailBean where owner='" + owner + "'").list();
	}

	@Override
	public List<FosterDetailBean> findByCarer(Integer owner) {
		return this.getSession().createQuery("from FosterDetailBean where carer='" + owner + "'").list();
	}

	@Override
	public FosterDetailBean findByPetId(Integer petId) {
		Query<FosterDetailBean> query = this.getSession()
				.createQuery("from FosterDetailBean where petId='" + petId + "'");
		FosterDetailBean fosterDetailBean = query.uniqueResult();
		return fosterDetailBean;
	}

	@Override
	public FosterDetailBean update(FosterDetailBean fosterDetailBean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FosterDetailBean insert(FosterDetailBean fosterDetailBean) {
		if (fosterDetailBean.getFosterDetailId() == null) {
			this.getSession().save(fosterDetailBean);
			return fosterDetailBean;
		}
		return null;
	}

	@Override
	public boolean delete(FosterDetailBean fosterDetailBean) {
		// TODO Auto-generated method stub
		return false;
	}

}
