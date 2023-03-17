/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.backend;

import com.connection.DbConnection;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.*;


/**
 *
 * @author Chirag
 */
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException
    {
        String email = req.getParameter("email1");
        String pass = req.getParameter("pass1");
        String rem = req.getParameter("rememberme1");
        try
        {
        Connection con = DbConnection.getConnection();  
        PreparedStatement ps = con.prepareStatement("Select * from register where email=? and password=?");
            ps.setString(1,email);
            ps.setString(2, pass);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next())
            {
                HttpSession session = req.getSession();
                ps = con.prepareStatement("select name from register where email=? and password=?");
                ps.setString(1, email);
                ps.setString(2, pass);
                String name = rs.getString("name");
                session.setAttribute("name", name);
                session.setAttribute("email",email );
                session.setAttribute("pass", pass);
                resp.sendRedirect("Profile.jsp");
            }
            else
            {
                resp.sendRedirect("LoginError.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
    
}
