package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.Category;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;

import java.util.List;

public interface PostService {
    List<Post> findAllPost(Category category);
    List<Post> getPostAll();
    Post findById(Integer id);
    Post createPost(Post post);
    Post updatePost(Post post);
    void deleteById(Integer id);
}
