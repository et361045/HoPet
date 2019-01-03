package fostercaremodel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FostercareCommission")
public class fostercareBean {
	@Id
	private Integer FostercareCommissionid;
	private Integer owner;
	private String txt;
	private Integer petid;
	private String region;
	private Integer dday;
	private String size;
	private String Variety;
	
	public Integer getFostercareCommissionid() {
		return FostercareCommissionid;
	}
	public void setFostercareCommissionid(Integer fostercareCommissionid) {
		FostercareCommissionid = fostercareCommissionid;
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
		return Variety;
	}
	public void setVariety(String variety) {
		Variety = variety;
	}
	
	
	
}