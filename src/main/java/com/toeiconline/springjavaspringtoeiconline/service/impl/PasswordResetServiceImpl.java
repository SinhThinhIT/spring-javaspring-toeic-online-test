package com.toeiconline.springjavaspringtoeiconline.service.impl;

import com.toeiconline.springjavaspringtoeiconline.entity.PasswordTokenReset;
import com.toeiconline.springjavaspringtoeiconline.repository.PasswordTokenResetRepository;
import com.toeiconline.springjavaspringtoeiconline.service.PasswordResetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PasswordResetServiceImpl implements PasswordResetService {
    @Autowired
    private PasswordTokenResetRepository tokenResetRepository;

    @Override
    public PasswordTokenReset findByToken(String token) {
        return this.tokenResetRepository.findByToken(token);
    }

    @Override
    public PasswordTokenReset saveToken(PasswordTokenReset passwordTokenReset) {
        return this.tokenResetRepository.save(passwordTokenReset);
    }

    @Override
    public void delete(PasswordTokenReset passwordTokenReset) {
        tokenResetRepository.delete(passwordTokenReset);
    }
}
