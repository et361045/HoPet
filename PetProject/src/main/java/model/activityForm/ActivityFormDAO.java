package model.activityForm;

import java.util.List;

public interface ActivityFormDAO {

	public abstract ActivityFormBean  findByPrimaryKey(Integer activityformid);
	
	public abstract List<ActivityFormBean> findAll();

	public abstract ActivityFormBean create(ActivityFormBean bean);

	public abstract ActivityFormBean update(Integer participate,String remarks,Integer mnumber, Integer activityformid);

	public abstract boolean remove(Integer activityid);

}
