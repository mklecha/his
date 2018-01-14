package pl.michalklecha.his.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import pl.michalklecha.his.auth.model.User;
import pl.michalklecha.his.auth.model.repository.UserRepository;

@Service
public class SecurityServiceImp implements SecurityService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public String findLoggedInUsername() {
        Object userDetails = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (userDetails instanceof UserDetails) {
            return ((UserDetails) userDetails).getUsername();
        }

        return null;
    }

    @Override
    public User findLoggedInUser() {
        Object userDetails = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (userDetails instanceof UserDetails) {
            String login = ((UserDetails) userDetails).getUsername();
            return userRepository.findByLogin(login);
        }

        return null;
    }
}