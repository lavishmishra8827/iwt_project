package com.example.upload;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;

public class SaveProduct extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        DiskFileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload upload=new ServletFileUpload(factory);
        String v1="",v2="",v3="",v4="",v5="",v6="";
        byte b[]=null;
        try
        {
            
       
            List<FileItem> items =upload.parseRequest(request);
        
    
        
        for(FileItem item:items){
            String s=item.getFieldName();
            if(s.equals("user_id")){
                v1=item.getString();
            }else if(s.equals("pass_word")){
                v2=item.getString();
            }else if(s.equals("user_name")){
                v3=item.getString();
            }else if(s.equals("city")){
                v4=item.getString();
            }else if(s.equals("email")){
                v5=item.getString();
            }else if(s.equals("phone_no")){
                v6=item.getString();
            }
            
            else if(s.equals("pp")){
                int size=(int)item.getSize();
                b=new byte[size];
                InputStream is=item.getInputStream();
                is.read(b);
                is.close();
            }
        }
        //out.println(v1+","+v2+","+v3);
        String s=request.getParameter("user");
        String db="";
        if(s.equals("student"))
        db="creait";
        else 
        db="teacher";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_web","root","");
        String qr="insert into "+db+" values(?,?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(qr);
        ps.setString(1,v1);
        ps.setString(2, v2);
        ps.setString(3, v3);
        ps.setString(4, v4);
        
        ps.setString(5,v6);
        ps.setString(6, v5);
        
        ps.setBytes(7, b);
        int n=ps.executeUpdate();
        
        response.sendRedirect("Login1.html");
        //out.println("this sldk");
        }catch(Exception e){out.println(e);}
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
