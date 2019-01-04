package model.fosterForm;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fosterForm")
public class FosterFormBean {
	@Id
	private Integer fosterFormId;
	private Integer fosterId;
	private Integer carer;

	public Integer getFosterFormId() {
		return fosterFormId;
	}

	public void setFosterFormId(Integer fosterFormId) {
		this.fosterFormId = fosterFormId;
	}

	public Integer getFosterId() {
		return fosterId;
	}

	public void setFosterId(Integer fosterId) {
		this.fosterId = fosterId;
	}

	public Integer getCarer() {
		return carer;
	}

	public void setCarer(Integer carer) {
		this.carer = carer;
	}

	@Override
	public String toString() {
		return "FosterFormBean [fosterFormId=" + fosterFormId + ", fosterId=" + fosterId + ", carer=" + carer + "]";
	}

}
