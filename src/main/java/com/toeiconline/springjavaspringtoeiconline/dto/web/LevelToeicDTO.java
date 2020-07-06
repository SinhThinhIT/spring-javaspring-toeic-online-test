package com.toeiconline.springjavaspringtoeiconline.dto.web;

import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

public class LevelToeicDTO extends AbtractDTO{
    private Integer id_level;

    private String title;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "levelToeic",fetch = FetchType.LAZY)
    private List<Exam> exams = new ArrayList<>();

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user")
    private Users users;

    public Integer getId_level() {
        return id_level;
    }

    public void setId_level(Integer id_level) {
        this.id_level = id_level;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<Exam> getExams() {
        return exams;
    }

    public void setExams(List<Exam> exams) {
        this.exams = exams;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
}
