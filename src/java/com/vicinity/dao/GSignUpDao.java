
package com.vicinity.dao;
import com.vicinity.bean.GSignUpBean;
import com.vicinity.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class GSignUpDao {
    public static String GSignUpUser(GSignUpBean gSignUpBean) {
        String gname = gSignUpBean.getGname();
        String oname = gSignUpBean.getOname();
        String year = gSignUpBean.getYear();
        String email = gSignUpBean.getEmail();
        String phone = gSignUpBean.getPhone();
        String price = gSignUpBean.getPrice();
        String address = gSignUpBean.getAddress();
        String city = gSignUpBean.getCity();
        String landmark = gSignUpBean.getLandmark();
        String pincode = gSignUpBean.getPincode();
        String noBooking = gSignUpBean.getNoBooking();
        String acRooms= gSignUpBean.getAcRooms();
        String nonacRooms= gSignUpBean.getNonacRooms();
        String wifi=gSignUpBean.getWifi();
        String cattering=gSignUpBean.getCattering();
        String events[]=gSignUpBean.getEvents();
        
        Connection con=null;
        PreparedStatement ps=null;
        try{
            con=DBConnection.createConnection();
            String query="insert into gardendetails values(NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps=con.prepareStatement(query);
            ps.setString(1, gname);
            ps.setString(2, oname);
            ps.setString(3, year);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, price);
            ps.setString(7, address);
            ps.setString(8, city);
            ps.setString(9, landmark);
            ps.setString(10, pincode);
            ps.setString(11, noBooking);
            ps.setString(12, acRooms);
            ps.setString(13, nonacRooms);
            ps.setString(14, wifi);
            ps.setString(15, cattering);
            
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
