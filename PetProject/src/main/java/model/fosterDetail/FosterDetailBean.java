package model.foster;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "foster")
public class FosterBean {
	@Id
	private Integer fosterId;
	private Integer fosterCommissionId;
	private Integer fosterFormId;
	private Integer owner;
	private Integer carer;

	@Override
	public String toString() {
		return "FosterBean [fosterId=" + fosterId + ", fosterCommissionId=" + fosterCommissionId + ", fosterFormId="
				+ fosterFormId + ", owner=" + owner + ", carer=" + carer + "]";
	}

	public Integer getFosterId() {
		return fosterId;
	}

	public void setFosterId(Integer fosterId) {
		this.fosterId = fosterId;
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

}
