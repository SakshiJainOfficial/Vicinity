
package com.vicinity.controller;

import com.vicinity.bean.FilterBean;
import com.vicinity.dao.FilterDao;
import com.vicinity.util.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FilterServlet extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       String SortByPrice = request.getParameter("SortByPrice");
       String rating = request.getParameter("rating");
        String city=request.getParameter("City");
        System.out.println(city);
        System.out.println(SortByPrice);
        String AcNonAcRooms=request.getParameter("AcNonAcRooms");
        FilterBean filterBean = new FilterBean(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
 
        filterBean.setSortByPrice(SortByPrice); //setting the username and password through the loginBean object then only you can get it in future.
         filterBean.setRating(rating);
         filterBean.setCity(city);
         filterBean.setAcNonAcRooms(AcNonAcRooms);
 
        FilterDao filterDao = new FilterDao();
         Connection con = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        ArrayList Rows1 = new ArrayList();
        try {
            con = DBConnection.createConnection();
           
            
            String sql;
            if(SortByPrice.equals("High-To-Low")){
                sql="Select * from gardendetails  order by price desc";
            }else{
                sql="Select * from gardendetails  order by price asc";
            }
            statement=con.prepareStatement(sql);
//            statement.setString(1,city);
            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {    
                ArrayList row = new ArrayList();
                for (int i = 1; i <=19; i++) {
                    row.add(resultSet.getString(i));
                }
                Rows1.add(row);
                System.out.println(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        
         HttpSession session = request.getSession();
        session.setAttribute("gardensRegisteredList", Rows1);
        response.sendRedirect("FilteredList.jsp");

        
        
        
        
        
        
        
      
   }
  
}
