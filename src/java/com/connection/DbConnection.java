/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.connection;


import com.mysql.cj.jdbc.MysqlDataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;
import java.sql.SQLException;
import java.io.IOException;


/**
 *
 * @author chirag
 */
public class DbConnection
{
    
    
    public static Connection getConnection()
    {
        Connection con= null;
        String jdbc_url=null, username=null, password=null;
        try
        {
            InputStream is=DbConnection.class.getResourceAsStream("db.properties");
            
            Properties p=new Properties();
            p.load(is);
            
            jdbc_url=p.getProperty("jdbc-url");
            username=p.getProperty("username");
            password=p.getProperty("password");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        try
        {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            con=DriverManager.getConnection("jdbc:mysql://localhost:8080/jobportal","root","pbr doors");
            
           MysqlDataSource ds=new MysqlDataSource();
            
            ds.setURL(jdbc_url);
            ds.setUser(username);
            ds.setPassword(password);
            
            con=ds.getConnection();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
       
        return con;
        
    }
}
