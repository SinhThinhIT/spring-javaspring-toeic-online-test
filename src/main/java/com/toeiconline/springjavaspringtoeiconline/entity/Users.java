package com.toeiconline.springjavaspringtoeiconline.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "users")
public class Users extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_user")
    private Integer id_user;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "admin")
    private boolean admin;

    @Column(name = "status")
    private boolean status;

    @Column(name = "email")
    private String email;

//    @Column(name = "address")
//    private String address;

    @Column(name = "count")
    private int count;

    @Column(name = "phone")
    private String phone;
//    @Column(name = "role")
//    private String role;
//    Khoa ngoai

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "users", fetch = FetchType.LAZY)
    private List<Category> categories = new ArrayList<>();
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "users", fetch = FetchType.LAZY)
    private List<ProfileUser> profileUsers = new ArrayList<>();
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "users", fetch = FetchType.LAZY)
    private List<Comment> comments = new ArrayList<>();
    @OneToOne(mappedBy = "users")
    private Avatar avatar;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "users", fetch = FetchType.LAZY)
    private List<LevelToeic> levelToeics = new ArrayList<>();
//    End khoa ngoai

    @ManyToMany
    @JoinTable(name = "users_roles", joinColumns = @JoinColumn(name = "id_user"), inverseJoinColumns = @JoinColumn(name = "id_role"))
    private Set<Role> roles;

    @OneToMany(cascade = CascadeType.ALL,mappedBy = "users", fetch = FetchType.LAZY)
    private Set<PasswordTokenReset> passwordTokenReset;

    public Set<PasswordTokenReset> getPasswordTokenReset() {
        return passwordTokenReset;
    }

    public void setPasswordTokenReset(Set<PasswordTokenReset> passwordTokenReset) {
        this.passwordTokenReset = passwordTokenReset;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

//    public String getRole() {
//        return role;
//    }
//
//    public void setRole(String role) {
//        this.role = role;
//    }
    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }


    public List<ProfileUser> getProfileUsers() {
        return profileUsers;
    }

    public void setProfileUsers(List<ProfileUser> profileUsers) {
        this.profileUsers = profileUsers;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public Avatar getAvatar() {
        return avatar;
    }

    public void setAvatar(Avatar avatar) {
        this.avatar = avatar;
    }
//    public List<Avatar> getAvatars() {
//        return avatars;
//    }
//
//    public void setAvatars(List<Avatar> avatars) {
//        this.avatars = avatars;
//    }

    public List<LevelToeic> getLevelToeics() {
        return levelToeics;
    }

    public void setLevelToeics(List<LevelToeic> levelToeics) {
        this.levelToeics = levelToeics;
    }

    public Integer getId_user() {
        return id_user;
    }

    public void setId_user(Integer id_user) {
        this.id_user = id_user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

//    public String getAddress() {
//        return address;
//    }
//
//    public void setAddress(String address) {
//        this.address = address;
//    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
