package com.thinking.machines.staysafe.servlets;
import com.thinking.machines.staysafe.dao.*;
import com.thinking.machines.staysafe.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ValidateLogin extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
String Name;
String Special;

int Rollnumber=Integer.parseInt(request.getParameter("rollnumber"));
String Password=request.getParameter("password");
System.out.println(Rollnumber+" "+Password);
Connection c=DAOConnection.getConnection();
PreparedStatement ps=c.prepareStatement("Select name,special from login where rollnumber=? AND password=?");
ps.setInt(1,Rollnumber);
ps.setString(2,Password);
ResultSet rs=ps.executeQuery();
if(rs.next()==false)
{
response.sendRedirect("404Page.jsp");
}
else
{
Name=rs.getString("name");
Special=rs.getString("special");
HttpSession session=request.getSession();  
session.setAttribute("Name",Name);  
session.setAttribute("Rollnumber",Rollnumber);
session.setAttribute("Password",Password);
session.setAttribute("Special",Special);
session.setAttribute("Status","true");
System.out.println("Send Redirect Chala");
response.sendRedirect("index.jsp");
System.out.println(Name+" "+Special);
}
ps.close();
rs.close();
c.close();
}catch(Exception ee)
{
System.out.println(ee);
}
}
}