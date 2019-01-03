package hospitalmodel.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hospitalmodel.hospitalBean;
import hospitalmodel.hospitalDAO;
@Repository
public class hospitalDAOHibernate implements hospitalDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public hospitalDAOHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 

	@Override
	public hospitalBean findLatitudeKey(String Latitude) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(hospitalBean.class, Latitude);
	}
	@Override
	public List<hospitalBean> findAll() {
		//取得product table的所有資料
	
		List<hospitalBean> result = this.getSession().createQuery("from hospitalBean", hospitalBean.class).list();
		return result;
	}

}
