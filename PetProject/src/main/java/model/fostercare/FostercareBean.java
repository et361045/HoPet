package model.fostercare;

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
@Table(name="Fostercare")
public class FostercareBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fostercareid;
	private Integer fostercareCommissionid;
	private Integer fostercareFormid;
	private Integer owner;
	
@ManyToOne
@JoinColumn(
		name="fostercareFormid",
		referencedColumnName="fostercareFormid",
		insertable=false  , updatable=false
		)
		
	private FostercareFormBean  fostercareFormBean;
	
@ManyToOne
@JoinColumn(
		name="fostercareCommissionid",
		referencedColumnName="fostercareCommissionid",
		insertable=false  , updatable=false
		)
		
	private FostercareCommissionBean  fostercareCommissionBean;	




public FostercareFormBean getFostercareFormBean() {
	return fostercareFormBean;
}
public void setFostercareFormBean(FostercareFormBean fostercareFormBean) {
	this.fostercareFormBean = fostercareFormBean;
}
public FostercareCommissionBean getFostercareCommissionBean() {
	return fostercareCommissionBean;
}
public void setFostercareCommissionBean(FostercareCommissionBean fostercareCommissionBean) {
	this.fostercareCommissionBean = fostercareCommissionBean;
}
public Integer getFostercareid() {
		return fostercareid;
	}
	public void setFostercareid(Integer fostercareid) {
		this.fostercareid = fostercareid;
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
	public Integer getOwner() {
		return owner;
	}
	public void setOwner(Integer owner) {
		this.owner = owner;
	}
	@Override
	public String toString() {
		return "FostercareBean [fostercareid=" + fostercareid + ", fostercareCommissionid=" + fostercareCommissionid
				+ ", fostercareFormid=" + fostercareFormid + ", owner=" + owner + ", fostercareFormBean="
				+ fostercareFormBean + ", fostercareCommissionBean=" + fostercareCommissionBean + "]";
	}
	
}
