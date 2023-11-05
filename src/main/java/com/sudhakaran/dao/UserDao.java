package com.sudhakaran.dao;

import com.sudhakaran.db.DatabaseConnection;
import com.sudhakaran.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private static Connection connection;
    public UserDao() {
        connection = DatabaseConnection.getConnection();
    }
    private String selectSQL ="SELECT id,username,password FROM auth WHERE username=? and password=?";
        private static String registerSQL = "INSERT INTO auth(username,password) VALUES (?,?);";
    public User loginUser(String username, String password){
        User user = null;
        try {
            PreparedStatement ps = connection.prepareStatement(selectSQL);
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                user = new User();
                user.setId(Integer.parseInt(rs.getString("id")));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    public static void register(String username, String password){
        try {
            PreparedStatement ps = connection.prepareStatement(registerSQL);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
