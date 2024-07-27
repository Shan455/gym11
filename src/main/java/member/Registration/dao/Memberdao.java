package member.Registration.dao;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

	import member.Registration.model.Member;

	public class Memberdao {

	    public int registerMember(Member member) throws ClassNotFoundException {
	        String INSERT_USERS_SQL = "INSERT INTO employee" +
	            "  (id, first_name, last_name, username, password, address, contact) VALUES " +
	            " (?, ?, ?, ?, ?,?,?);";

	        int result = 0;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root", "root");

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setInt(1, 1);
	            preparedStatement.setString(2, member.getFirstName());
	            preparedStatement.setString(3, member.getLastName());
	            preparedStatement.setString(4, member.getEmailAddress());
	            preparedStatement.setString(5, member.getPhoneNo());
	            preparedStatement.setString(6, member.getDob());
	            preparedStatement.setString(7, member.getGender());
	            preparedStatement.setString(7, member.getUsername());
	            preparedStatement.setString(7, member.getMembership());

	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            printSQLException(e);
	        }
	        return result;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	}
