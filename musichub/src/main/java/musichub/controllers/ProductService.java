package musichub.controllers;

import dao.ProductDAOimpl;
import model.*;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;

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
}
