function getAttendence()
{
var request=new XMLHttpRequest();
var url='/staysafe_new/attendence';
request.open('Get',url,true);
request.setRequestHeader("Contect-Type","application/json");
request.send();
request.onreadystatechange=function(){

if(request.readyState === 4 && request.status===200)
{
var json=JSON.parse(request.responseText);
var table=document.getElementById("table");
var row,cell,textNode;
for(var i=0;i<json.AttendenceRecord.length;i++)
{
row=document.createElement('tr');
cell=document.createElement('td');
textNode=document.createTextNode(json.AttendenceRecord[i].date);
cell.appendChild(textNode);
row.appendChild(cell);

cell=document.createElement('td');
textNode=document.createTextNode(json.AttendenceRecord[i].status);
cell.appendChild(textNode);
row.appendChild(cell);

cell=document.createElement('td');
textNode=document.createTextNode(json.AttendenceRecord[i].PunchTime);
cell.appendChild(textNode);
row.appendChild(cell);
table.appendChild(row);
}



}
}
}
window.addEventListener('load',getAttendence);
