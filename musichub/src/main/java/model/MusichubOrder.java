package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class MusichubOrder {
	
	@Id
    @GeneratedValue
    private int orderId;
	
	@OneToOne
    @JoinColumn(name = "cartId")
    private MusichubCart cart;
	
	@OneToOne
    @JoinColumn(name = "id")
	private Users user;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	
	
	public MusichubCart getCart() {
		return cart;
	}

	public void setCart(MusichubCart cart) {
		this.cart = cart;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	
	

}
