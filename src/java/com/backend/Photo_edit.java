
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.backend;

import com.connection.DbConnection;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Deepak
 */
public class Photo_edit extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
       HttpSession session=req.getSession();
        String email=(String)session.getAttribute("email");
        
        String file_name = null;
        try
        {
            DiskFileItemFactory factory=new DiskFileItemFactory();
            ServletFileUpload sfu=new ServletFileUpload(factory);
            List<FileItem> items=sfu.parseRequest(req);
            FileItem item=items.get(0);
            String file_path=item.getName();
            File file=new File(file_path);
            file_name=file.getName();
            System.out.println(file_name);
            File f1=new File(PathDetails.PROFILE_PIC_PATH+file_name);
            item.write(f1);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        Connection con=null;
        try
        {
            con=DbConnection.getConnection();
            con.setAutoCommit(false);
            
            PreparedStatement ps=con.prepareStatement("update profile_pics set path=? where email=?");
            ps.setString(1, file_name);
            ps.setString(2, email);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                session.setAttribute("profilepic", file_name);
                con.commit();
                System.out.println("here1");
                resp.sendRedirect("bio_edit.jsp");
            }
            else
            {
                con.rollback();
                System.out.println("here2");
                RequestDispatcher rd1=req.getRequestDispatcher("bio_edit.jsp");
                rd1.include(req, resp);
            }
        }
        catch(Exception e)
        {
            try
            {
                con.rollback();
                System.out.println("here3");
                RequestDispatcher rd1=req.getRequestDispatcher("bio_edit.jsp");
                rd1.include(req, resp);

            }
            catch(Exception ee)
            {
                ee.printStackTrace();
            }
            e.printStackTrace();
        }
        finally
        {
            try
            {
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    }
}