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
public class experience_edit extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection con = DbConnection.getConnection();
        HttpSession session = req.getSession();
        String email = (String)session.getAttribute("email");
        String company = req.getParameter("company");
        String location = req.getParameter("location");
        String years = req.getParameter("years");
        String job_title = req.getParameter("job_title");
        String description = req.getParameter("description");
        
        try
        {
            PreparedStatement ps = con.prepareStatement("insert into experience_details(email,company,location,years,job_title,description) values(?,?,?,?,?,?)");
            ps.setString(1, email);
            ps.setString(2, company);
            ps.setString(3, location);
            ps.setString(4, years);
            ps.setString(5, job_title);
            ps.setString(6, description);
            
            
            int i = ps.executeUpdate();
            if(i>0)
            {
                resp.sendRedirect("Profile.jsp");
            }
            else
            {
                resp.sendRedirect("experience_edit.jsp");
            }
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
                    
    }
}