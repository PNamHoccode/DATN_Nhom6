package asm2.com.entity;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

	@SuppressWarnings("serial")
	@Data
	@Entity 
	@Table(name ="Orders")
	
	public class Order implements Serializable{
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY,generator = "native")
		long id;
		String address;
		@Temporal(TemporalType.DATE)
		@Column(name = "Createdate")
		Date createDate = new Date();
		
		@ManyToOne
		@JoinColumn(name = "username")
		Account account;
		
		@ManyToOne
		@JoinColumn(name = "statustid")
		Statust statust;
		
		
		
		@JsonIgnore
		@OneToMany(mappedBy = "order")
		List<OrderDetail> orderDetails;
	
		 
		  
	}
