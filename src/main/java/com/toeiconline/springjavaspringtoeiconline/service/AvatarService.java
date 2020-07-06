package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.Avatar;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;

public interface AvatarService {
    Avatar findAvatarByUsers(Users users);
    Avatar saveAvatar(Avatar avatar);
    Avatar updateAvatar(Avatar avatar);
    Avatar findById(Integer id);
    void deleteAvatar(Integer id);
}
