package com.toeiconline.springjavaspringtoeiconline.dto.web;

import com.toeiconline.springjavaspringtoeiconline.entity.Avatar;
import com.toeiconline.springjavaspringtoeiconline.entity.Post;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;


import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class CommentDTO extends AbtractDTO{
    private Integer id_comment;
    private String paragraph;

    private boolean like_comment;

    private int sumLikeComment;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user")
    private Users users;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_post")
    private Post post;

//    @ManyToOne(fetch = FetchType.EAGER)
//    @JoinColumn(name = "id_avatar")
//    private Avatar avatar;

    public Integer getId_comment() {
        return id_comment;
    }

    public void setId_comment(Integer id_comment) {
        this.id_comment = id_comment;
    }

    public String getParagraph() {
        return paragraph;
    }

    public void setParagraph(String paragraph) {
        this.paragraph = paragraph;
    }

    public boolean isLike_comment() {
        return like_comment;
    }

    public void setLike_comment(boolean like_comment) {
        this.like_comment = like_comment;
    }

    public int getSumLikeComment() {
        return sumLikeComment;
    }

    public void setSumLikeComment(int sumLikeComment) {
        this.sumLikeComment = sumLikeComment;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

//    public Avatar getAvatar() {
//        return avatar;
//    }
//
//    public void setAvatar(Avatar avatar) {
//        this.avatar = avatar;
//    }
}
