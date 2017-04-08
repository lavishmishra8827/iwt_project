/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.StringTokenizer;

/**
 *
 * @author Mayank Goyal
 */
public class UploadFile {

static PreparedStatement stmt;
static Connection con;
    
    public  static void main(String args[]) throws FileNotFoundException, IOException, SQLException{
    
        
            try{
            
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Driver loaded");
                con= DriverManager.getConnection("jdbc:mysql://localhost:3306/collegepredictor","root","root");
            
            }catch(Exception e){System.out.println(e);
            }
        File fs=new File("C:\\Users\\Mayank Goyal\\Documents\\NetBeansProjects\\CollegePredictor\\src\\java\\makky\\recentfile.txt");
        
        BufferedReader br = new BufferedReader(new FileReader(fs));;
        String line="";
        char ch ='a';
         ch=(char)br.read();
         
         
         
        while((line=br.readLine())!=null ){
           
            StringTokenizer st=new StringTokenizer(line,"\t"); 
            while(st.hasMoreTokens()){
            
                //System.out.print("Tokein=="+st.nextToken());
                stmt= con.prepareStatement("insert into collegedatabase values(?,?,?,?,?,?,?,?,?,?)");
                stmt.setInt(1,Integer.parseInt(st.nextToken()));
                stmt.setString(2,st.nextToken());
                stmt.setString(3,st.nextToken());
                stmt.setString(4,st.nextToken());
                stmt.setString(5,st.nextToken());
                stmt.setString(6,st.nextToken());
                stmt.setString(7,st.nextToken());
                st.nextToken();st.nextToken();
                stmt.setInt(8,Integer.parseInt(st.nextToken()));
                stmt.setInt(9,Integer.parseInt(st.nextToken()));
                stmt.setString(10,"www.google.com");
                
                stmt.executeUpdate();
                
            }
            
            System.out.println("");
        }
        
        
        
        
}
    
}
