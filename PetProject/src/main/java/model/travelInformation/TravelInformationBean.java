package model.travelInformation;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TravelInformation")
public class TravelInformationBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer travelInformationid;
	private String travelname;
	private String addr;
	private String introduction;
	private String latitude;
	private String hospitalgooglemap;
	public Integer getTravelInformationid() {
		return travelInformationid;
	}
	public void setTravelInformationid(Integer travelInformationid) {
		this.travelInformationid = travelInformationid;
	}
	public String getTravelname() {
		return travelname;
	}
	public void setTravelname(String travelname) {
		this.travelname = travelname;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getHospitalgooglemap() {
		return hospitalgooglemap;
	}
	public void setHospitalgooglemap(String hospitalgooglemap) {
		this.hospitalgooglemap = hospitalgooglemap;
	}
	@Override
	public String toString() {
		return "TravelInformationBean [travelInformationid=" + travelInformationid + ", travelname=" + travelname
				+ ", addr=" + addr + ", introduction=" + introduction + ", latitude=" + latitude
				+ ", hospitalgooglemap=" + hospitalgooglemap + "]";
	}
	
}
