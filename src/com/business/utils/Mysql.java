package com.business.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Mysql {
	Connection conn=null;
    Statement st=null;
    ResultSet rs=null;
    public Mysql(){ 
    conn=getConn();
    try {
        st = conn.createStatement();
    } catch (SQLException ex) {
    }
    }
    public void close(){
    try {
        if(conn!=null) conn.close();
         if(st!=null) st.close();
         if(rs!=null) rs.close();
    } catch (SQLException ex) {
    }
    } 


private static Connection getConn() {
     String driver = "com.mysql.jdbc.Driver";
     String url = "jdbc:mysql://jyapp.extragood.cn/education?useUnicode=true&characterEncoding=UTF-8";
     String user = "education";
     // 数据库的用户口令
     String password = "5LhaPwC4Jt3UTxbj";
     Connection conn = null;
    try {
         Class.forName(driver);
        // new oracle.jdbc.driver.OracleDriver();
         conn = DriverManager.getConnection(url, user, password);
     }
    catch (ClassNotFoundException e) {
         e.printStackTrace();
     }
    catch (SQLException e) {
         e.printStackTrace();
     }

    return conn;
 }

public ResultSet getDataSet(String sql){
    try {
     this.rs = this.st.executeQuery(sql);
   } catch (SQLException ex) {
  }

return rs;
}
public int executeUpdate(String sql) {
    int result = 0;
    try {
     result = st.executeUpdate(sql);
     
    }
    catch(SQLException ex) {
            System.err.println(ex.getMessage());
    }
    return result;
}
}
