
package com.vicinity.dao;

import com.vicinity.bean.FilterBean;
import com.vicinity.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

public class FilterDao {
     public String Filter(FilterBean FilterBean) {
        String SortByPrice = FilterBean.getSortByPrice();
        String rating = FilterBean.getRating();
        String city=FilterBean.getCity();
        String AcNonAcRooms=FilterBean.getAcNonAcRooms();
          
       

     
         return null;
}
}
