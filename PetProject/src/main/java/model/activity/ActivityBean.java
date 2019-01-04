package model.activity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Activity")
public class ActivityBean {
	@Id
	private Integer activityid;
	private Integer Activitymemberid;
	private String ActivityName;
	private String activities;
	private Integer Limit;
	private Integer Signup;
	private String Status;
	@Override
	public String toString() {
		return "ActivityBean [activityid=" + activityid + ", Activitymemberid=" + Activitymemberid + ", ActivityName="
				+ ActivityName + ", activities=" + activities + ", Limit=" + Limit + ", Signup=" + Signup + ", Status="
				+ Status + "]";
	}
	public Integer getActivityid() {
		return activityid;
	}
	public void setActivityid(Integer activityid) {
		this.activityid = activityid;
	}
	public Integer getActivitymemberid() {
		return Activitymemberid;
	}
	public void setActivitymemberid(Integer activitymemberid) {
		Activitymemberid = activitymemberid;
	}
	public String getActivityName() {
		return ActivityName;
	}
	public void setActivityName(String activityName) {
		ActivityName = activityName;
	}
	public String getActivities() {
		return activities;
	}
	public void setActivities(String activities) {
		this.activities = activities;
	}
	public Integer getLimit() {
		return Limit;
	}
	public void setLimit(Integer limit) {
		Limit = limit;
	}
	public Integer getSignup() {
		return Signup;
	}
	public void setSignup(Integer signup) {
		Signup = signup;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}



}
