package model.activityCommission;

import java.util.List;


public interface ActivityCommissionDAO {
	public abstract ActivityCommissionBean findByPrimaryKey(Integer Activitymemberid);

	public abstract List<ActivityCommissionBean> findAll();

	public abstract ActivityCommissionBean create(ActivityCommissionBean bean);

	public abstract ActivityCommissionBean update(String activityname, String activities, Integer limit, Integer signup, String status, Integer Activitymemberid);

	public abstract boolean remove(Integer Activitymemberid);
	
	
}
