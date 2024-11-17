package asm2.com.entity;

import java.io.Serializable;
import java.util.List;
import java.util.Date;  // Sử dụng java.util.Date thay vì java.sql.Date

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Categories")
public class Category implements Serializable {

    @Id
    String id;
    
    String name;
    
    @Temporal(TemporalType.DATE)  // Áp dụng @Temporal cho java.util.Date
    @Column(name = "Createdate")
    Date createDate = new Date();  // Sử dụng java.util.Date

    String imgcategories;

    @JsonIgnore
    @OneToMany(mappedBy = "category")
    List<Product> products;
}
