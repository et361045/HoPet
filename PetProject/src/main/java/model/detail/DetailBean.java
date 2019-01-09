package model.detail;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Detail")
public class DetailBean {
	@Id
	private Integer DetailId;
	private Integer buyer;
	private Integer seller;
	private Integer money;
	private Integer productid;
	private java.util.Date DetailDate;
	private String cancel;
	
	@Override
	public String toString() {
		return "DetailBean [DetailId=" + DetailId + ", buyer=" + buyer + ", seller=" + seller + ", money=" + money
				+ ", productid=" + productid + ", DetailDate=" + DetailDate + ", cancel=" + cancel + "]";
	}

	public Integer getDetailId() {
		return DetailId;
	}

	public void setDetailId(Integer detailId) {
		DetailId = detailId;
	}

	public Integer getBuyer() {
		return buyer;
	}

	public void setBuyer(Integer buyer) {
		this.buyer = buyer;
	}

	public Integer getSeller() {
		return seller;
	}

	public void setSeller(Integer seller) {
		this.seller = seller;
	}

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public java.util.Date getDetailDate() {
		return DetailDate;
	}

	public void setDetailDate(java.util.Date detailDate) {
		DetailDate = detailDate;
	}

	public String getCancel() {
		return cancel;
	}

	public void setCancel(String cancel) {
		this.cancel = cancel;
	}
}
