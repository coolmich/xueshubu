$(document).ready(function(){
  $('.img-box').popover({
      html: true
    , trigger: 'hover'
    , placement: 'top'
    , title: $('.popover-title').html()
    , content: $('.popover-content').html()
    , selector: $('.pop-origin')
  });

})