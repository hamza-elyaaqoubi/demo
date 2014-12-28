package com.hel.web.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "roles")
public class Role {

    @Id
    @GeneratedValue
    @Column(name = "role_id")
    private Integer id;

    @Column(name = "role")
    private String name;

    @Column(name = "user_id")
    private Integer userId;

    @ManyToMany(mappedBy = "roles")
    private List<User> user;

    public Role(String name) {
        this.name = name;
    }

    public Role() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public List<User> getUser() {
        return user;
    }

    public void setUser(List<User> user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
