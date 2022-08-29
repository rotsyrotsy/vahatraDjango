
  $('.show-more-btn.thm-btn.brd-rd40').on('click', function() {  
   
    var id = $(this).data('id');
    $('#'+id).css('display','none');

    if ( $(this).text() == 'Show more' ){  
        $('#'+id).css('display','block');
        $(this).html('Show less');
    } else {
        $('#'+id).css('display','none');
        $(this).html('Show more');
    };

    var idfocus = $(this).data('focus');
    $([document.documentElement, document.body]).animate({
        scrollTop: $('#'+idfocus).offset().top
    }, 0);
  });

