package murach.business;

import java.io.Serializable;

public class User implements Serializable {

    private String name;
    
    private String email;

    public User() {
        name = "";
        
        email = "";
    }

    public User(String name, String email) {
        this.name = name;
        
        this.email = email;
    }

    public String getname() {
        return name;
    }

    public void setname(String nameame) {
        this.name = name;
    }

   

   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
