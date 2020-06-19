package com.thinking.machines.staysafe.servlets;
import java.io.IOException;

import com.thinking.machines.staysafe.dao.*;
import java.sql.*;

import com.google.gson.*;
import com.thinking.machines.staysafe.beans.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.text.DateFormat;  
import java.text.SimpleDateFormat;  
import java.util.Date;  

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class Attendence extends HttpServlet
{

public void doGet(HttpServletRequest request,HttpServletResponse response)
{
doPost(request,response);
}
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
HttpSession session=request.getSession(false);
String Name=(String)session.getAttribute("Name");
//String Name="Aalekh Karhadkar";
Connection c=DAOConnection.getConnection();
PreparedStatement preparedStatement=c.prepareStatement("select Date,Status,Punch_time from attendence_record where Name=?");
preparedStatement.setString(1,Name);
ResultSet resultSet=preparedStatement.executeQuery();
List<AttendenceBean> beanlist=new LinkedList<>();
AttendenceBean bean;
while(resultSet.next())
{
bean=new AttendenceBean();
Date date=resultSet.getDate("Date");
DateFormat df=new SimpleDateFormat("yyyy-mm-dd");
String Date=df.format(date);
String punchtime=resultSet.getTime("Punch_time").toString();
String Status=resultSet.getString("Status");
bean.setDate(Date);
bean.setStatus(Status);
bean.setPunchTime(punchtime);
beanlist.add(bean);
}
Gson gson=new Gson();
JsonObject obj=new JsonObject();
JsonElement attendenceobj=gson.toJsonTree(beanlist);
obj.add("AttendenceRecord",attendenceobj);
response.setContentType("application/json");
response.getWriter().write(obj.toString());
resultSet.close();
preparedStatement.close();
c.close();
}catch(Exception e)
{}
}
}
