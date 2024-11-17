package asm2.com.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import asm2.com.dao.CategoryDAO;
import asm2.com.entity.Category;

@Service
public class CategoryService {
    @Autowired
    CategoryDAO dao;

    public List<Category> findALL() {
        return dao.findAll();
    }

    public Category findById(String id) {
        return dao.findById(id).orElse(null);
    }

    public Category getById(String id) {
        return dao.findById(id).orElse(null);
    }

    public Category create(Category category) {
        return dao.save(category); // Thêm phương thức này để xử lý việc thêm mới
    }

    public void save(Category category) {
        dao.save(category);
    }

    public Category update(Category category) {
        // Kiểm tra nếu category tồn tại, nếu có thì cập nhật
        if (dao.existsById(category.getId())) {
            return dao.save(category); // `save` sẽ hoạt động như update nếu ID đã tồn tại
        }
        return null; // hoặc xử lý ngoại lệ nếu không tìm thấy category
    }

    public void deleteById(String id) {
        dao.deleteById(id); // Xóa theo ID
    }
    
}
