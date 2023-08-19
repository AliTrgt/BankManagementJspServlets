package myPackage;

public class Operations {
     int balance = 0;
    
    

    public int depositMoney(int amount) {
       balance += amount ;
        return balance;
    }

    public int withdrawMoney(int amount) {
        if (balance >= amount) {
            balance -=amount;
        } else {
            System.out.println("Hesabınızda Yeterli Para Yok");
        }
        return balance;
    }

    public int getBalance() {
        return balance;
    }
}
