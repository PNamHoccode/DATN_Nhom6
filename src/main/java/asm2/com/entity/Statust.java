package asm2.com.entity;
import java.io.Serializable;
import java.util.List;
import java.util.Optional;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@SuppressWarnings("serial")
@Data
@Entity 
@Table(name= "Statust")

public class Statust implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long  idstatust;
    String namestatust;
	
	
	
	@JsonIgnore
	@OneToMany(mappedBy = "statust")
	List<Order> orders;




}
