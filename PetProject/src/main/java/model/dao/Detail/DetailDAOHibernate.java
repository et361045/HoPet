package model.dao.Detail;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Detail.DetailBean;
import model.Detail.DetailDAO;

@Repository
public class DetailDAOHibernate implements DetailDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public DetailBean findByDetailId(Integer DetailId) {
		return this.getSession().get(DetailBean.class, DetailId);
	}

	@Override
	public boolean update(DetailBean detailBean) {
		if(detailBean.getDetailId() != null) {
			DetailBean result = 
					this.getSession().get(DetailBean.class, detailBean.getDetailId());
			result.setDetailId(detailBean.getDetailId());
			result.setBuyer(detailBean.getBuyer());
			result.setSeller(detailBean.getSeller());
			result.setProductid(detailBean.getProductid());
			result.setMoney(detailBean.getMoney());
			result.setDetailDate(detailBean.getDetailDate());
			result.setCancel(detailBean.getCancel());
			
			return true;
		}
		return false;
	}

	@Override
	public boolean insert(DetailBean detailBean) {
		if(detailBean.getDetailId() == null) {
			this.getSession().save(detailBean);
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(DetailBean detailBean) {
		if(this.findByDetailId(detailBean.getDetailId()) != null) {
			this.getSession().delete(detailBean);
			
			return true;
		}
		return false;
	}
}
