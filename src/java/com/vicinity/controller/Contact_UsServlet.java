
package com.vicinity.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//SMS
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

public class Contact_UsServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        try {
			// Construct data
			
			String apiKey = "apikey="+"qeODZkvJYg4-Owwj3mAafxjNh08RiAlUQkW9Y0RfYX";
			String message = "&message=" + request.getParameter("message");
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + "917999154566";
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
                       
			conn.setRequestMethod("POST");
                         System.out.println("Hiiiiiiiiiiiiiiiiiii");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			
			 response.sendRedirect("index.jsp");
                         rd.close();
//			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
//			return "Error "+e;
		}
        
       
    }
}