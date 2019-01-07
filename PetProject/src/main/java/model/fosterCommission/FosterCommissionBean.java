package model.fosterCommission;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fosterCommission")
public class FosterCommissionBean {
	@Id
	private Integer fosterCommissionId;
	private Integer owner;
	private String txt;
	private Integer petId;
	private String region;

	public Integer getFosterCommissionId() {
		return fosterCommissionId;
	}

	public void setFosterCommissionId(Integer fosterCommissionId) {
		this.fosterCommissionId = fosterCommissionId;
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

	public Integer getPetId() {
		return petId;
	}

	public void setPetId(Integer petId) {
		this.petId = petId;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	@Override
	public String toString() {
		return "FosterCommissionBean [fosterCommissionId=" + fosterCommissionId + ", owner=" + owner + ", txt=" + txt
				+ ", petId=" + petId + ", region=" + region + "]";
	}

}
