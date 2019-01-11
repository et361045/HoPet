package model.fostercaredetail;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareForm.FostercareFormBean;


@Entity
@Table(name="fostercaredetail")
public class FostercareDetailBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fostercaredetail;
	private Integer fostercareCommissionid;
	private Integer fostercareFormid;
	private Integer petid;
	private Integer owner;
	private Integer carer;
	public Integer getFostercaredetail() {
		return fostercaredetail;
	}
	public void setFostercaredetail(Integer fostercaredetail) {
		this.fostercaredetail = fostercaredetail;
	}
	public Integer getFostercareCommissionid() {
		return fostercareCommissionid;
	}
	public void setFostercareCommissionid(Integer fostercareCommissionid) {
		this.fostercareCommissionid = fostercareCommissionid;
	}
	public Integer getFostercareFormid() {
		return fostercareFormid;
	}
	public void setFostercareFormid(Integer fostercareFormid) {
		this.fostercareFormid = fostercareFormid;
	}
	public Integer getPetid() {
		return petid;
	}
	public void setPetid(Integer petid) {
		this.petid = petid;
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
		return "FostercareDetailBean [fostercaredetail=" + fostercaredetail + ", fostercareCommissionid="
				+ fostercareCommissionid + ", fostercareFormid=" + fostercareFormid + ", petid=" + petid + ", owner="
				+ owner + ", carer=" + carer + "]";
	}
	
//@ManyToOne
//@JoinColumn(
//		name="fostercareFormid",
//		referencedColumnName="fostercareFormid",
//		insertable=false  , updatable=false
//		)
//		
//	private FostercareFormBean  fostercareFormBean;
//	
//@ManyToOne
//@JoinColumn(
//		name="fostercareCommissionid",
//		referencedColumnName="fostercareCommissionid",
//		insertable=false  , updatable=false
//		)
//		
//	private FostercareCommissionBean  fostercareCommissionBean;	

}
