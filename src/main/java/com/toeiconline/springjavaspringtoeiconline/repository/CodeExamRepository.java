package com.toeiconline.springjavaspringtoeiconline.repository;

import com.toeiconline.springjavaspringtoeiconline.entity.CodeExam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CodeExamRepository extends JpaRepository<CodeExam, Integer> {
}
