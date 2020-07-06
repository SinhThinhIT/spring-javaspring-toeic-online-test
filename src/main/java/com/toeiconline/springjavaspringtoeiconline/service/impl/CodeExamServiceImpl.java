package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.CodeExam;
import com.toeiconline.springjavaspringtoeiconline.repository.CodeExamRepository;
import com.toeiconline.springjavaspringtoeiconline.service.CodeExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CodeExamServiceImpl implements CodeExamService {
    @Autowired
    private CodeExamRepository codeExamRepository;
    @Override
    public List<CodeExam> getAllCode() {
        return codeExamRepository.findAll();
    }

    @Override
    public CodeExam createCode(CodeExam codeExam) {
        return codeExamRepository.save(codeExam);
    }

    @Override
    public CodeExam updateCode(CodeExam codeExam) {
        return codeExamRepository.save(codeExam);
    }

    @Override
    public CodeExam findById(Integer id) {
        return codeExamRepository.getOne(id);
    }

    @Override
    public void deleteById(Integer id) {
        codeExamRepository.deleteById(id);
    }
}
