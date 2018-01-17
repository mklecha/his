package pl.michalklecha.his.domain.repositories;


import org.springframework.data.jpa.repository.JpaRepository;

import pl.michalklecha.his.domain.model.Gift;

import java.util.List;

public interface GiftRepository extends JpaRepository<Gift, Integer> {
    List<Gift> findAllByOrderByReserved();
}
