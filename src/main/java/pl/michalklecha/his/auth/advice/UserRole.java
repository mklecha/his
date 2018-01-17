package pl.michalklecha.his.auth.advice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.michalklecha.his.auth.model.Role;
import pl.michalklecha.his.auth.model.User;
import pl.michalklecha.his.auth.service.SecurityService;

@ControllerAdvice
public class UserRole {

    @Autowired
    SecurityService securityService;

    @ModelAttribute("userRole")
    public Role getUserRole(Authentication authentication) {
        if (authentication == null) {
            return Role.GUEST;
        }
        User user = securityService.findLoggedInUser();
        return user == null ? Role.GUEST : user.getRole();

    }
}