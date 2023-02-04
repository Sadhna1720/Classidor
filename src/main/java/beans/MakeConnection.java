package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

public class MakeConnection {
	Connection connection = null;
	PreparedStatement preparedStatement;
	ResultSet resultSet = null;
	HttpSession session;
	public Connection connectionMethod(){
		String username="student",pass="student",url="jdbc:mysql://localhost:3306/projectfinal";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection(url,username,pass);
		}catch(Exception e){
			System.out.println(e);
		}
		return connection;
	}
	
	public ResultSet resultData(String id, String query){
		try {
			preparedStatement= connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
	}
}
