package com.toeiconline.springjavaspringtoeiconline.entity;

import javax.persistence.*;

@Entity
@Table(name = "profile_user")
public class ProfileUser extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_profile")
    private Integer id_profile;

    @Column(name = "total_point")
    private int total_point;

    @Column(name = "rank_profile")
    private int rank_profile;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user")
    private Users users;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_exam")
    private Exam exam;

    public Exam getExam() {
        return exam;
    }

    public void setExam(Exam exam) {
        this.exam = exam;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Integer getId_profile() {
        return id_profile;
    }

    public void setId_profile(Integer id_profile) {
        this.id_profile = id_profile;
    }

    public int getTotal_point() {
        return total_point;
    }

    public void setTotal_point(int total_point) {
        this.total_point = total_point;
    }

    public int getRank_profile() {
        return rank_profile;
    }

    public void setRank_profile(int rank_profile) {
        this.rank_profile = rank_profile;
    }
}
