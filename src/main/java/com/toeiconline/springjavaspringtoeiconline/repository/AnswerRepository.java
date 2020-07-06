package com.toeiconline.springjavaspringtoeiconline.repository;

import com.toeiconline.springjavaspringtoeiconline.entity.Answer;
import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnswerRepository extends JpaRepository<Answer, Integer> {
    List<Answer> findAllByExam(Exam exam);
    List<Answer> findAllByExamAndCorrect(Exam exam, boolean correct);
}
