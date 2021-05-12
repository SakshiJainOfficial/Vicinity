
package com.vicinity.controller;

import com.vicinity.util.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class BookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            String gardenId=request.getParameter("eventId17");
            System.out.println(gardenId);
             Connection con=DBConnection.createConnection();
             String sql="Update gardenDetails set booked=1 where gardenId=?";
             PreparedStatement ps=con.prepareStatement(sql);
             ps.setInt(1,Integer.parseInt(gardenId));
             
             int n=ps.executeUpdate();
             if(n>0)
             {
                 RequestDispatcher rd=request.getRequestDispatcher("ThankYou.jsp");
                 rd.forward(request, response);
             }
        } catch (SQLException ex) {
            Logger.getLogger(BookServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {            
            out.close();
        }
   
}
}
