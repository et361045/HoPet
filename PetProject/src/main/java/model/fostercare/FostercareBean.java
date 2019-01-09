package model.fostercare;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Fostercare")
public class FostercareBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fostercareid;
	private Integer fostercareCommissionid;
	private Integer fostercareFormid;
	private Integer owner;
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
		return "FostercareAllBean [fostercareid=" + fostercareid + ", fostercareCommissionid=" + fostercareCommissionid
				+ ", fostercareFormid=" + fostercareFormid + ", owner=" + owner + "]";
	}
	
}
