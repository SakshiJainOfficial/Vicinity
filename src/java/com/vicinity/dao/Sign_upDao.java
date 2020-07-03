
package com.vicinity.dao;
import com.vicinity.bean.Sign_upBean;
import com.vicinity.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Sign_upDao {
    public static String SignUpUser(Sign_upBean signUpBean) {
        String username = signUpBean.getUsername();
        String contact = signUpBean.getContact();
        String email = signUpBean.getEmail();
        String password = signUpBean.getPassword();
        
        
        Connection con=null;
        PreparedStatement ps=null;
        try{
            con=DBConnection.createConnection();
            String query="insert into userdetails values(NULL,?,?,?,?)";
            ps=con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, contact);
            ps.setString(3, email);
            ps.setString(4, password);
            
            
            int i=ps.executeUpdate();
            if(i!=0){
             return "SUCCESS";
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return "OOps...Some Error has occured!";
 
    }
}
