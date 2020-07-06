package com.toeiconline.springjavaspringtoeiconline.service;


import com.toeiconline.springjavaspringtoeiconline.entity.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getCategoryAll();
    Category findById(Integer id);
    Category createCategory(Category category);
    Category updateCategory(Category category);
    void deleteById(Integer id);
}
