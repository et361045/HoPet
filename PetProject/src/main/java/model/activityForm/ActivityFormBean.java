package model.activityForm;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ActivityForm")
public class ActivityFormBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer activityformid; //活動報名表流水號
	private Integer participate;	//活動報名表填寫人會員id
	private String remarks;			//備註
	private Integer activityid;		//活動編號
	private Integer mnumber;		//參加人數
	@Override
	public String toString() {
		return "ActivityFormBean [activityformid=" + activityformid + ", participate=" + participate + ", remarks="
				+ remarks + ", activityid=" + activityid + ", mnumber=" + mnumber + "]";
	}
	public Integer getActivityformid() {
		return activityformid;
	}
	public void setActivityformid(Integer activityformid) {
		this.activityformid = activityformid;
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
