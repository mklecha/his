package pl.michalklecha.his.domain.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Invitation {
    @Id
    private String pageKey;
    private String message;
    private boolean plural;

    public Invitation() {
    }

    public String getPageKey() {
        return pageKey;
    }

    public String getMessage() {
        return message;
    }

    public boolean isPlural() {
        return plural;
    }
}
