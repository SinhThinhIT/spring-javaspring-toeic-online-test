package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.Category;
import com.toeiconline.springjavaspringtoeiconline.repository.CategoryRepository;
import com.toeiconline.springjavaspringtoeiconline.service.CategoryService;
//import com.toeiconline.springjavaspringtoeiconline.utils.service.GenericService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.RollbackException;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
@Service
@Transactional(rollbackOn = RollbackException.class)
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;
    @Override
    public List<Category> getCategoryAll() {
        return this.categoryRepository.findAll();
    }

    @Override
    public Category findById(Integer id) {
        return this.categoryRepository.getOne(id);
    }

    @Override
    public Category createCategory(Category category) {
        return this.categoryRepository.save(category);
    }

    @Override
    public Category updateCategory(Category category) {
        return this.categoryRepository.save(category);
    }

    @Override
    public void deleteById(Integer id) {
        this.categoryRepository.deleteById(id);
    }
}
