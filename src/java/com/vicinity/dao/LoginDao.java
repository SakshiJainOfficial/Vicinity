
package com.vicinity.dao;

import com.vicinity.bean.LoginBean;
import com.vicinity.util.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
    public String authenticateUser(LoginBean loginBean){
        String username=loginBean.getUsername();
        String password=loginBean.getPassword();
        
        Connection con=null;
        Statement statement=null;
        ResultSet resultSet=null;
        
        String userNameDB="";
        String passwordDB="";
        
        try{
            con= DBConnection.createConnection();
            statement=con.createStatement();
            resultSet=statement.executeQuery("Select username,password from userdetails");
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
              userNameDB = resultSet.getString("username"); //fetch the values present in database
              passwordDB = resultSet.getString("password");
 
               if(username.equals(userNameDB) && password.equals(passwordDB))
               {
                  return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
               }
        }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return "Invalid Credentials.";
        
    }
}
