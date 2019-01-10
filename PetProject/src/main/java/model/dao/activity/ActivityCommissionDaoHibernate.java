package model.dao.activity;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.activityCommission.ActivityCommissionBean;
import model.activityCommission.ActivityCommissionDAO;

@Repository
public class ActivityCommissionDaoHibernate implements ActivityCommissionDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public ActivityCommissionDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Override
	public ActivityCommissionBean findByPrimaryKey(Integer petid) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(ActivityCommissionBean.class, petid);
	}
	@Override
	public List<ActivityCommissionBean> findAll() {
		//取得product table的所有資料
	
		List<ActivityCommissionBean> result = this.getSession().createQuery("from ActivityCommissionBean", ActivityCommissionBean.class).list();
		return result;
	}
	@Override
	public ActivityCommissionBean create(ActivityCommissionBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
			ActivityCommissionBean temp = this.getSession().get(ActivityCommissionBean.class, bean.getActivitymemberid());
			if(temp==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public ActivityCommissionBean update(String activityname, String activities,Integer limit, Integer signup, String status,Integer activitymemberid) {
		//利用id作為primary key修改product table資料
		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
		//id不存在=>修改失敗、傳回null
		
		ActivityCommissionBean temp = this.getSession().get(ActivityCommissionBean.class, activitymemberid);
		if(temp!=null) {	
			temp.setActivityname(activityname);
			temp.setActivities(activities);
			temp.setLimit(limit);
			temp.setSignup(signup);
			temp.setStatus(status);
			temp.setActivitymemberid(activitymemberid);
			return temp;
		}
		
		return null;
	}
	@Override
	public boolean remove(Integer petid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		ActivityCommissionBean temp = this.getSession().get(ActivityCommissionBean.class, petid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}
	
	
}
