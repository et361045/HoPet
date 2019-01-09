package model.privatemessage;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Privatemessage")
public class PrivatemessageBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer privatemessageid;
	private String message;
	private String tomessage;
	private String frommessage;
	private Date privatemessagetime;
	private String status;
	public Integer getPrivatemessageid() {
		return privatemessageid;
	}
	public void setPrivatemessageid(Integer privatemessageid) {
		this.privatemessageid = privatemessageid;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTomessage() {
		return tomessage;
	}
	public void setTomessage(String tomessage) {
		this.tomessage = tomessage;
	}
	public String getFrommessage() {
		return frommessage;
	}
	public void setFrommessage(String frommessage) {
		this.frommessage = frommessage;
	}
	
	public Date getPrivatemessagetime() {
		return privatemessagetime;
	}
	public void setPrivatemessagetime(Date privatemessagetime) {
		this.privatemessagetime = privatemessagetime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "PrivatemessageBean [privatemessageid=" + privatemessageid + ", message=" + message + ", tomessage="
				+ tomessage + ", frommessage=" + frommessage + ", privatemessagetime=" + privatemessagetime
				+ ", status=" + status + "]";
	}
	
}
