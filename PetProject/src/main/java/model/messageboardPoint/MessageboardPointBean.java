package model.messageboardPoint;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MessageboardPoint")
public class MessageboardPointBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer competitionpointid;
	private Integer messageboardid;
	private Integer memberid;
	public Integer getCompetitionpointid() {
		return competitionpointid;
	}
	public void setCompetitionpointid(Integer competitionpointid) {
		this.competitionpointid = competitionpointid;
	}
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
	@Override
	public String toString() {
		return "MessageboardPointBean [competitionpointid=" + competitionpointid + ", messageboardid=" + messageboardid
				+ ", memberid=" + memberid + "]";
	}
	
}
