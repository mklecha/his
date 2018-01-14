package pl.michalklecha.his.auth.service;


import pl.michalklecha.his.auth.model.User;

public interface SecurityService {
    String findLoggedInUsername();

    User findLoggedInUser();
}
