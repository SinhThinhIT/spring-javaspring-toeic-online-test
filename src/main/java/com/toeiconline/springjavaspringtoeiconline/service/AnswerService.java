package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.Answer;
import com.toeiconline.springjavaspringtoeiconline.entity.Exam;

import java.util.List;

public interface AnswerService {
    List<Answer> getAllAnswer();
    Answer createAnswer(Answer answer);
    Answer updateAnswer(Answer answer);
    void deleteById(Integer id);
    Answer findById(Integer id);
    List<Answer> findAllByExam(Exam exam);
    List<Answer> findAllByExamAndCorrect(Exam exam, boolean correct);
}
