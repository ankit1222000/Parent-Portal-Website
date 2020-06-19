/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    $('#Science_student').on('click',function(){
        $('#chart').hide();
        $('#Science').show();
       /* $('#Science_girl').show();*/
        $('#Commerse').hide();
        /*$('#Commerse_girl').hide();*/
    });
    
    
    
    $('#Commerse_student').on('click',function(){
        $('#chart').hide();
        $('#Commerse').show();
       /* $('#Commerse_girl').show();*/
        $('#Science').hide();
        /*$('#Science_girl').hide();*/
    });
    $('#button').on('click',function(){
        $('#Commerce_girls').hide();
        $('#Commerce_boys').hide();
        $('#Growth_chart').hide();
        $('#Science_girls').hide();
        $('#Science_boys').show();
    });
    $('#button1').on('click',function(){
        $('#Commerce_girls').hide();
        $('#Commerce_boys').hide();
        $('#Growth_chart').hide();
        $('#Science_girls').show();
        $('#Science_boys').hide();
    });
    $('#button2').on('click',function(){
        $('#Commerce_girls').hide();
        $('#Commerce_boys').show();
        $('#Growth_chart').hide();
        $('#Science_girls').hide();
        $('#Science_boys').hide();
    });
    $('#button3').on('click',function(){
        $('#Commerce_girls').show();
        $('#Commerce_boys').hide();
        $('#Growth_chart').hide();
        $('#Science_girls').hide();
        $('#Science_boys').hide();
    });
    
    
    /*$('#Commerse_boys').hide();*/
    $('#Commerse').hide();
    $('#Commerce_girls').hide();
    $('#Commerce_boys').hide();
    $('#chart').show();
    $('#Growth_chart').show();
    $('#Science').hide();
    $('#Science_girls').hide();
    $('#Science_boys').hide();
   /* $('#Science_girl').hide();*/
});

