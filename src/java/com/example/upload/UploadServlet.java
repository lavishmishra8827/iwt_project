package com.example.upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DATA_DIRECTORY = "data";
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024;
    
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/project_web";
    private String dbUser = "root";
    private String dbPass = "";

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Check that we have a file upload request
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        String fileName="";
        String filePath="";
        String fileParth="";
         PrintWriter out1=response.getWriter();
        if (!isMultipart) {
            return;
        }

        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Sets the size threshold beyond which files are written directly to
        // disk.
        factory.setSizeThreshold(MAX_MEMORY_SIZE);

        // Sets the directory used to temporarily store files that are larger
        // than the configured size threshold. We use temporary directory for
        // java
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        
        // constructs the folder where uploaded file will be stored
        String uploadFolder = getServletContext().getRealPath("")
                + File.separator + DATA_DIRECTORY;
        out1.println(uploadFolder);

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set overall request size constraint
        upload.setSizeMax(MAX_REQUEST_SIZE);

        try {
            // Parse the request
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (!item.isFormField()) {
                     fileName = new File(item.getName()).getName();
                     fileParth=uploadFolder + File.separator;
                    filePath = uploadFolder + File.separator + fileName;
                    File uploadedFile = new File(filePath);
                    //PrintWriter out1= response.getWriter();
        String folder=request.getParameter("Points");
        out1.println(folder);            
                    out1.println("Hello"+filePath);
                    // saves the file to upload directory
                    item.write(uploadedFile);
                }
            }

            // displays done.jsp page after upload finished
            //getServletContext().getRequestDispatcher("/done.jsp").forward(
                   // request, response);

        } catch (FileUploadException ex) {
            throw new ServletException(ex);
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
        
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO upload (fileid,filename,filepath,createddate) values(null,?,?,null)";
            PreparedStatement statement = conn.prepareStatement(sql);
            out1.println("yeh toh hua hai");
            //statement.setInt(1,);
            out1.println("filename ye hai"+fileName);
            statement.setString(1, fileName);
            statement.setString(2,fileParth);
           
            out1.println("yeh toh hua hai");
            //  statement.setString(2, lastName);
              //   if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                // statement.setBlob(3, inputStream);
                 //out1.println(inputStream);
            
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
           
            out1.println("ho gaya database mein save");
          
            //response.sendRedirect("welcome.jsp?name="+fileName);
            } 
       catch (Exception ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } 
        finally {
            out1.println("ldfjkb");
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
      //      request.setAttribute("Message", message);
             
            // forwards to the message page
    //        getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
        //request.setAttribute("name",fileName);
        //request.getRequestDispatcher("\\welcome.jsp").forward(request, response);
        //out1.println("code aata hai yaha");
    
    }

 



    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
 @Override
    protected void service(HttpServletRequest request, HttpServletResponse   response) throws ServletException, IOException {
        doPost(request, response);
        
    
    }

}