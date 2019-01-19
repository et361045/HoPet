package model.dao.activitydetail;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.activityDetail.ActivityDetailBean;
import model.activityDetail.ActivityDetailDao;
import model.fostercaredetail.FostercareDetailBean;

@Repository
public class ActivityDetailDaoHibernate implements ActivityDetailDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public ActivityDetailDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 
	

	@Override
	public ActivityDetailBean findByPrimaryKey(Integer activityid) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(ActivityDetailBean.class, activityid);
	}
	@Override
	public List<ActivityDetailBean> findAll() {
		//取得product table的所有資料
	
		List<ActivityDetailBean> result = this.getSession().createQuery("from ActivityDetailBean", ActivityDetailBean.class).list();
		return result;
	}
	@Override
	public ActivityDetailBean create(ActivityDetailBean bean) {
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
	public boolean remove(Integer activityid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		FostercareDetailBean temp = this.getSession().get(FostercareDetailBean.class, activityid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}


	@Override
	public ActivityDetailBean finddetail(Integer activitydetail) {
		// TODO Auto-generated method stub
		return null;
	}

}
