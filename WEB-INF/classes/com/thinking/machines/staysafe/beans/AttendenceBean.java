package com.thinking.machines.staysafe.beans;

public class AttendenceBean implements java.io.Serializable
{
private String date;
private String status;
private String PunchTime;
public AttendenceBean()
{ 
this.date="";
this.status="";
this.PunchTime="";
}
public void setDate(String Date)
{ 
this.date=Date;
}
public String getDate()
{
return this.date;
}
public void setStatus(String status)
{ 
this.status=status;
}
public String getStatus()
{
return this.status;
}
public void setPunchTime(String punchTime)
{
this.PunchTime=punchTime;
}
public String getPunchTime()
{
return this.PunchTime;
}
}


