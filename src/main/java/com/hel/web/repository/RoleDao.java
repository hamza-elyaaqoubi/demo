package com.hel.web.repository;

import com.hel.web.entity.Role;
import com.hel.web.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface RoleDao extends JpaRepository<Role, Integer> {
    List<Role> findByUser(User user);
}
