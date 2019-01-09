package model.addFriend;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AddFriend")
public class AddFriendBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer addFriendid;
	private String addedFriend;
	private String addFriend;
	private Integer agree;
	private String status;
	public Integer getAddFriendid() {
		return addFriendid;
	}
	public void setAddFriendid(Integer addFriendid) {
		this.addFriendid = addFriendid;
	}
	public String getAddedFriend() {
		return addedFriend;
	}
	public void setAddedFriend(String addedFriend) {
		this.addedFriend = addedFriend;
	}
	public String getAddFriend() {
		return addFriend;
	}
	public void setAddFriend(String addFriend) {
		this.addFriend = addFriend;
	}
	public Integer getAgree() {
		return agree;
	}
	public void setAgree(Integer agree) {
		this.agree = agree;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "AddFriendBean [addFriendid=" + addFriendid + ", addedFriend=" + addedFriend + ", addFriend=" + addFriend
				+ ", agree=" + agree + ", status=" + status + "]";
	}
	
}
