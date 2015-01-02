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
public class UserService {

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

    public void saveAndFlush(User user) {
        user.setEnabled(true);
        // TODO Encrypt the user password
        List<Role> roles = new ArrayList<Role>();
        roles.add(roleDao.findByName("USER"));
        user.setRoles(roles);
        userDao.saveAndFlush(user);
    }

    @Transactional
    public User findUserByRole(int id) {
        User user = findUserById(id);
        List<Role> roles = roleDao.findByUser(user);
        user.setRoles(roles);
        return user;
    }

    public User findUserByEmail(String name) {
        return userDao.findByEmail(name);
    }

    public void deleteUser(int id) {
        userDao.delete(id);
    }
}
