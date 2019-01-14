package model.fosterDetail;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fosterdetail")
public class FosterDetailBean {
	@Id
	private Integer fosterDetailId;
	private Integer fosterCommissionId;
	private Integer fosterFormId;
	private Integer petId;
	private Integer owner;	
	private Integer carer;
	public Integer getFosterDetailId() {
		return fosterDetailId;
	}
	public void setFosterDetailId(Integer fosterDetailId) {
		this.fosterDetailId = fosterDetailId;
	}
	public Integer getFosterCommissionId() {
		return fosterCommissionId;
	}
	public void setFosterCommissionId(Integer fosterCommissionId) {
		this.fosterCommissionId = fosterCommissionId;
	}
	public Integer getFosterFormId() {
		return fosterFormId;
	}
	public void setFosterFormId(Integer fosterFormId) {
		this.fosterFormId = fosterFormId;
	}
	public Integer getPetId() {
		return petId;
	}
	public void setPetId(Integer petId) {
		this.petId = petId;
	}
	public Integer getOwner() {
		return owner;
	}
	public void setOwner(Integer owner) {
		this.owner = owner;
	}
	public Integer getCarer() {
		return carer;
	}
	public void setCarer(Integer carer) {
		this.carer = carer;
	}
	@Override
	public String toString() {
		return "FosterDetailBean [fosterDetailId=" + fosterDetailId + ", fosterCommissionId=" + fosterCommissionId
				+ ", fosterFormId=" + fosterFormId + ", petId=" + petId + ", owner=" + owner + ", carer=" + carer + "]";
	}

	

}
