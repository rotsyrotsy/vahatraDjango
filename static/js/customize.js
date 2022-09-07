
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

  $('.mycaroussel-center').slick({
    dots: true,
    focusOnSelect: true,
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    speed: 1000,
    centerMode: true,
    centerPadding: '60px',
    responsive: [
        {
            breakpoint: 768,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 3
            }
        },
        {
            breakpoint: 480,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 1
            }
        }
    ]
});

$('.mycaroussel-simple').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    focusOnSelect: true,
    prevArrow: '<button class="slide-arrow prev-arrow"></button>',
    nextArrow: '<button class="slide-arrow next-arrow"></button>'
});

