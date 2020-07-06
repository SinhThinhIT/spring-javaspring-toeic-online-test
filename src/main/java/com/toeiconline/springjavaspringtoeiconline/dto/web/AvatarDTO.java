package com.toeiconline.springjavaspringtoeiconline.dto.web;

import com.toeiconline.springjavaspringtoeiconline.entity.Comment;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

public class AvatarDTO extends AbtractDTO{
    private Integer id_avatar;

    private String name;

    private MultipartFile image;

//    private String information;

    private String address;

//    private boolean active;

    @OneToOne(mappedBy = "users")
    private Users users;

//    @OneToMany(cascade = CascadeType.ALL, mappedBy = "avatar", fetch = FetchType.LAZY)
//    private List<Comment> comments = new ArrayList<>();

    public Integer getId_avatar() {
        return id_avatar;
    }

    public void setId_avatar(Integer id_avatar) {
        this.id_avatar = id_avatar;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

//    public String getInformation() {
//        return information;
//    }
//
//    public void setInformation(String information) {
//        this.information = information;
//    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

//    public boolean isActive() {
//        return active;
//    }
//
//    public void setActive(boolean active) {
//        this.active = active;
//    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

//    public List<Comment> getComments() {
//        return comments;
//    }
//
//    public void setComments(List<Comment> comments) {
//        this.comments = comments;
//    }
}
