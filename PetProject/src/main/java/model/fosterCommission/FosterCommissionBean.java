package model.fosterCommission;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fosterCommission")
public class FosterCommissionBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fosterCommissionId;
	private String name;
	private String variety;
	private String area;
	private Integer owner;
	private String reason;
	private String picture;
	private String remark;
	private Integer petId;
	public Integer getFosterCommissionId() {
		return fosterCommissionId;
	}
	public void setFosterCommissionId(Integer fosterCommissionId) {
		this.fosterCommissionId = fosterCommissionId;
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
	public Integer getPetId() {
		return petId;
	}
	public void setPetId(Integer petId) {
		this.petId = petId;
	}
	@Override
	public String toString() {
		return "FosterCommissionBean [fosterCommissionId=" + fosterCommissionId + ", name=" + name + ", variety="
				+ variety + ", area=" + area + ", owner=" + owner + ", reason=" + reason + ", picture=" + picture
				+ ", remark=" + remark + ", petId=" + petId + "]";
	}

	
	
}
