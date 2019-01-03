package model.Shoppingcar;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Shoppingcar")
public class ShoppingcarBean {
	@Id
	private Integer Shoppingcarid;
	private Integer owner;
	private Integer productid;
	private Integer money;
	
	@Override
	public String toString() {
		return "ShoppingcarBean [Shoppingcarid=" + Shoppingcarid + ", owner=" + owner + ", productid=" + productid
				+ ", money=" + money + "]";
	}

	public Integer getShoppingcarid() {
		return Shoppingcarid;
	}

	public void setShoppingcarid(Integer shoppingcarid) {
		Shoppingcarid = shoppingcarid;
	}

	public Integer getOwner() {
		return owner;
	}

	public void setOwner(Integer owner) {
		this.owner = owner;
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}
}
