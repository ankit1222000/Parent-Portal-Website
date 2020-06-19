package com.thinking.machines.staysafe.dao;
import java.sql.*;
public class DAOConnection
{
private DAOConnection()
{
}

public static Connection getConnection()  throws DAOException
{
Connection c;
try
{

Class.forName("com.mysql.cj.jdbc.Driver");
c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Staysafedb","Staysafe","Acedevelopers");

}catch(Exception e)
{
throw new DAOException(e.getMessage());
}
return c;
}
} 
