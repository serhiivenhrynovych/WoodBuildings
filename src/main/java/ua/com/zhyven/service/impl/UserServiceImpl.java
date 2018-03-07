package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.UserDAO;
import ua.com.zhyven.entity.User;
import ua.com.zhyven.service.UserService;

@Service
public class UserServiceImpl implements UserService, UserDetailsService {
    @Autowired
    private UserDAO userDAO;
    public void save(User user) {
        userDAO.save(user);
    }

    @Override
    public User findByName(String username) {
        return userDAO.findByName(username);
    }

    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return userDAO.findByName(s);
    }
}
