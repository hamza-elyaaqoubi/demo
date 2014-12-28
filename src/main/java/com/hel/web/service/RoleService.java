package com.hel.web.service;

import com.hel.web.entity.Role;
import com.hel.web.entity.User;
import com.hel.web.repository.RoleDao;
import com.hel.web.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleService {
    @Autowired
    private RoleDao roleDao;

    @Autowired
    private UserDao userDao;

    public List<Role> findAllRoles() {
        return roleDao.findAll();
    }

    public Role findRoleById(Integer id) {
        return roleDao.findOne(id);
    }

    @Transactional
    public Role findUsersByRole(Integer id) {
        Role role = findRoleById(id);
        List<User> users = userDao.findByRoles(role);
        role.setUser(users);
        return role;
    }
}
