package model.dao.activityform;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.activityForm.ActivityFormBean;
import model.activityForm.ActivityFormDAO;

@Repository
public class ActivityFormDAOHibernate implements ActivityFormDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public ActivityFormDAOHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Override
	public ActivityFormBean findByPrimaryKey(Integer activityformid) {
		// TODO Auto-generated method stub
		return this.getSession().get(ActivityFormBean.class, activityformid);
	}

	@Override
	public List<ActivityFormBean> findAll() {
		//取得product table的所有資料
	
		List<ActivityFormBean> result = this.getSession().createQuery("from ActivityFormBean", ActivityFormBean.class).list();
		return result;
	}
	@Override
	public ActivityFormBean create(ActivityFormBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
				this.getSession().save(bean);
				return bean;
		}
			return null;}
//	bean.getParticipate(), bean.getRemarks(),bean.getMnumber(),bean.getActivityformid()
	
	@Override
	public ActivityFormBean update(Integer participate, String remarks, Integer mumber, Integer activityid) 
	{
		//利用id作為primary key修改product table資料
		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
		//id不存在=>修改失敗、傳回null
		
		ActivityFormBean temp = this.getSession().get(ActivityFormBean.class, activityid);
		if(temp!=null) {	
			temp.setParticipate(participate);
			temp.setRemarks(remarks);
			temp.setActivityid(activityid);
			return temp;
		}
		
		return null;
	}
	@Override
	public boolean remove(Integer activityid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		ActivityFormBean temp = this.getSession().get(ActivityFormBean.class, activityid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}

}
