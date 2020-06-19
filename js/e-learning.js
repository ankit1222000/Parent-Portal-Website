/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
     //first vedio
    $('#exampleModalCenter').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/vCkuD3gXhow" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter').on('hidden.bs.modal', function () {
       $('#exampleModalCenter .modal-body').empty();
    });
    
    //second vedio
    $('#exampleModalCenter1').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter1 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/UB1O30fR-EE" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter1').on('hidden.bs.modal', function () {
       $('#exampleModalCenter1 .modal-body').empty();
    });
    
    //third vedio
    $('#exampleModalCenter2').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter2 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/yfoY53QXEnI" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter2').on('hidden.bs.modal', function () {
       $('#exampleModalCenter2 .modal-body').empty();
    });
    
    //forth vedio
    $('#exampleModalCenter3').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter3 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/PkZNo7MFNFg" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter3').on('hidden.bs.modal', function () {
       $('#exampleModalCenter3 .modal-body').empty();
    });
    
    //fifth vedio
    $('#exampleModalCenter4').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter4 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/3n6UA9NPZLA" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter4').on('hidden.bs.modal', function () {
       $('#exampleModalCenter4 .modal-body').empty();
    });
    
    //sixth vedio
    $('#exampleModalCenter5').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter5 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/kSF6D4Ld4hk" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter5').on('hidden.bs.modal', function () {
       $('#exampleModalCenter5 .modal-body').empty();
    });
    
    //seventh vedio
    $('#exampleModalCenter6').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter6 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/c_DNUfwp8Iw" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter6').on('hidden.bs.modal', function () {
       $('#exampleModalCenter6 .modal-body').empty();
    });
    
    //eigth vedio
    $('#exampleModalCenter7').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter7 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/irRqCn-Q8Uw" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter7').on('hidden.bs.modal', function () {
       $('#exampleModalCenter7 .modal-body').empty();
    });
    
    //ninth vedio
    $('#exampleModalCenter8').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter8 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/mvlXoqnYgY8" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter8').on('hidden.bs.modal', function () {
       $('#exampleModalCenter8 .modal-body').empty();
    });
    
    //tenth vedio
    $('#exampleModalCenter9').on('show.bs.modal', function (e) {
      var idVideo = $(e.relatedTarget).data('id');
      $('#exampleModalCenter9 .modal-body').html('<iframe width="560" height="315" src="https://www.youtube.com/embed/g7n5nsF3F3s" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    });
    //on close remove
    $('#exampleModalCenter9').on('hidden.bs.modal', function () {
       $('#exampleModalCenter9 .modal-body').empty();
    });
});
