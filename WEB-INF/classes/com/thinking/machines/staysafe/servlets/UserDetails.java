package com.thinking.machines.staysafe.servlets;
import com.thinking.machines.staysafe.dao.*;
import com.thinking.machines.staysafe.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class UserDetails extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
HttpSession session=request.getSession(false);
String status=(String)session.getAttribute("Status");
if(null!=status)
{
System.out.println(session);
System.out.println("if ke andr gaya user ke");
String name=(String)session.getAttribute("Name");
int roll=(int)session.getAttribute("Rollnumber");  
System.out.println(name+" "+roll);
Connection ccc=DAOConnection.getConnection();
PreparedStatement psp=ccc.prepareStatement("Select * from student_detail where Name=? AND Rollnumber=?");
psp.setString(1,name);
psp.setInt(2,roll);					
ResultSet res=psp.executeQuery();
while(res.next())
{ 
StudentBean studentBean=new StudentBean();
studentBean.setGender(res.getString("Gender"));
studentBean.setClasses(res.getString("Class"));
studentBean.setStream(res.getString("Stream"));
studentBean.setPhone(res.getString("PhoneNo"));
studentBean.setDob(res.getString("Date_of_Birth"));
studentBean.setFather(res.getString("Father_Name"));
studentBean.setMother(res.getString("Mother_Name"));
studentBean.setAddress(res.getString("Address"));
studentBean.setState(res.getString("State"));
studentBean.setCity(res.getString("City"));
studentBean.setCountry(res.getString("Country"));
request.setAttribute("studentBean",studentBean);
RequestDispatcher rd;
rd=request.getRequestDispatcher("user.jsp");
rd.forward(request,response);
//System.out.println(Gender+" "+Class+" "+Stream+" "+Phone+" "+DOB+" "+Father+" "+Mother+" "+Address+" "+State+" "+City+" "+Country);
System.out.println("ho gyay kam");
}
}

else
{
System.out.print("phr bhi else ain aya");
response.sendRedirect("login.jsp");
}


}catch(Exception ee)
{
ee.printStackTrace();
}
}
}