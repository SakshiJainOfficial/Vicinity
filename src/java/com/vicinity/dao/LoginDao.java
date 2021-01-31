package com.vicinity.dao;

import com.vicinity.bean.LoginBean;
import com.vicinity.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {

    public String authenticateUser(LoginBean loginBean) {
        String username = loginBean.getUsername();
        String password = loginBean.getPassword();
        String logincheck = loginBean.getLogincheck();
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String userNameDB = "";
        String passwordDB = "";

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            if (logincheck.equals("0")) {
                resultSet = statement.executeQuery("Select username,password from userdetails");
                while (resultSet.next()) // Until next row is present otherwise it return false
                {
                    userNameDB = resultSet.getString("username"); //fetch the values present in database
                    passwordDB = resultSet.getString("password");

                    if (username.equals(userNameDB) && password.equals(passwordDB)) {
                        return "SUCCESS01"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                    }
                }
            } else if (logincheck.equals("1")) {
                
                resultSet = statement.executeQuery("Select * from logingarden ");
                while (resultSet.next()) // Until next row is present otherwise it return false
                {
                    userNameDB = resultSet.getString("gardenId"); //fetch the values present in database
                    passwordDB = resultSet.getString("pass");
                    
                    if (username.equals(userNameDB) && password.equals(passwordDB)) {
                         String sql="Select flag from gardendetails where gardenId=?";
                         PreparedStatement ps=con.prepareStatement(sql);
                         ps.setInt(1, Integer.parseInt(username));
                         ResultSet rs=ps.executeQuery();
                         if(rs.next()){
                         int f=rs.getInt(1);
                         if(f==1){
                             PreparedStatement ps1=con.prepareStatement("Update gardendetails set flag=2 where gardenId=?");
                             ps1.setInt(1,Integer.parseInt(username));
                             ps1.executeUpdate();
                         return "SUCCESS02";}
                          else if(f==2){
                            return "SUCCESS03";
                        }
                         }////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Invalid Credentials.";

    }
}
