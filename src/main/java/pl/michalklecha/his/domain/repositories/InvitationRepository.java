package pl.michalklecha.his.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.michalklecha.his.domain.model.Invitation;

public interface InvitationRepository extends JpaRepository<Invitation, String> {
}
