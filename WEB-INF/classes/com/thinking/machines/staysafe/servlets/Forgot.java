package com.thinking.machines.staysafe.servlets;

import java.sql.*;
import com.thinking.machines.staysafe.dao.*;
//import com.google.gson.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class Forgot extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
int RollNumber=Integer.parseInt(request.getParameter("rollnumber"));
String KeyId=request.getParameter("Key").trim();
//System.out.println("*****************");
System.out.println(RollNumber+","+KeyId);
Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement=connection.prepareStatement("select special from login where special=? AND Rollnumber=?");
preparedStatement.setString(1,KeyId);
preparedStatement.setInt(2,RollNumber);
ResultSet resultSet=preparedStatement.executeQuery();
if(resultSet.next()==false)
{
response.sendRedirect("404Page.jsp");
}
else
{
String Keyvalue=resultSet.getString("special");
preparedStatement=connection.prepareStatement("select Password from login where special=? and Rollnumber=?");
preparedStatement.setString(1,KeyId);
preparedStatement.setInt(2,RollNumber);
resultSet=preparedStatement.executeQuery();
if(resultSet.next())
{
String password=resultSet.getString("Password");
System.out.println(password);
HttpSession session=request.getSession(); 
session.setAttribute("pass",password);
response.sendRedirect("showpass.jsp");
resultSet.close();
preparedStatement.close();
connection.close();
}
}
}catch(Exception exception)
{
System.out.println(exception);
}
}
}
