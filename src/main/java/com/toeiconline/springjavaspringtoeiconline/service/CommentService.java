package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.Comment;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;

import java.util.List;

public interface CommentService {
    Comment findById(Integer id);
    Comment saveComment(Comment comment);
    Comment updateComment(Comment comment);
    List<Comment> findByPost(Post post);
    Comment findCommentByUsers(Users users);
    int count();
    void deteleById(Integer id);
}
