package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;

import java.util.List;

public interface LevelService {
    List<LevelToeic> getLevel();
    LevelToeic findById(Integer id);
    LevelToeic saveLevel(LevelToeic levelToeic);
    LevelToeic updateLevel(LevelToeic levelToeic);
    void deleteById(Integer id);
}
