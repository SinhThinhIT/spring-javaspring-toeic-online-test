package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import com.toeiconline.springjavaspringtoeiconline.repository.ExamRepository;
import com.toeiconline.springjavaspringtoeiconline.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExamServiceImpl implements ExamService {
    @Autowired
    private ExamRepository examRepository;
    @Override
    public List<Exam> getAll() {
        return examRepository.findAll();
    }

    @Override
    public Exam findById(Integer id) {
        return examRepository.getOne(id);
    }

    @Override
    public Exam saveExam(Exam exam) {
        return examRepository.save(exam);
    }

    @Override
    public Exam updateExam(Exam exam) {
        return examRepository.save(exam);
    }

    @Override
    public void deleteById(Integer id) {
        examRepository.deleteById(id);
    }

    @Override
    public List<Exam> findAllByLevelToeic(LevelToeic level) {
        return examRepository.findAllByLevelToeic(level);
    }
}
