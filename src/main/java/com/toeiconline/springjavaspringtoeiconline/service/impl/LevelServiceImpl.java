package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import com.toeiconline.springjavaspringtoeiconline.repository.LevelToeicRepository;
import com.toeiconline.springjavaspringtoeiconline.service.LevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LevelServiceImpl implements LevelService {
    @Autowired
    private LevelToeicRepository levelToeicRepository;

    @Override
    public List<LevelToeic> getLevel() {
        return levelToeicRepository.findAll();
    }

    @Override
    public LevelToeic findById(Integer id) {
        return levelToeicRepository.getOne(id);
    }

    @Override
    public LevelToeic saveLevel(LevelToeic levelToeic) {
        return levelToeicRepository.save(levelToeic);
    }

    @Override
    public LevelToeic updateLevel(LevelToeic levelToeic) {
        return levelToeicRepository.save(levelToeic);
    }

    @Override
    public void deleteById(Integer id) {
        levelToeicRepository.deleteById(id);
    }
}
