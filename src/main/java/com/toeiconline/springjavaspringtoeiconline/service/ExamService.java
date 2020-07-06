package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;

import java.util.List;

public interface ExamService {
    List<Exam> getAll();
    Exam findById(Integer id);
    Exam saveExam(Exam exam);
    Exam updateExam(Exam exam);
    void deleteById(Integer id);
    List<Exam> findAllByLevelToeic(LevelToeic level);
}
