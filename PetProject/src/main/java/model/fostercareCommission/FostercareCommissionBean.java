package model.fostercareCommission;

import java.sql.Date;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import model.fostercareForm.FostercareFormBean;

@Entity
@Table(name="FostercareCommission")
public class FostercareCommissionBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fostercareCommissionid;
	private String name;
	private String variety;
	private String area;
	private Date starttime;
	private Date endtime;
	private Integer owner;
	private String reason;
	private String picture;
	private String remark;
	private Integer petid;
	public Integer getFostercareCommissionid() {
		return fostercareCommissionid;
	}
	public void setFostercareCommissionid(Integer fostercareCommissionid) {
		this.fostercareCommissionid = fostercareCommissionid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Integer getOwner() {
		return owner;
	}
	public void setOwner(Integer owner) {
		this.owner = owner;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getPetid() {
		return petid;
	}
	public void setPetid(Integer petid) {
		this.petid = petid;
	}
	@Override
	public String toString() {
		return "FostercareCommissionBean [fostercareCommissionid=" + fostercareCommissionid + ", name=" + name
				+ ", variety=" + variety + ", area=" + area + ", starttime=" + starttime + ", endtime=" + endtime
				+ ", owner=" + owner + ", reason=" + reason + ", picture=" + picture + ", remark=" + remark + ", petid="
				+ petid + "]";
	}

	
}