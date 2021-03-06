package model.hospital;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hospital")
public class HospitalBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer hospitalId;
	private String hospitalName;
	private String hospitalAddress;
	private String hospitalphone;
	private String hospitalowner;
	private String hospitalgooglemap;
	private Double longitude;
	private Double latitude;
	public Integer getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(Integer hospitalId) {
		this.hospitalId = hospitalId;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public String getHospitalAddress() {
		return hospitalAddress;
	}
	public void setHospitalAddress(String hospitalAddress) {
		this.hospitalAddress = hospitalAddress;
	}
	public String getHospitalphone() {
		return hospitalphone;
	}
	public void setHospitalphone(String hospitalphone) {
		this.hospitalphone = hospitalphone;
	}
	public String getHospitalowner() {
		return hospitalowner;
	}
	public void setHospitalowner(String hospitalowner) {
		this.hospitalowner = hospitalowner;
	}
	public String getHospitalgooglemap() {
		return hospitalgooglemap;
	}
	public void setHospitalgooglemap(String hospitalgooglemap) {
		this.hospitalgooglemap = hospitalgooglemap;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	@Override
	public String toString() {
		return "HospitalBean [hospitalId=" + hospitalId + ", hospitalName=" + hospitalName + ", hospitalAddress="
				+ hospitalAddress + ", hospitalphone=" + hospitalphone + ", hospitalowner=" + hospitalowner
				+ ", hospitalgooglemap=" + hospitalgooglemap + ", longitude=" + longitude + ", latitude=" + latitude
				+ "]";
	}
	
	
	
}
