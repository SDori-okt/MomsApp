package com.example.demo.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MyDataBase {
    public static void main(String[] args)  {
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/userlogin", "root", "Es0kfnes0kfn@" );

            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from userlogin");

            while(resultSet.next()){
                System.out.println(resultSet.getString("firstname"));
                System.out.println(resultSet.getString("lastname"));
                System.out.println(resultSet.getString("e-mail"));
                System.out.println(resultSet.getString("zipcode"));
                System.out.println(resultSet.getString("location"));
                System.out.println(resultSet.getString("streetname"));
                System.out.println(resultSet.getString("streetnumber"));
                System.out.println(resultSet.getString("loginname"));
            }

            //String sql = "insert into userlogin(lastName, firstName, loginName, zipCode, location, streetName, streetNumber, `e-mail`, password, age) values (Peter, Laszlo, Kukac, 9011, Győrszentiván, Molnár, 37, kukackukac.hu,)";

        }catch(Exception e) {
            e.printStackTrace();
        }




    }
}

