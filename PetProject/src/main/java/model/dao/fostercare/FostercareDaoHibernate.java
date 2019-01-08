package model.dao.fostercare;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fostercare.FostercareAllBean;
import model.fostercare.FostercareDao;
import model.fostercareCommission.FostercareBean;
@Repository
public class FostercareDaoHibernate implements FostercareDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public FostercareDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 
	

	@Override
	public FostercareAllBean findByPrimaryKey(Integer fostercareid) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(FostercareAllBean.class, fostercareid);
	}
	@Override
	public List<FostercareAllBean> findAll() {
		//取得product table的所有資料
	
		List<FostercareAllBean> result = this.getSession().createQuery("from FostercareAllBean", FostercareAllBean.class).list();
		return result;
	}
	@Override
	public FostercareAllBean create(FostercareAllBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
			FostercareAllBean temp = this.getSession().get(FostercareAllBean.class, bean.getFostercareid());
			if(temp==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public boolean remove(Integer fostercareid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		FostercareAllBean temp = this.getSession().get(FostercareAllBean.class, fostercareid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}
}
