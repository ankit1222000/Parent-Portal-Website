function generatePdf()
{
var form=document.getElementById("form");
var first=document.getElementById("first").value;
var last=document.getElementById("last").value;
var roll=document.getElementById("roll").value;
var schr=document.getElementById("schlr").value;
var mob=document.getElementById("mob").value;
var option=document.getElementById("option").value;
var install=document.getElementById("install").value;


var check=document.getElementById("defaultInline3");
var offline=document.getElementById("defaultInline2");
var mode
if(check.checked)
mode=check.value;
else
mode=offline.value;



var slash=option.concat("/",install);
var name=first.concat(" ",last);
var doc=new jsPDF();
doc.text("GYAN SAGAR ACADEMY",73,25);
doc.text("Fees Challan",89,35);
doc.text("Name: ",15,50);
doc.fromHTML(name,35,43);
doc.text("RollNumber: ",91,50);
doc.fromHTML(roll,125,43);
doc.text("Mob.Number: ",15,60);
doc.fromHTML(mob,50,53);
doc.text("Class/Installment: ",95,60);
doc.fromHTML(slash,140,53);
doc.text("Payment Mode: ",15,73);
doc.fromHTML(mode,60,65);

doc.text("Signature/Stamp",135,104);

doc.save("output.pdf");
}