package com.toeiconline.springjavaspringtoeiconline.service;

import com.toeiconline.springjavaspringtoeiconline.entity.PasswordTokenReset;

public interface PasswordResetService {
    PasswordTokenReset findByToken(String token);

    PasswordTokenReset saveToken(PasswordTokenReset passwordTokenReset);

    void delete(PasswordTokenReset passwordTokenReset);
}
