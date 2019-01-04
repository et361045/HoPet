package model.fostercare;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FostercareCommission")
public class FostercareBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fostercareCommissionid;
	private Integer owner;
	private String txt;
	private Integer petid;
	private String region;
	private Integer dday;
	private String size;
	private String variety;
	
	@Override
	public String toString() {
		return "fostercareBean [fostercareCommissionid=" + fostercareCommissionid + ", owner=" + owner + ", txt=" + txt
				+ ", petid=" + petid + ", region=" + region + ", dday=" + dday + ", size=" + size + ", Variety="
				+ variety + "]";
	}
	
	public Integer getFostercareCommissionid() {
		return fostercareCommissionid;
	}
	public void setFostercareCommissionid(Integer fostercareCommissionid) {
		this.fostercareCommissionid = fostercareCommissionid;
	}
	public Integer getOwner() {
		return owner;
	}
	public void setOwner(Integer owner) {
		this.owner = owner;
	}
	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		this.txt = txt;
	}
	public Integer getPetid() {
		return petid;
	}
	public void setPetid(Integer petid) {
		this.petid = petid;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public Integer getDday() {
		return dday;
	}
	public void setDday(Integer dday) {
		this.dday = dday;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}

	public String getVariety() {
		return variety;
	}

	public void setVariety(String variety) {
		this.variety = variety;
	}
	
}