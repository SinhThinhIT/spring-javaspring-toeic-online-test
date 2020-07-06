package com.toeiconline.springjavaspringtoeiconline.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "exam")
public class Exam extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_exam")
    private Integer id_exam;

    @Column(name = "nameExam")
    private String nameExam;

    @Column(name = "question")
    private String question;

    @Column(name = "point", length = 5)
    private Integer point;

    @Column(name = "sumPoint", length = 5)
    private Integer sumPoint;

    @Column(name = "count", length = 11)
    private int count;

    @Column(name = "image_file_name")
    private String image;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_level")
    private LevelToeic levelToeic;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "exam", fetch = FetchType.LAZY)
    private List<ProfileUser> profileUsers = new ArrayList<>();

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "exam")
    private List<Answer> answers = new ArrayList<>();
    @ManyToMany(mappedBy = "exams")
    private Set<CodeExam> codeExams = new HashSet<>();

    public Set<CodeExam> getCodeExams() {
        return codeExams;
    }

    public void setCodeExams(Set<CodeExam> codeExams) {
        this.codeExams = codeExams;
    }

    public List<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answer> answers) {
        this.answers = answers;
    }

    public Exam() {
    }

    public List<ProfileUser> getProfileUsers() {
        return profileUsers;
    }

    public void setProfileUsers(List<ProfileUser> profileUsers) {
        this.profileUsers = profileUsers;
    }

    public LevelToeic getLevelToeic() {
        return levelToeic;
    }

    public void setLevelToeic(LevelToeic levelToeic) {
        this.levelToeic = levelToeic;
    }

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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
