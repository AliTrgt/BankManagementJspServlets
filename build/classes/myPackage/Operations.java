package myPackage;

public class Operations {
     User user;
    
    public Operations(User user) {
        this.user = user;
    }

    public int depositMoney(int amount) {
        user.balance +=amount;
        return user.balance;
    }

    public int withdrawMoney(int amount) {
        if (user.balance >= amount) {
        	user.balance -=amount;
        } else {
            System.out.println("Hesabınızda Yeterli Para Yok");
        }
        return user.balance;
    }

    public int getBalance() {
        return user.balance;
    }
}
