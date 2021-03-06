package model.member;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="member")
public class MemberBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer memberId;
	private String email;
	private String psw;
	private String memberName;
	private String address;
	private String memberPhone;
	@GeneratedValue(strategy=GenerationType.TABLE)
	private String memberPermission;
	private String point;
	private String checkSuccess;
	private java.util.Date punishDay;
	private String memberPicture;

	@Override
	public String toString() {
		return "MemberBean [memberId=" + memberId + ", email=" + email + ", psw=" + psw + ", memberName=" + memberName
				+ ", address=" + address + ", memberPhone=" + memberPhone + ", memberPermission=" + memberPermission
				+ ", point=" + point + ", checkSuccess=" + checkSuccess + ", punishDay=" + punishDay
				+ ", memberPicture=" + memberPicture + "]";
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
	public String getMemberPicture() {
		return memberPicture;
	}
	public void setMemberPicture(String memberPicture) {
		this.memberPicture = memberPicture;
	}
	
	
}
