package meber.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CUSTOMER")
public class MemberBean {
	@Id
	private Integer memberId;
	private String email;
	private String psw;
	private String memberName;
	private String address;
	private String memberPhone;
	private String memberPermission;
	private String point;
	private String checkSuccess;
	private java.util.Date punishDay;
	private Byte[] memberPicture;
	@Override
	public String toString() {
		return "model.CustomerBean ["+ memberId+ ","+ email+ ","+ psw+ "]";
	}
	public Integer getMemberId() {
		return memberId;
	}
	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberPermission() {
		return memberPermission;
	}
	public void setMemberPermission(String memberPermission) {
		this.memberPermission = memberPermission;
	}
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	public String getCheckSuccess() {
		return checkSuccess;
	}
	public void setCheckSuccess(String checkSuccess) {
		this.checkSuccess = checkSuccess;
	}
	public java.util.Date getPunishDay() {
		return punishDay;
	}
	public void setPunishDay(java.util.Date punishDay) {
		this.punishDay = punishDay;
	}
	public Byte[] getMemberPicture() {
		return memberPicture;
	}
	public void setMemberPicture(Byte[] memberPicture) {
		this.memberPicture = memberPicture;
	}
	
	
}
