package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.Comment;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.repository.CommentRepository;
import com.toeiconline.springjavaspringtoeiconline.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentRepository commentRepository;

    @Override
    public Comment findById(Integer id) {
        return commentRepository.getOne(id);
    }

    @Override
    public Comment saveComment(Comment comment) {
        return commentRepository.save(comment);
    }

    @Override
    public Comment updateComment(Comment comment) {
        return commentRepository.save(comment);
    }

    @Override
    public List<Comment> findByPost(Post post) {
        return commentRepository.findCommentByPost(post);
    }

    @Override
    public Comment findCommentByUsers(Users users) {
        return commentRepository.findCommentByUsers(users);
    }

    @Override
    public int count() {
        return (int) commentRepository.count();
    }

    @Override
    public void deteleById(Integer id) {
        commentRepository.deleteById(id);
    }
}
