package model.activityregistrationform;

import model.activity.ActivityBean;
import model.member.MemberBean;

public interface ActivityRegistrationFormDAO {

	public abstract ActivityRegistrationFormBean  findbypk(int  id);
	
	public abstract ActivityBean findactivityBean(Integer activityid);

	public abstract boolean update(ActivityRegistrationFormBean member);

	public abstract boolean insert(ActivityRegistrationFormBean member);

	public abstract boolean delete(ActivityRegistrationFormBean member);

}
