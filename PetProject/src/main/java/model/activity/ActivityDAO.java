package model.activity;

public interface ActivityDAO {
	public abstract Integer findactivityid(String activityName);
	public abstract ActivityBean findActivityBean(int activityMemberid);
	public abstract ActivityBean findActivityBean(String activityName);
	public abstract boolean update(ActivityBean activtiy);
	public abstract boolean insert(ActivityBean activtiy);
	public abstract boolean delete(ActivityBean activtiy);

}
