package com.thinking.machines.staysafe.servlets;
import javax.servlet.*;
import javax.servlet.http.*;

public class LogoutServlet extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
HttpSession session=request.getSession(false);
if(session==null)
{
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
     response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
     response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
     response.setHeader("Pragma","no-cache");
RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
         rd.forward(request, response);

}
session.removeAttribute("Status");
session.removeAttribute("Name");
session.removeAttribute("Password");
session.removeAttribute("Special");
session.removeAttribute("Rollnumber");
session.invalidate();
System.out.println("invalid hua");
response.sendRedirect("login.jsp");  
}catch(Exception e)
{
System.out.println(e);
}
}
}