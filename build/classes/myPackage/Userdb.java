package myPackage;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class Userdb {
	
		public ArrayList<User> getAllUser() throws SQLException{
			
			ArrayList<User> users = new ArrayList<User>();
			String sql = "SELECT id, name, surname, username, password, email ,balance  FROM login";
			
			DbHelper db = new DbHelper();
			
					try {
						Connection connection = db.getConnection();
						PreparedStatement statement = connection.prepareStatement(sql);
						ResultSet resultSet = statement.executeQuery();
						while(resultSet.next()) {
							
							int id = resultSet.getInt("id");
							String name = resultSet.getString("name");
							String surname = resultSet.getString("surname");
							String username = resultSet.getString("username");
							
							String email = resultSet.getString("email");
							
							User user = new User(id,name,surname,username,email);
							users.add(user);
							
						}
						
						
					}catch(SQLException e) {
							db.getErrorMessages(e);
					}
						
					
						
											
					
					return users;	
					
		}
		
	
}
