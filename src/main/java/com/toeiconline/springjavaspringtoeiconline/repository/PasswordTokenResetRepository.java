package com.toeiconline.springjavaspringtoeiconline.repository;

import com.toeiconline.springjavaspringtoeiconline.entity.PasswordTokenReset;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PasswordTokenResetRepository extends JpaRepository<PasswordTokenReset, Integer> {
    PasswordTokenReset findByToken(String token);
}
