package model.shoporder;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shoporder")
public class ShoporderBean {
	@Id
	private Integer OrderId;
	private	Integer buyer;
	private Integer seller;
	private Integer money;
	private Integer productid;
	private java.util.Date DetailDate;
	private String OrderStatus;

	@Override
	public String toString() {
		return "ShoporderBean [OrderId=" + OrderId + ", buyer=" + buyer + ", seller=" + seller + ", money=" + money
				+ ", productid=" + productid + ", DetailDate=" + DetailDate + ", OrderStatus=" + OrderStatus + "]";
	}
	
	public Integer getOrderId() {
		return OrderId;
	}

	public void setOrderId(Integer orderId) {
		OrderId = orderId;
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

	public String getOrderStatus() {
		return OrderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		OrderStatus = orderStatus;
	}	
}
