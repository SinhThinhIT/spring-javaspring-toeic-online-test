package com.toeiconline.springjavaspringtoeiconline.repository;

import com.toeiconline.springjavaspringtoeiconline.entity.ProfileUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfileUserRepository extends JpaRepository<ProfileUser, Integer> {
}
