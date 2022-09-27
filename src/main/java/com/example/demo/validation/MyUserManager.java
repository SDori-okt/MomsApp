package com.example.demo.validation;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import java.util.Objects;


public class MyUserManager implements UserDetailsService {
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User.UserBuilder users = User.withDefaultPasswordEncoder();
        if(Objects.equals(username, "admin")){
            return users
                    .username("admin")
                    .password("admin")
                    .roles("USER","ADMIN")
                    .build();
        }
        else if (username.equals("user")){
            return users
                    .username("user")
                    .password("password")
                    .roles("USER")
                    .build();
        }
        throw new UsernameNotFoundException("Username not found");
    }
}
