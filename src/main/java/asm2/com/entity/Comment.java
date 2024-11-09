package asm2.com.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Comment")
public class Comment implements Serializable {
  
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String yourreview;
	String yourname;
	String youremail;
	@Temporal(TemporalType.DATE)
	@Column(name = "Date")
	Date date = new Date();
	@ManyToOne
	@JoinColumn(name = "Productid")
	Product product;

	
}
