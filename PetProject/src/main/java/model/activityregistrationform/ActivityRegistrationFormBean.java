package model.activityregistrationform;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ActivityRegistrationForm")
public class ActivityRegistrationFormBean {
	
	@Id
	private Integer activityregistrationformid;
	private Integer participate;
	private String remarks;
	private Integer activityid;
	private Integer mnumber;
	
	
	@Override
	public String toString() {
		return "ActivityformBean [activityregistrationformid=" + activityregistrationformid + ", participate="
				+ participate + ", remarks=" + remarks + ", activityid=" + activityid + ", mnumber=" + mnumber + "]";
	}


	public Integer getActivityregistrationformid() {
		return activityregistrationformid;
	}


	public void setActivityregistrationformid(Integer activityregistrationformid) {
		this.activityregistrationformid = activityregistrationformid;
	}


	public Integer getParticipate() {
		return participate;
	}


	public void setParticipate(Integer participate) {
		this.participate = participate;
	}


	public String getRemarks() {
		return remarks;
	}


	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}


	public Integer getActivityid() {
		return activityid;
	}


	public void setActivityid(Integer activityid) {
		this.activityid = activityid;
	}


	public Integer getMnumber() {
		return mnumber;
	}


	public void setMnumber(Integer mnumber) {
		this.mnumber = mnumber;
	}
	
	
	
	
}
