package com.vicinity.bean;

public class LoginBean {

    private String username;
    private String password;
    private String logincheck;

    public String getLogincheck() {
        return logincheck;
    }

    public void setLogincheck(String logincheck) {
        this.logincheck = logincheck;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
