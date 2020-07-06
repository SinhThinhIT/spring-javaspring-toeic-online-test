package com.toeiconline.springjavaspringtoeiconline.entity;

import javax.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "exam_code")
public class CodeExam extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_code;

    @Column(name = "code")
    private String code;
    @ManyToMany
    @JoinTable(name = "codes_exams", joinColumns = @JoinColumn(name = "id_code"), inverseJoinColumns = @JoinColumn(name = "id_exam"))
    private Set<Exam> exams= new HashSet<>();

    public Set<Exam> getExams() {
        return exams;
    }

    public void setExams(Set<Exam> exams) {
        this.exams = exams;
    }

    public Integer getId_code() {
        return id_code;
    }

    public void setId_code(Integer id_code) {
        this.id_code = id_code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
