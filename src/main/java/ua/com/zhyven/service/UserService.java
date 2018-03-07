package ua.com.zhyven.service;

import ua.com.zhyven.entity.User;

public interface   UserService {

    void save(User user);

    User findByName(String username);

}