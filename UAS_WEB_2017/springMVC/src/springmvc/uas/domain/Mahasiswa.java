package springmvc.uas.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Mahasiswa {

    private long id;

    @NotNull
    @Size(min = 5)
    private String name;

    @NotNull
    @Size(min = 7)
    private String contactNumber;

    public Mahasiswa() {
        super();
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setcontactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public void setid(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getcontactNumber() {
        return contactNumber;
    }

    public long getid() {
        return id;
    }

    // Lengkapi function Getter dan Setter
}
