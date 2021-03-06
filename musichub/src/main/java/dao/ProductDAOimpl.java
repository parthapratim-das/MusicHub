package dao;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Product;
import model.Users;


@Repository
@Transactional
public class ProductDAOimpl {

	List<Product> productsList=new ArrayList<Product>();
	
	public ProductDAOimpl()
	{
		
	}
	
	@Autowired
	private SessionFactory sessionFactory;
	public List<Product> showProducts()
	{
			Session session = sessionFactory.getCurrentSession();
	        List<Product> productList = session.createQuery("from Product").list();
	        return productList;
	}
	
	public void addNewProduct(Product p) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(p);
        //logger.info("Person saved successfully, Person Details="+p);
    }
	
	public void deleteProduct(int id)
	{
		Session session = sessionFactory.getCurrentSession();
        Product p = (Product) session.get(Product.class, new Integer(id));
        if(null != p)
        {
            session.delete(p);       
        }
	}
	
	
    public void updateProduct(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Product p = (Product) session.get(Product.class, new Integer(id));
        session.update(p);
    }
    
    public int addNewPerson(Users u)
    {
    	u.setEnabled("TRUE");
    	Session session = sessionFactory.openSession();
        session.save(u);
        session.flush();
        return 1;
    }
    
   
 
}
