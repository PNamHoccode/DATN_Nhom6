package asm2.com.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Productinformation")
public class ProductInformation  implements Serializable {
	  
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String chude;
    String img;
    String noidung;
    
    @ManyToOne
	@JoinColumn(name = "Productid")
	Product product;

	
	
}
