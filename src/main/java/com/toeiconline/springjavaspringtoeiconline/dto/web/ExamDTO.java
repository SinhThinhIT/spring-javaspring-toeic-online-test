package com.toeiconline.springjavaspringtoeiconline.dto.web;

import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import com.toeiconline.springjavaspringtoeiconline.entity.ProfileUser;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

public class ExamDTO extends AbtractDTO {
    private Integer id_exam;

    private String nameExam;

    private String question;

    private Integer point;
    private Integer sumPoint;

    private int count;

    private MultipartFile image;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_level")
    private LevelToeic levelToeic;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "exam", fetch = FetchType.LAZY)
    private List<ProfileUser> profileUsers = new ArrayList<>();

    @ManyToMany(mappedBy = "exams")
    private List<Users> users = new ArrayList<>();

    public Integer getId_exam() {
        return id_exam;
    }

    public void setId_exam(Integer id_exam) {
        this.id_exam = id_exam;
    }

    public String getNameExam() {
        return nameExam;
    }

    public void setNameExam(String nameExam) {
        this.nameExam = nameExam;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Integer getPoint() {
        return point;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public Integer getSumPoint() {
        return sumPoint;
    }

    public void setSumPoint(Integer sumPoint) {
        this.sumPoint = sumPoint;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public LevelToeic getLevelToeic() {
        return levelToeic;
    }

    public void setLevelToeic(LevelToeic levelToeic) {
        this.levelToeic = levelToeic;
    }

    public List<ProfileUser> getProfileUsers() {
        return profileUsers;
    }

    public void setProfileUsers(List<ProfileUser> profileUsers) {
        this.profileUsers = profileUsers;
    }

    public List<Users> getUsers() {
        return users;
    }

    public void setUsers(List<Users> users) {
        this.users = users;
    }
}
