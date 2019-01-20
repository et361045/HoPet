package model.activityCommission;

import java.util.List;



public interface ActivityCommissionDAO {
	public abstract ActivityCommissionBean findByPrimaryKey(Integer activityid);

	public abstract ActivityCommissionBean findById(Integer activitymemberid);
	
	public abstract List<ActivityCommissionBean> findAll();

	public abstract ActivityCommissionBean create(ActivityCommissionBean bean);

	public abstract ActivityCommissionBean update(String activityname, String activites, Integer limit, Integer signup,String address,Integer phone, String status, Integer Activitymemberid);

	public abstract boolean remove(Integer Activitymemberid);
	
	
}
