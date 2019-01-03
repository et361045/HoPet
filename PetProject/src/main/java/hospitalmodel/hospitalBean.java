package hospitalmodel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hospital")
public class hospitalBean {
	@Id
	private Integer hospitalId;
	private String hospitalName;
	private String hospitalAddress;
	private Integer hospitalphone;
	private String hospitalowner;
	private String hospitalgooglemap;
	private String Latitude;
	
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
	public int getHospitalphone() {
		return hospitalphone;
	}
	public void setHospitalphone(int hospitalphone) {
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
	public String getLatitude() {
		return Latitude;
	}
	public void setLatitude(String latitude) {
		Latitude = latitude;
	}

	
}