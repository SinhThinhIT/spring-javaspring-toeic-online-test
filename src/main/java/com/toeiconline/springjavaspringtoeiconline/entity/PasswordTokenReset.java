package com.toeiconline.springjavaspringtoeiconline.entity;

import javax.persistence.*;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "password_reset_token")
public class PasswordTokenReset {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_token")
    private Integer id_token;

    @Column(name = "token")
    private String token;

    @ManyToOne(targetEntity = Users.class, fetch = FetchType.EAGER)
    @JoinColumn(nullable = false,name = "id_user")
    private Users users;

    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;

    private Date expiryDate;

    public PasswordTokenReset() {
    }

    public PasswordTokenReset(Users users) {
        this.users = users;
        createdDate = new Date();
        token = UUID.randomUUID().toString();
    }

    public Integer getId_token() {
        return id_token;
    }

    public void setId_token(Integer id_token) {
        this.id_token = id_token;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(int minutes) {
        Calendar now = Calendar.getInstance();
        now.add(Calendar.MINUTE, minutes);
        this.expiryDate = now.getTime();
    }
    public boolean isExpired() {
        return new Date().after(this.expiryDate);
    }
}
