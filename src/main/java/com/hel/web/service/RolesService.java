package com.hel.web.service;

import com.hel.web.entity.Role;
import com.hel.web.repository.RoleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RolesService {
    @Autowired
    private RoleDao roleDao;

    public List<Role> findAllRoles() {
        return roleDao.findAll();
    }
}
