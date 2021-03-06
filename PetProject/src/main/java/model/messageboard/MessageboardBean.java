package model.messageboard;

import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl;

import model.member.MemberBean;
import model.returnmessage.ReturnMessageBean;
@Entity
@Table(name="Messageboard")
public class MessageboardBean {
	
	@OneToMany(
			mappedBy="messageboardid",
			cascade= {
					CascadeType.REMOVE
			}
			)
	private Set<ReturnMessageBean> returnMessageBeans;
	
	
	@ManyToOne
	@JoinColumn(
			name="memberId",
			referencedColumnName="memberId",
			insertable =false,updatable = false
			)
	private MemberBean memberbean;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer messageboardid;
	private Integer memberid;
	private Date messagetime;
	private String title;
	private String message;
	private String permission;
	private Integer totlepoint;
	
	
	public Integer getMessageboardid() {
		return messageboardid;
	}
	public void setMessageboardid(Integer messageboardid) {
		this.messageboardid = messageboardid;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public Integer getTotlepoint() {
		return totlepoint;
	}
	public void setTotlepoint(Integer totlepoint) {
		this.totlepoint = totlepoint;
	}
	
	
	
	public MemberBean getMemberbean() {
		return memberbean;
	}
	public void setMemberbean(MemberBean memberbean) {
		this.memberbean = memberbean;
	}
	
	
	
	public Set<ReturnMessageBean> getReturnMessageBeans() {
		return returnMessageBeans;
	}
	public void setReturnMessageBeans(Set<ReturnMessageBean> returnMessageBeans) {
		this.returnMessageBeans = returnMessageBeans;
	}
	@Override
	public String toString() {
		return "MessageboardBean [returnMessageBeans=" + returnMessageBeans + ", memberbean=" + memberbean
				+ ", messageboardid=" + messageboardid + ", memberid=" + memberid + ", messagetime=" + messagetime
				+ ", title=" + title + ", message=" + message + ", permission=" + permission + ", totlepoint="
				+ totlepoint + "]";
	}
	
}
