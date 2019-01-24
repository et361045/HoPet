package model.fosterDetail;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fosterdetail")
public class FosterDetailBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer fosterDetailId;
	private Integer petId;
	private Integer owner;
	private Integer carer;
	private String petname;
	private String ownername;
	private String carername;

	public Integer getFosterDetailId() {
		return fosterDetailId;
	}

	public void setFosterDetailId(Integer fosterDetailId) {
		this.fosterDetailId = fosterDetailId;
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

	public String getPetname() {
		return petname;
	}

	public void setPetname(String petname) {
		this.petname = petname;
	}

	public String getOwnername() {
		return ownername;
	}

	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}

	public String getCarername() {
		return carername;
	}

	public void setCarername(String carername) {
		this.carername = carername;
	}

	@Override
	public String toString() {
		return "FosterDetailBean [fosterDetailId=" + fosterDetailId + ", petId=" + petId + ", owner=" + owner
				+ ", carer=" + carer + ", petname=" + petname + ", ownername=" + ownername + ", carername=" + carername
				+ "]";
	}

}
