package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.Avatar;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.repository.AvatarRepository;
import com.toeiconline.springjavaspringtoeiconline.service.AvatarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AvatarServiceImpl implements AvatarService {
    @Autowired
    private AvatarRepository avatarRepository;

    @Override
    public Avatar findAvatarByUsers(Users users) {
        return avatarRepository.findAvatarByUsers(users);
    }

    @Override
    public Avatar saveAvatar(Avatar avatar) {
        return avatarRepository.save(avatar);
    }

    @Override
    public Avatar updateAvatar(Avatar avatar) {
        return avatarRepository.save(avatar);
    }

    @Override
    public Avatar findById(Integer id) {
        return avatarRepository.getOne(id);
    }

    @Override
    public void deleteAvatar(Integer id) {
        avatarRepository.deleteById(id);
    }
}
