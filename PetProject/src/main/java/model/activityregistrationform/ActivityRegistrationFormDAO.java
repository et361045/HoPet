package model.activityregistrationform;

import model.activityCommission.ActivityCommissionBean;
import model.member.MemberBean;

public interface ActivityRegistrationFormDAO {

	public abstract ActivityRegistrationFormBean  findByPrimaryKey(int  id);
	
	public abstract ActivityCommissionBean findactivityBean(Integer activityid);

	public abstract boolean update(ActivityRegistrationFormBean member);

	public abstract boolean insert(ActivityRegistrationFormBean member);

	public abstract boolean delete(ActivityRegistrationFormBean member);

}
