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
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "DiscountCodes")
public class DiscountCode implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	@Column(unique = true)
	String code; // Mã giảm giá
	Double discountAmount; // Số tiền giảm hoặc tỷ lệ giảm giá
	Boolean isActive = true; // Trạng thái mã giảm giá (đang sử dụng hay không)
	@Temporal(TemporalType.DATE)
	Date validFrom; // Ngày bắt đầu có hiệu lực

	@Temporal(TemporalType.DATE)
	Date validUntil; // Ngày hết hạn
	@ManyToOne
	@JoinColumn(name = "category_id")  // Đảm bảo tên này trùng với tên cột trong cơ sở dữ liệu
	Category category;
}
