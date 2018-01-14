package pl.michalklecha.his.auth.model.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.michalklecha.his.auth.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByLogin(String login);
}
