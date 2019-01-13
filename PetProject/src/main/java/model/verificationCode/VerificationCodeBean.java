package model.verificationCode;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="VerificationCode")
public class VerificationCodeBean {
	@Id
	private Integer memberId;
	private String randomverificationcode;
	public Integer getMemberId() {
		return memberId;
	}
	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	public String getRandomverificationcode() {
		return randomverificationcode;
	}
	public void setRandomverificationcode(String randomverificationcode) {
		this.randomverificationcode = randomverificationcode;
	}
	@Override
	public String toString() {
		return "VerificationCodeBean [memberId=" + memberId + ", randomverificationcode=" + randomverificationcode
				+ "]";
	}
	
}
