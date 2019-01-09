package model.businessInformation;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="BusinessInformation")
public class BusinessInformationBean {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer businessId;         //商家標號流水號
	@Column(name ="PointNumber")
	private Integer pointnumber;		//評分人數
	private String externalname;		//對外名稱
	private String companyname;			//公司名稱
	private String idname;				//負責人
	private String businessproject;		//營業項目
	private String businessPhone;		//電話
	private String region;				//行政區
	private String businessAddress;		//地址
	private Double businessScore;		//評分
	private String businessGooglemap;	//googlemap鑲嵌
	private String latitude;			//經緯度
	
	@Override
	public String toString() {
		return "BusinessInformationBean [businessId=" + businessId + ", pointnumber=" + pointnumber + ", externalname="
				+ externalname + ", companyname=" + companyname + ", idname=" + idname + ", businessproject="
				+ businessproject + ", businessPhone=" + businessPhone + ", region=" + region + ", businessAddress="
				+ businessAddress + ", businessScore=" + businessScore + ", businessGooglemap=" + businessGooglemap
				+ ", latitude=" + latitude + "]";
	}
	
	
	
	public Integer getBusinessId() {
		return businessId;
	}
	public void setBusinessId(Integer businessId) {
		this.businessId = businessId;
	}
	public Integer getPointNumber() {
		return pointnumber;
	}
	public void setPointNumber(Integer pointNumber) {
		pointnumber = pointNumber;
	}
	public String getExternalname() {
		return externalname;
	}
	public void setExternalname(String externalname) {
		this.externalname = externalname;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getIdname() {
		return idname;
	}
	public void setIdname(String idname) {
		this.idname = idname;
	}
	public String getBusinessproject() {
		return businessproject;
	}
	public void setBusinessproject(String businessproject) {
		this.businessproject = businessproject;
	}
	public String getBusinessPhone() {
		return businessPhone;
	}
	public void setBusinessPhone(String businessPhone) {
		this.businessPhone = businessPhone;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public Double getBusinessScore() {
		return businessScore;
	}
	public void setBusinessScore(Double businessScore) {
		this.businessScore = businessScore;
	}
	public String getBusinessGooglemap() {
		return businessGooglemap;
	}
	public void setBusinessGooglemap(String businessGooglemap) {
		this.businessGooglemap = businessGooglemap;
	}
	public String getlatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	
	
	
	

	
	
	
	
	
}
