package model.fostercareCommission;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;


public class PetDetailBean {
	
	private String memberName;
	private String petName;
	private String variety;
	private String area;
	private Integer age;
	private String vaccine;
	private String picture;
	private String reason;
	private String remark;
	private Date starttime;
	private Date endtime;

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getVariety() {
		return variety;
	}

	public void setVariety(String variety) {
		this.variety = variety;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getVaccine() {
		return vaccine;
	}

	public void setVaccine(String vaccine) {
		this.vaccine = vaccine;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "PetDetailBean [memberName=" + memberName + ", petName=" + petName + ", variety=" + variety + ", area="
				+ area + ", age=" + age + ", vaccine=" + vaccine + ", picture=" + picture + ", reason=" + reason
				+ ", remark=" + remark + ", starttime=" + starttime + ", endtime=" + endtime + "]";
	}

	
}
