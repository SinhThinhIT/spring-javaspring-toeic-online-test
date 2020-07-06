package com.toeiconline.springjavaspringtoeiconline.entity;

import javax.persistence.*;

@Entity
@Table(name = "comment")
public class Comment extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_comment")
    private Integer id_comment;

    @Column(name = "paragraph", columnDefinition = "TEXT")
    private String paragraph;

    @Column(name = "like_comment")
    private boolean like_comment;

    @Column(name = "sumLikeComment")
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

    public Comment() {
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

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

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
}
