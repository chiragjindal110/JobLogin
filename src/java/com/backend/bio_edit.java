/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.backend;

import com.connection.DbConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chirag
 */
public class bio_edit extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection con = DbConnection.getConnection();
        HttpSession session = req.getSession();
        String name = (String)session.getAttribute("name");
        String email = (String)session.getAttribute("email");
        String gender = (String)session.getAttribute("gender");
        String phone = (String)req.getParameter("phone");
        String dob = (String)req.getParameter("dob");
        String location = (String)req.getParameter("location");
        String martial_status = (String)req.getParameter("martial_status");
        String nationality = (String)req.getParameter("nationality");
        try
        {
            PreparedStatement ps = con.prepareStatement("insert into user_bio(name,email,phone,dob,location,nationality,martial_status,gender) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, dob);
            ps.setString(5, location);
            ps.setString(6, nationality);
            ps.setString(7, martial_status);
            ps.setString(8, gender);
            int i = ps.executeUpdate();
            if(i>0)
            {
                resp.sendRedirect("Education_edit.jsp");
            }
            else
            {
                resp.sendRedirect("bio_edit.jsp");
            }
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
                    
    }
    
}
