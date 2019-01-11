package model.dao.fostercareDetail;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fostercaredetail.FostercareDetailBean;
import model.fostercaredetail.FostercareDetailDao;
@Repository
public class FostercareDetailDaoHibernate implements FostercareDetailDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public FostercareDetailDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 
	

	@Override
	public FostercareDetailBean findByPrimaryKey(Integer fostercareCommissionid) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(FostercareDetailBean.class, fostercareCommissionid);
	}
	@Override
	public List<FostercareDetailBean> findAll() {
		//取得product table的所有資料
	
		List<FostercareDetailBean> result = this.getSession().createQuery("from FostercareBean", FostercareDetailBean.class).list();
		return result;
	}
	@Override
	public FostercareDetailBean create(FostercareDetailBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
//			FostercareBean temp = this.getSession().get(FostercareBean.class, bean.getFostercareid());
//			if(temp==null) {
				this.getSession().save(bean);
				return bean;
//			}
		}
		return null;
	}

	@Override
	public boolean remove(Integer fostercareCommissionid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		FostercareDetailBean temp = this.getSession().get(FostercareDetailBean.class, fostercareCommissionid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}


	@Override
	public FostercareDetailBean finddetail(Integer fostercaredetail) {
		// TODO Auto-generated method stub
		return null;
	}
}
