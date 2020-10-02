$( document ).ready(function() {
  $(document).delegate('.custom-file-input','change',function(){
    console.log("algo")
    var fileName = $(this).val();
    $(this).next('.custom-file-label').html(fileName);
  });
});
