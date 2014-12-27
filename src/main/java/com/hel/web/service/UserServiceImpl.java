package com.hel.web.service;

import com.hel.web.dao.UserDao;
import com.hel.web.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements  UserService {
    @Autowired
    private UserDao userDao;

    @Transactional
    public void add(User user) {
        userDao.add(user);
    }

    @Transactional
    public void edit(User user) {
        userDao.edit(user);
    }

    @Transactional
    public void delete(String username) {
        userDao.delete(username);
    }

    @Transactional
    public User getUser(String username) {
       return userDao.getUser(username);
    }

    @Transactional
    public List<User> getAllUser() {
        return userDao.getAllUser();
    }
}
