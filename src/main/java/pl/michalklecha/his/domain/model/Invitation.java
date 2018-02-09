package pl.michalklecha.his.domain.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Invitation {
    @Id
    private String pageKey;
    private String message;
    private boolean plural;

    protected Invitation() {
    }

    public Invitation(String pageKey, String message, boolean plural) {
        this.pageKey = pageKey;
        this.message = message;
        this.plural = plural;
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
