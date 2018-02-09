package pl.michalklecha.his.domain.model;

import javax.persistence.*;

@Entity
public class Gift {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    @Column(columnDefinition = "VARCHAR(1000)")
    private String description;

    @Column(columnDefinition = "VARCHAR(1000)")
    private String link;
    private String photo;
    private boolean reserved;

    protected Gift() {
    }

    public Gift(String name, String description, String link) {
        this.name = name;
        this.description = description;
        this.link = link;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public boolean isReserved() {
        return reserved;
    }

    public void setReserved(boolean reserved) {
        this.reserved = reserved;
    }

    public void changeReservation() {
        this.reserved = !this.reserved;
    }
}
