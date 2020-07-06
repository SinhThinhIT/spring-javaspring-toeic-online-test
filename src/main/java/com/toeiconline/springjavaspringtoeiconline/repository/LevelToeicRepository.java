package com.toeiconline.springjavaspringtoeiconline.repository;


import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LevelToeicRepository extends JpaRepository<LevelToeic, Integer> {
}
