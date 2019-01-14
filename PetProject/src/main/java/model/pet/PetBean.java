package model.pet;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Pet")
public class PetBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer petId;
	private String petPicture;
	private String petName;
	private Integer memberid;
	private String petSize;
	private String petVariety;
	private Integer age;
	private String petRemarks;
	private String vaccine;
	private String wafer;
	private Integer owner;
	public Integer getPetId() {
		return petId;
	}
	public void setPetId(Integer petId) {
		this.petId = petId;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public String getPetSize() {
		return petSize;
	}
	public void setPetSize(String petSize) {
		this.petSize = petSize;
	}
	public String getPetVariety() {
		return petVariety;
	}
	public void setPetVariety(String petVariety) {
		this.petVariety = petVariety;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getPetRemarks() {
		return petRemarks;
	}
	public void setPetRemarks(String petRemarks) {
		this.petRemarks = petRemarks;
	}
	public String getVaccine() {
		return vaccine;
	}
	public void setVaccine(String vaccine) {
		this.vaccine = vaccine;
	}
	public String getWafer() {
		return wafer;
	}
	public void setWafer(String wafer) {
		this.wafer = wafer;
	}
	public Integer getOwner() {
		return owner;
	}
	public void setOwner(Integer owner) {
		this.owner = owner;
	}
	
	public String getPetPicture() {
		return petPicture;
	}
	public void setPetPicture(String petPicture) {
		this.petPicture = petPicture;
	}
	@Override
	public String toString() {
		return "PetBean [petId=" + petId + ", petPicture=" + petPicture + ", petName=" + petName + ", memberid="
				+ memberid + ", petSize=" + petSize + ", petVariety=" + petVariety + ", age=" + age + ", petRemarks="
				+ petRemarks + ", vaccine=" + vaccine + ", wafer=" + wafer + ", owner=" + owner + "]";
	}
	
}
