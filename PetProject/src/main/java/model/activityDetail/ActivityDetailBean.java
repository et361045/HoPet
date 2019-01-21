package model.activityDetail;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareForm.FostercareFormBean;


@Entity
@Table(name="ActivityDetail")
public class ActivityDetailBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer activitydetailid; //活動餐與者記錄編號 流水號
	private Integer activityid; //活動編號
	private Integer activityformid; //活動報名表流水號
	
	
	@Override
	public String toString() {
		return "ActivityDetailBean [activitydetailid=" + activitydetailid + ", activityid=" + activityid
				+ ", activityformid=" + activityformid + "]";
	}
	
	
	public Integer getActivitydetailid() {
		return activitydetailid;
	}

	public void setActivitydetailid(Integer activitydetailid) {
		this.activitydetailid = activitydetailid;
	}

	public Integer getActivityid() {
		return activityid;
	}

	public void setActivityid(Integer activityid) {
		this.activityid = activityid;
	}

	public Integer getActivityformid() {
		return activityformid;
	}

	public void setActivityformid(Integer activityformid) {
		this.activityformid = activityformid;
	}

}
