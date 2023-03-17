package com.backend;


import com.connection.DbConnection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpSession;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Chirag
 */
public class Register extends HttpServlet{
    
   @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException,ServletException
    {
        String name = req.getParameter("name2");
        String email = req.getParameter("email1");
        String pass = req.getParameter("pass1");
        String gender = req.getParameter("gender1");
        
        Connection con = null;
       try
       {
           
           con = com.connection.DbConnection.getConnection();
           PreparedStatement ps = con.prepareStatement("insert into register(name,email,password,gender) values(?,?,?,?)");
           ps.setString(1, name);
           ps.setString(2, email);
           ps.setString(3, pass);
           ps.setString(4, gender);
           int i = ps.executeUpdate();
           
           ps = con.prepareStatement("insert into profile_pics(email) values(?)");
           ps.setString(i, email);
           int j = ps.executeUpdate();
           if(i>0 && j>0)
               
           {
               HttpSession session = req.getSession();
               session.setAttribute("email", email);
               session.setAttribute("name", name);
               session.setAttribute("pass", pass);
               session.setAttribute("gender", gender);
               resp.sendRedirect("Profile_start.jsp");
           }
           else
               System.out.println("error insertion");
       }
       catch(Exception e)
       {
           e.printStackTrace();
                   
       }
    }
}
