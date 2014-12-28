package com.hel.web.repository;

import com.hel.web.entity.Role;
import com.hel.web.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserDao extends JpaRepository<User, Integer> {
    List<User> findByRoles(Role role);
}
