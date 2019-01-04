package model.dao.activity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.activity.ActivityBean;
import model.activity.ActivityDAO;
import model.member.MemberBean;

@Repository
public class ActivityDAOHibernate implements ActivityDAO {
		@Autowired
		private SessionFactory sessionFactory;
		
		public Session getSession() {
			return this.sessionFactory.getCurrentSession();
		}
		
		
	@Override
	public Integer findactivityid(String ActivityName) {
		// TODO Auto-generated method stub
		Query<ActivityBean> query = this.getSession().createQuery("From ActivityBean where ActivityName='"+ActivityName+"'");
		ActivityBean activtiy = query.uniqueResult();
		return activtiy.getActivitymemberid();
	}

	@Override
	public ActivityBean findActivityBean(int activityid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActivityBean findActivityBean(String ActivityName) {
		Query<ActivityBean> query = this.getSession().createQuery("From ActivityBean where ActivityName="+ActivityName);
		ActivityBean activity = query.uniqueResult();
		return activity;
		
	}

	@Override
	public boolean update(ActivityBean Activtiy) {
		if(Activtiy.getActivityid()!=null) {
			ActivityBean result = this.getSession().get(ActivityBean.class, Activtiy.getActivityid());
			result.setActivityName(Activtiy.getActivityName());
			result.setLimit(Activtiy.getLimit());
			result.setSignup(Activtiy.getSignup());
			return true;
		}
			return false;
		
	}

	@Override
	public boolean insert(ActivityBean Activtiy) {
		if(this.findActivityBean(Activtiy.getActivityName())==null) {
			this.getSession().save(Activtiy);
			return true;
		}
		
		return false;
	}

	@Override
	public boolean delete(ActivityBean Activtiy) {
		if(this.findActivityBean(Activtiy.getActivitymemberid())!=null) {
			this.getSession().delete(Activtiy);
			return true;
		}
		return false;
	}

}
