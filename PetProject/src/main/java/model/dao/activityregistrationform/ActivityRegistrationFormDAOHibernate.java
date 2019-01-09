package model.dao.activityregistrationform;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.activity.ActivityBean;
import model.activityregistrationform.ActivityRegistrationFormBean;
import model.activityregistrationform.ActivityRegistrationFormDAO;


@Repository
public class ActivityRegistrationFormDAOHibernate implements ActivityRegistrationFormDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
		
	}
	
	
	@Override
	public ActivityRegistrationFormBean findByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActivityBean findactivityBean(Integer activityid) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	@Override
	public boolean update(ActivityRegistrationFormBean member) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(ActivityRegistrationFormBean member) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(ActivityRegistrationFormBean member) {
		// TODO Auto-generated method stub
		return false;
	}

}
