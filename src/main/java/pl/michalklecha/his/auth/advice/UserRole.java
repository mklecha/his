package pl.michalklecha.his.auth.advice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.michalklecha.his.auth.model.Role;
import pl.michalklecha.his.auth.model.User;
import pl.michalklecha.his.auth.model.repository.UserRepository;
import pl.michalklecha.his.auth.service.SecurityService;

@ControllerAdvice
public class UserRole {

    @Autowired
    SecurityService securityService;

    @ModelAttribute("userRole")
    public Role getCurrentUser(Authentication authentication) {
        User user = securityService.findLoggedInUser();
        return user == null ? null : user.getRole();

    }
}