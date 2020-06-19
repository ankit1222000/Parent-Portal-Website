package com.thinking.machines.staysafe.beans;
public class TestBean implements java.io.Serializable
{
private String name;
private int rollnumber;
private String phone;
public TestBean()
{
this.name="";
this.rollnumber=0;
this.phone="";
}
public void setname(String name)
{
this.name=name;
}
public String getname()
{
return this.name;
}
public void setrollnumber(int rollnumber)
{
this.rollnumber=rollnumber;
}
public int getrollnumber()
{
return this.rollnumber;
}

public void setphone(String phone)
{
this.phone=phone;
}
public String getphone()
{
return this.phone;
}




}