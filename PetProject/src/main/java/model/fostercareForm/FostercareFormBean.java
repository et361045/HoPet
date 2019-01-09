package model.fostercareForm;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;



@Entity
@Table(name="FostercareForm")
public class FostercareFormBean {
		
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fostercareFormid;
	private Integer fostercareCommissionid;
	private Integer carer;
	private String status;
	
	public Integer getFostercareFormid() {
		return fostercareFormid;
	}
	public void setFostercareFormid(Integer fostercareFormid) {
		this.fostercareFormid = fostercareFormid;
	}
	public Integer getFostercareCommissionid() {
		return fostercareCommissionid;
	}
	public void setFostercareCommissionid(Integer fostercareCommissionid) {
		this.fostercareCommissionid = fostercareCommissionid;
	}
	public Integer getCarer() {
		return carer;
	}
	public void setCarer(Integer carer) {
		this.carer = carer;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

	@Override
	public String toString() {
		return "FostercareFormBean [fostercareFormid="
				+ fostercareFormid + ", fostercareCommissionid=" + fostercareCommissionid + ", carer=" + carer
				+ ", status=" + status + "]";
	}
	
	
}
