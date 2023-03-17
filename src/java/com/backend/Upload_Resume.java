/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.backend;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
 * @author Chirag
 */
public class Upload_Resume extends HttpServlet
    
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        HttpSession session=req.getSession();
         String email=(String)session.getAttribute("email");
        String file_name=null;
        try
        {
            DiskFileItemFactory factory=new DiskFileItemFactory();
            ServletFileUpload sfu=new ServletFileUpload(factory);
            List<FileItem> items=sfu.parseRequest(req);
            FileItem item=items.get(0);
            System.out.println(item + "----------");
            String file_path=item.getName();
            File file=new File(file_path);
            file_name=file.getName();
            
            File f1=new File(PathDetails.RESUME_PATH+file_name);
            item.write(f1);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
}
}