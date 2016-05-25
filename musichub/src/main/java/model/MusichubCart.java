package model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
//@Table(name="CartDetails")
public class MusichubCart {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int cartId;
	@OneToMany
	List<Product> items;
	@OneToOne
	@JoinColumn(name="id")
	Users user;
	
	
	
	public MusichubCart() {
		super();
	}
	
	
	
	public int getCartId() {
		return cartId;
	}



	public void setCartId(int cartId) {
		this.cartId = cartId;
	}



	public List<Product> getItems() {
		return items;
	}
	public void setItems(List<Product> items) {
		this.items = items;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	
	

}
