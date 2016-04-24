package musichub.controllers;

import dao.ProductDAOimpl;
import model.*;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ProductService {

	@Autowired
	private ProductDAOimpl pdi;
	
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
	public void addPerson(User u)
	{
		this.pdi.addNewPerson(u);
	}
}
