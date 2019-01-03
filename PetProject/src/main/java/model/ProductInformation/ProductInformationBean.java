package model.ProductInformation;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ProductInformation")
public class ProductInformationBean {
	@Id
	private Integer productid;
	private	Integer memberid;
	private String productName;
	private Integer productMoney;
	private java.util.Date pday;
	
	@Override
	public String toString() {
		return "ProductInformationBean [productid=" + productid + ", memberid=" + memberid + ", productName="
				+ productName + ", productMoney=" + productMoney + ", pday=" + pday + "]";
	}
	
	public Integer getProductid() {
		return productid;
	}
	
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	
	public Integer getMemberid() {
		return memberid;
	}
	
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public Integer getProductMoney() {
		return productMoney;
	}
	
	public void setProductMoney(Integer productMoney) {
		this.productMoney = productMoney;
	}
	
	public java.util.Date getPday() {
		return pday;
	}
	
	public void setPday(java.util.Date pday) {
		this.pday = pday;
	}
}
