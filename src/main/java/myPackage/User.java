package myPackage;

public class User {

    private int id;
    private String name;
    private String surname;
    private String username;
    private String email;
    public int balance = 0;
     // Burada balance alanı private olarak tanımlanmalı

    public User() {
    	
    }
    
    public User(int id, String name, String surname, String username, String email) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.username = username;
        this.email = email;
        
    }
    
    

    // Getter ve Setter Metodları
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    
}
