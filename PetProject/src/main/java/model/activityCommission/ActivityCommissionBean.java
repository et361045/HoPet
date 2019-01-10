package model.activityCommission;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Activity")
public class ActivityCommissionBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer activityid; //活動編號流水號
	private Integer activitymemberid; //活動發起人 會員編號
	private String activityname; //活動名稱
	private String activities; //活動內容
	private Integer limit; //限制人數
	private Integer signup; //報名人數
	private String status; //狀態
	 
	@Override
	public String toString() {
		return "ActivityCommissionBean [activityid=" + activityid + ", activitymemberid=" + activitymemberid
				+ ", activityname=" + activityname + ", activities=" + activities + ", limit=" + limit + ", signup="
				+ signup + ", status=" + status + "]";
	}

	public Integer getActivityid() {
		return activityid;
	}

	public void setActivityid(Integer activityid) {
		this.activityid = activityid;
	}

	public Integer getActivitymemberid() {
		return activitymemberid;
	}

	public void setActivitymemberid(Integer activitymemberid) {
		this.activitymemberid = activitymemberid;
	}

	public String getActivityname() {
		return activityname;
	}

	public void setActivityname(String activityname) {
		this.activityname = activityname;
	}

	public String getActivities() {
		return activities;
	}

	public void setActivities(String activities) {
		this.activities = activities;
	}

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public Integer getSignup() {
		return signup;
	}

	public void setSignup(Integer signup) {
		this.signup = signup;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
