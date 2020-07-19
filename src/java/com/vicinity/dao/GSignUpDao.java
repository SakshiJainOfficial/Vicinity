
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
        String eventString="";
        for(int i=0;i<events.length;i++){
            if(events[0].equals("birthday")){
                eventString=eventString.concat("0");
            }
            else if(events[1].equals("reception")){
                eventString=eventString.concat("1");
            }
            else if(events[2].equals("marriage")){
                eventString=eventString.concat("2");
            }else if(events[3].equals("anniversary")){
                eventString=eventString.concat("3");
            }else if(events[4].equals("meeting")){
                eventString=eventString.concat("4");
            }else if(events[5].equals("kitty")){
                eventString=eventString.concat("5");
            }else if(events[6].equals("bachelorp")){
                eventString=eventString.concat("6");
            }else if(events[7].equals("cocktailp")){
                eventString=eventString.concat("7");
            }else if(events[8].equals("conference")){
                eventString=eventString.concat("8");
            }else if(events[9].equals("socialG")){
                eventString=eventString.concat("9");
            }
        }
        
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
