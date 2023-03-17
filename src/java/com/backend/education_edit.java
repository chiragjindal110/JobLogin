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
public class education_edit extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection con = DbConnection.getConnection();
        HttpSession session = req.getSession();
        String email = (String)session.getAttribute("email");
        String school = (String)req.getParameter("school");
        String degree = (String)req.getParameter("degree");
        String year = (String)req.getParameter("year");
        String grade = (String)req.getParameter("grade");
        String graduation_institute = (String)req.getParameter("institute");
        String description = (String)req.getParameter("description");
        try
        {
            PreparedStatement ps = con.prepareStatement("insert into education_details(email,school,degree,year,grade,description,graduation_institute) values(?,?,?,?,?,?,?)");
            ps.setString(1, email);
            ps.setString(2, school);
            ps.setString(3, degree);
            ps.setString(4, year);
            ps.setString(5, grade);
            ps.setString(6, description);
            ps.setString(7, graduation_institute);
            
            int i = ps.executeUpdate();
            if(i>0)
            {
                resp.sendRedirect("Experience_edit.jsp");
            }
            else
            {
                resp.sendRedirect("education_edit.jsp");
            }
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
                    
    }
}