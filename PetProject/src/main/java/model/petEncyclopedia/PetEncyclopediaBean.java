package model.petEncyclopedia;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "petEncyclopedia")
public class PetEncyclopediaBean {
	@Id
	private Integer petEncyclopediaId;
	private String petVariety;
	private String scientific;
	private String petSize;
	private Byte[] petPicture;
	private String petData;
	private String remarks;
	private String Place;
	private String weight;
	private String height;
	private String fur;
	private String color;
	private String personality;
	private String feature;
	private String origin;
	private String essentials;
	public Integer getPetEncyclopediaId() {
		return petEncyclopediaId;
	}
	public void setPetEncyclopediaId(Integer petEncyclopediaId) {
		this.petEncyclopediaId = petEncyclopediaId;
	}
	public String getPetVariety() {
		return petVariety;
	}
	public void setPetVariety(String petVariety) {
		this.petVariety = petVariety;
	}
	public String getScientific() {
		return scientific;
	}
	public void setScientific(String scientific) {
		this.scientific = scientific;
	}
	public String getPetSize() {
		return petSize;
	}
	public void setPetSize(String petSize) {
		this.petSize = petSize;
	}
	public Byte[] getPetPicture() {
		return petPicture;
	}
	public void setPetPicture(Byte[] petPicture) {
		this.petPicture = petPicture;
	}
	public String getPetData() {
		return petData;
	}
	public void setPetData(String petData) {
		this.petData = petData;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getPlace() {
		return Place;
	}
	public void setPlace(String place) {
		Place = place;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getFur() {
		return fur;
	}
	public void setFur(String fur) {
		this.fur = fur;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getPersonality() {
		return personality;
	}
	public void setPersonality(String personality) {
		this.personality = personality;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getEssentials() {
		return essentials;
	}
	public void setEssentials(String essentials) {
		this.essentials = essentials;
	}
	@Override
	public String toString() {
		return "PetEncyclopediaBean [petEncyclopediaId=" + petEncyclopediaId + ", petVariety=" + petVariety
				+ ", scientific=" + scientific + ", petSize=" + petSize + ", petPicture=" + Arrays.toString(petPicture)
				+ ", petData=" + petData + ", remarks=" + remarks + ", Place=" + Place + ", weight=" + weight
				+ ", height=" + height + ", fur=" + fur + ", color=" + color + ", personality=" + personality
				+ ", feature=" + feature + ", origin=" + origin + ", essentials=" + essentials + "]";
	}

}
