
package com.vicinity.controller;

import java.io.IOException;
//import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.vicinity.bean.GSignUpBean;
import com.vicinity.dao.GSignUpDao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;

//@WebServlet(urlPatterns = {"/GSignUpServlet"})
@MultipartConfig
public class GSignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        InputStream inputStream=null;
        Part filepart=request.getPart("image");
        //System.out.println("klkflfjklf");
//        if(filepart!=null)
//        {
//            System.out.println(filepart.getName());
//        }
        inputStream=filepart.getInputStream();
        File f=new File("C:\\Users\\sakshi\\Documents\\NetBeansProjects\\Vicinity\\web\\Images\\r.jpeg");
        OutputStream output=new FileOutputStream(f);
        IOUtils.copy(inputStream, output);
        
    String gname=request.getParameter("gname");
    String oname=request.getParameter("oname");
    String year=request.getParameter("year");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String price=request.getParameter("price");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String landmark=request.getParameter("landmark");
    String pincode=request.getParameter("pincode");
    String noBooking=request.getParameter("noBooking");
    String acRooms=request.getParameter("acRooms");
    String nonacRooms=request.getParameter("nonacRooms");
    String wifi=request.getParameter("wifi");
    String cattering=request.getParameter("cattering");
    String events[]=request.getParameterValues("events");
    
    
    GSignUpBean gSignUpBean=new GSignUpBean();
    
    gSignUpBean.setGname(gname);
    gSignUpBean.setOname(oname);
    gSignUpBean.setYear(year);
    gSignUpBean.setEmail(email);
    gSignUpBean.setPhone(phone);
    gSignUpBean.setPrice(price);
    gSignUpBean.setAddress(address);
    gSignUpBean.setCity(city);
    gSignUpBean.setLandmark(landmark);
    gSignUpBean.setPincode(pincode);
    gSignUpBean.setNoBooking(noBooking);
    gSignUpBean.setAcRooms(acRooms);
    gSignUpBean.setNonacRooms(nonacRooms);
    gSignUpBean.setWifi(wifi);
    gSignUpBean.setCattering(cattering);
    gSignUpBean.setEvents(events);
    
    GSignUpDao signUpDao=new GSignUpDao();
    
    String userSignedUp = signUpDao.GSignUpUser(gSignUpBean);
    if(userSignedUp.equals("SUCCESS")){
        request.getRequestDispatcher("/VerificationPending.jsp").forward(request, response);
    }
    
    else{
        request.setAttribute("errMessage", userSignedUp);
        request.getRequestDispatcher("/GSignUp.jsp").forward(request, response);
    }
    
    }
}