package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.Category;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;
import com.toeiconline.springjavaspringtoeiconline.repository.PostRepository;
import com.toeiconline.springjavaspringtoeiconline.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.RollbackException;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional(rollbackOn = RollbackException.class)
public class PostServiceImpl implements PostService {
    @Autowired
    private PostRepository postRepository;

    @Override
    public List<Post> findAllPost(Category category) {
        return this.postRepository.findAllByCategory(category);
    }

    @Override
    public List<Post> getPostAll() {
        return this.postRepository.findAll();
    }

    @Override
    public Post findById(Integer id) {
        return this.postRepository.getOne(id);
    }

    @Override
    public Post createPost(Post post) {
        return this.postRepository.save(post);
    }

    @Override
    public Post updatePost(Post post) {
        return this.postRepository.save(post);
    }

    @Override
    public void deleteById(Integer id) {
        this.postRepository.deleteById(id);
    }
}
