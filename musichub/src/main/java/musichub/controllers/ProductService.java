package musichub.controllers;


import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import dao.ProductDAOimpl;
import model.Product;
import model.Users;





@Service
public class ProductService {

	@Autowired
	private ProductDAOimpl pdi;
	
	//@Autowired
	//private UserDAOimpl udi;
	
	public List<Product> getAll()
	{
		return pdi.showProducts();
	}
	
	public void addProduct(Product p)
	{
		this.pdi.addNewProduct(p);
	}
	
	public void removeProduct(int id)
	{
		this.pdi.deleteProduct(id);
	}
	public void update(int id)
	{
		this.pdi.updateProduct(id);
	}
	public int addPerson(Users u)
	{
		return this.pdi.addNewPerson(u);
	}
}
