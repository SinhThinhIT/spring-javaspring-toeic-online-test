package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.Answer;
import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import com.toeiconline.springjavaspringtoeiconline.repository.AnswerRepository;
import com.toeiconline.springjavaspringtoeiconline.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AnswerServiceImpl implements AnswerService {
    @Autowired
    private AnswerRepository answerRepository;
    @Override
    public List<Answer> getAllAnswer() {
        return answerRepository.findAll();
    }

    @Override
    public Answer createAnswer(Answer answer) {
        return answerRepository.save(answer);
    }

    @Override
    public Answer updateAnswer(Answer answer) {
        return answerRepository.save(answer);
    }

    @Override
    public void deleteById(Integer id) {
        answerRepository.deleteById(id);
    }

    @Override
    public Answer findById(Integer id) {
        return answerRepository.getOne(id);
    }

    @Override
    public List<Answer> findAllByExam(Exam exam) {
        return answerRepository.findAllByExam(exam);
    }
    @Override
    public List<Answer> findAllByExamAndCorrect(Exam exam, boolean correct) {
        return answerRepository.findAllByExamAndCorrect(exam, correct);
    }
}
