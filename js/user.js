/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    $(".button").click(function(){
        $(this).addClass("active");
        
        /*setTimeout(function(){
            $(".button").addClass("success");
        },3700);*/
        
        setTimeout(function(){
            $(".button").removeClass("active");
            /*$(".button").removeClass("success");*/
        },5000);
    });   
});

