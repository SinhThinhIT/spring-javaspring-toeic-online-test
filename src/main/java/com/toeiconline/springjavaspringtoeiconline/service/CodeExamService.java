package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.CodeExam;

import java.util.List;

public interface CodeExamService {
    List<CodeExam> getAllCode();
    CodeExam createCode(CodeExam codeExam);
    CodeExam updateCode(CodeExam codeExam);
    CodeExam findById(Integer id);
    void deleteById(Integer id);
}
