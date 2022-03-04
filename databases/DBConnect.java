/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package databases;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Freeman
 */
public class DBConnect {
    private Connection conn;
    private String db_name;
    private String db_user;
    private String db_pass;
    
    public void setDdName(String name){
        this.db_name = name;        
    }
    public String getDbName(){
        return this.db_name;
    }
    public void setDbUser(String user){
        this.db_user = user;
    }
    public String getDbUser(){
        return this.db_user;
    }
    public void setDbPass(String pass){
        this.db_pass = pass;
    }
    public String getDbPass(){
        return this.db_pass;
    }

    public DBConnect(Connection conn, String db_name, String db_user, String db_pass) {
        this.conn = conn;
        this.db_name = db_name;
        this.db_user = db_user;
        this.db_pass = db_pass;
    }
    
    
    
    public Connection getConnection(){
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/" + this.getDbName() + "?autoReconnect=true&useSSL=false", this.getDbUser(), this.getDbPass());
            System.out.println("Connected to Database!");
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        return conn;
    }
}
