package com.luv2code.web.jdbc;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class StuudentDbUtill {

   public int registerStudent(Stuudent stuudent) throws ClassNotFoundException {
       String INSERT_USERS_SQL = "INSERT INTO student" +
           "  (Code_Dapogee, Nom_Complet, Cin, Email_Address) VALUES " +
           " (?, ?, ?, ?);";

       int result = 0;

       Class.forName("com.mysql.jdbc.Driver");

       try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_student_tracker?useSSL=false", "webstudent", "webstudent");

           // Step 2:Create a statement using connection object
           PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
           preparedStatement.setString(1, stuudent.getCodedapogee());
           preparedStatement.setString(2, stuudent.getNomcomplet());
           preparedStatement.setString(3, stuudent.getCin());
           preparedStatement.setString(4, stuudent.getEmailaddress());
          
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