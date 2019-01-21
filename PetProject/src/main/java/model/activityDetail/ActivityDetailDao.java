package model.activityDetail;

import java.util.List;


public interface ActivityDetailDao {
	public abstract ActivityDetailBean findByPrimaryKey(Integer activityid);
	
	public abstract ActivityDetailBean finddetail(Integer ActivityDetail);
	
	public abstract List<ActivityDetailBean> findAll();

	public abstract ActivityDetailBean create(ActivityDetailBean bean);

	public abstract boolean remove(Integer activityid);
}
