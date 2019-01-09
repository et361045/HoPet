package model.travelPicture;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="TravelPicture")
public class TravelPictureBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer travelPictureId;
	private Integer travelInformationid;
	private Byte[]  picture;
	
	public Integer getTravelPictureId() {
		return travelPictureId;
	}
	public void setTravelPictureId(Integer travelPictureId) {
		this.travelPictureId = travelPictureId;
	}
	public Integer getTravelInformationid() {
		return travelInformationid;
	}
	public void setTravelInformationid(Integer travelInformationid) {
		this.travelInformationid = travelInformationid;
	}
	public Byte[] getPicture() {
		return picture;
	}
	public void setPicture(Byte[] picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "TravelPictureBean [travelPictureId=" + travelPictureId + ", travelInformationid=" + travelInformationid
				+ ", picture=" + Arrays.toString(picture) + "]";
	}
	
	
}
