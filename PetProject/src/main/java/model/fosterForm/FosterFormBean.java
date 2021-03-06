package model.fosterForm;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fosterForm")
public class FosterFormBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fosterFormId;
	private Integer fosterId;	
	private Integer owner;
	private Integer carer;
	private String carerName;
	private String petName;
	private Integer petId;
	private String status;
	private String age;
	private String job;
	private String salary;
	private String experience;
	private String pettime;
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
	public String getCarerName() {
		return carerName;
	}
	public void setCarerName(String carerName) {
		this.carerName = carerName;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public Integer getPetId() {
		return petId;
	}
	public void setPetId(Integer petId) {
		this.petId = petId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getPettime() {
		return pettime;
	}
	public void setPettime(String pettime) {
		this.pettime = pettime;
	}
	@Override
	public String toString() {
		return "FosterFormBean [fosterFormId=" + fosterFormId + ", fosterId=" + fosterId + ", owner=" + owner
				+ ", carer=" + carer + ", carerName=" + carerName + ", petName=" + petName + ", petId=" + petId
				+ ", status=" + status + ", age=" + age + ", job=" + job + ", salary=" + salary + ", experience="
				+ experience + ", pettime=" + pettime + "]";
	}
	
	

}
