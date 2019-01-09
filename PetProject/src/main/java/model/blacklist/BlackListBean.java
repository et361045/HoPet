package model.blacklist;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="BlackList")
public class BlackListBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer blacklistid;
	private Integer memberid;
	private String remarks;
	private Date dayy;
	private Integer prohibited;
	public Integer getBlacklistid() {
		return blacklistid;
	}
	public void setBlacklistid(Integer blacklistid) {
		this.blacklistid = blacklistid;
	}
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Date getDayy() {
		return dayy;
	}
	public void setDayy(Date dayy) {
		this.dayy = dayy;
	}
	public Integer getProhibited() {
		return prohibited;
	}
	public void setProhibited(Integer prohibited) {
		this.prohibited = prohibited;
	}
	@Override
	public String toString() {
		return "BlackListBean [blacklistid=" + blacklistid + ", memberid=" + memberid + ", remarks=" + remarks
				+ ", dayy=" + dayy + ", prohibited=" + prohibited + "]";
	}
	
}
