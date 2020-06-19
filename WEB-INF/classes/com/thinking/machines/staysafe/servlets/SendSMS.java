package com.thinking.machines.staysafe.servlets;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.net.*;
public class SendSMS extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try{
HttpSession session=request.getSession(false);
session.removeAttribute("pass");
session.invalidate();
String PhoneNumber=request.getParameter("Phonenumber");
String Password=request.getParameter("Password");
String api_key="Wh21bjaYI367mZMxdCpFkf5cuiJtnXg8SGKerURsBTDzV4loLHRWYJ6fNEKhcgUy9T0pB1XIP5Fq3rno";
String Message  = "You can login to the website with Password: "+Password;
String Sender_Id = "FSTSMS";
String Numbers=PhoneNumber.toString();
String Language="english";
String Route="p";
String start="https://www.fast2sms.com/dev/bulk?";
String encoding = "UTF-8";
      String queryString =start+"authorization=" + URLEncoder.encode(api_key, encoding)
        + "&sender_id=" + URLEncoder.encode(Sender_Id, encoding)
        + "&message=" + URLEncoder.encode(Message, encoding)
        + "&language=" + URLEncoder.encode(Language, encoding)
        + "&route=" + URLEncoder.encode(Route, encoding)
        +"&numbers="+URLEncoder.encode(Numbers, encoding);
URL url=new URL(queryString);
HttpURLConnection con=(HttpURLConnection)url.openConnection();
con.setRequestMethod("GET");
con.setRequestProperty("User-Agent","Mozilla/5.0");
con.setRequestProperty("cache-control","no-cache");
//System.out.println("Wait.........");
int code=con.getResponseCode();
//System.out.println("Response code: "+code);
StringBuffer resp=new StringBuffer();
BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
while(true)
{
String line=br.readLine();
if(line==null)
{
break;
}
resp.append(line);
}
response.sendRedirect("login.jsp");
}catch(Exception e)
{
}
}
}