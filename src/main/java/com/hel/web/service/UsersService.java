package com.hel.web.service;

import com.hel.web.entity.Role;
import com.hel.web.entity.User;
import com.hel.web.repository.RoleDao;
import com.hel.web.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UsersService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;

    public List<User> findAllUsers() {
        return userDao.findAll();
    }

    public User findUserById(int id) {
        return userDao.findOne(id);
    }

    @Transactional
    public User findUserByRole(int id) {
        User user = findUserById(id);
        List<Role> roles = roleDao.findByUser(user);
        user.setRoles(roles);
        return user;
    }
}
