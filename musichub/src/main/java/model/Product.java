package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Product {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int id;
		@NotNull(message="Name cannot be null")
	    @Size(min=5, max=30, message="minimum 5 max. 30 characters")
		private String name;
		@NotNull(message="Name cannot be null")
		private String category;
		private String desc;
		@DecimalMax(value = "99999.999", message = "Price can not be more than 99999.999 ")
		@DecimalMin(value = "1.00", message = "Price can not be less than 1.00 digit ")
		private double price;
		private String status;
		
		
		public Product()
		{
			
		}


		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getCategory() {
			return category;
		}


		public void setCategory(String category) {
			this.category = category;
		}


		public String getDesc() {
			return desc;
		}


		public void setDesc(String desc) {
			this.desc = desc;
		}


		public double getPrice() {
			return price;
		}


		public void setPrice(double price) {
			this.price = price;
		}


		public String getStatus() {
			return status;
		}


		public void setStatus(String status) {
			this.status = status;
		}
		
		
		
}
