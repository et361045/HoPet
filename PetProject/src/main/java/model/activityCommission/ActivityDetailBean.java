package model.activityCommission;

public class ActivityDetailBean {
	private Integer activityid; //活動編號
	private String memberName;  //會員名稱
	private String activityname; //活動名稱	
	private String activites; //活動內容
	private Integer limit; //限制人數
	private Integer phone; //聯話電話
	private String address; //活動地址
	@Override
	public String toString() {
		return "ActivityDetailBean [activityid=" + activityid + ", memberName=" + memberName + ", activityname="
				+ activityname + ", activites=" + activites + ", limit=" + limit + ", phone=" + phone + ", address="
				+ address + "]";
	}
	public Integer getActivityid() {
		return activityid;
	}
	public void setActivityid(Integer activityid) {
		this.activityid = activityid;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getActivityname() {
		return activityname;
	}
	public void setActivityname(String activityname) {
		this.activityname = activityname;
	}
	public String getActivites() {
		return activites;
	}
	public void setActivites(String activites) {
		this.activites = activites;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
