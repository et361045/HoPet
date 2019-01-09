package model.returnmessage;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="ReturnMessage")
public class ReturnMessageBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer returnmessageID;
	private Integer memberid;
	private Date messagetime;
	private String message;
	private Integer messageboardid;
	private Integer point;
	public Integer getReturnmessageID() {
		return returnmessageID;
	}
	public void setReturnmessageID(Integer returnmessageID) {
		this.returnmessageID = returnmessageID;
	}
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public Date getMessagetime() {
		return messagetime;
	}
	public void setMessagetime(Date messagetime) {
		this.messagetime = messagetime;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Integer getMessageboardid() {
		return messageboardid;
	}
	public void setMessageboardid(Integer messageboardid) {
		this.messageboardid = messageboardid;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "ReturnMessageBean [returnmessageID=" + returnmessageID + ", memberid=" + memberid + ", messagetime="
				+ messagetime + ", message=" + message + ", messageboardid=" + messageboardid + ", point=" + point
				+ "]";
	}
	
}
