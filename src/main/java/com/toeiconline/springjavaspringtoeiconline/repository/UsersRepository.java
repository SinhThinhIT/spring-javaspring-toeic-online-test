package com.toeiconline.springjavaspringtoeiconline.repository;

import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {
    Users findByUsername(String username);
    Boolean existsByUsername(String username);
    Boolean existsByEmail(String email);
//    @Query(value = "select * from users u where u.admin = ?", nativeQuery = true)
//    Users findUsersByAdmin(boolean isAdmin);

    Users findByEmail(String email);
    List<Users> findUsersByAdmin(boolean isAdmin);
}
