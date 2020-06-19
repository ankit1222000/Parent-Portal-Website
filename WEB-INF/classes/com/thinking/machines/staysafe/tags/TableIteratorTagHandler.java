package com.thinking.machines.staysafe.tags;
import java.sql.*;
import com.thinking.machines.staysafe.beans.*;
import com.thinking.machines.staysafe.dao.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class TableIteratorTagHandler extends BodyTagSupport
{
private String table;
private String where;
private String name;
private int index;
private Connection connection;
private Statement statement;
private ResultSet resultSet;
public TableIteratorTagHandler()
{
reset();
}
private void reset()
{
this.where="";
this.table="";
this.name="";
this.index=0;
this.connection=null;
this.statement=null;
this.resultSet=null;
}
public void setTable(String table)
{
this.table=table;
}
public String getTable()
{
return this.table;
}
public void setWhere(String where)
{
this.where=where;
}
public String getWhere()
{
return this.where;
}
public void setName(String name)
{
this.name=name;
}
public String getName()
{
return this.name;
}
public int doStartTag()
{
try
{
connection=DAOConnection.getConnection();
statement=connection.createStatement();
String sqlStatement="";
if(table.equalsIgnoreCase("test"))
{
sqlStatement="select * from test";
}
if(where!=null && where.trim().length()>0)
{
sqlStatement=sqlStatement+" where name= '"+where+"' ";
}
resultSet=statement.executeQuery(sqlStatement);
if(resultSet.next()==false)return SKIP_BODY;
this.index=0;
setupData();
}catch(Exception e)
{
System.out.println(e); // remove after testing
return SKIP_BODY;
}
return EVAL_BODY_INCLUDE;
}
public int doAfterBody()
{
try
{
if(resultSet.next()==false) return SKIP_BODY;
this.index++;
setupData();
}catch(Exception e)
{
System.out.println(e); // remove after testing
return SKIP_BODY;
}
return EVAL_BODY_AGAIN;
}
private void setupData()
{
try
{
pageContext.setAttribute("index",index,PageContext.REQUEST_SCOPE);
if(table.equalsIgnoreCase("test"))
{
TestBean student=new TestBean();
student.setrollnumber(resultSet.getInt("Rollnumber"));
student.setname(resultSet.getString("Name").trim());
student.setphone(resultSet.getString("PhoneNo").trim());
pageContext.setAttribute(name,student,PageContext.REQUEST_SCOPE);
}
}catch(Exception e)
{
System.out.println(e); // remove after testing
}
}
public int doEndTag()
{
try
{
resultSet.close();
statement.close();
connection.close();
}catch(Exception e)
{
System.out.println(e); // remove after testing
}
return EVAL_PAGE;
}
}
