package com.toeiconline.springjavaspringtoeiconline.dto.web;

import com.toeiconline.springjavaspringtoeiconline.entity.Users;

public class TestView {
    private Integer id;
    private String answer;
    private Users users;

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
}
