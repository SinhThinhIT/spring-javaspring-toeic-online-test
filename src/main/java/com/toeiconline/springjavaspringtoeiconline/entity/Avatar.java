package com.toeiconline.springjavaspringtoeiconline.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "avatar")
public class Avatar extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_avatar")
    private Integer id_avatar;

    @Column(name = "name")
    private String name;

    @Column(name = "image_file_name")
    private String image;

//    @Column(name = "information")
//    private String information;

    @Column(name = "address")
    private String address;

//    @Column(name = "active")
//    private boolean active;

    @OneToOne(targetEntity = Users.class, fetch = FetchType.EAGER)
    @JoinColumn(nullable = false, name = "id_user")
    private Users users;

//    @OneToMany(cascade = CascadeType.ALL, mappedBy = "avatar", fetch = FetchType.LAZY)
//    private List<Comment> comments = new ArrayList<>();

    public Avatar() {
    }

//    public List<Comment> getComments() {
//        return comments;
//    }
//
//    public void setComments(List<Comment> comments) {
//        this.comments = comments;
//    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
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
}
