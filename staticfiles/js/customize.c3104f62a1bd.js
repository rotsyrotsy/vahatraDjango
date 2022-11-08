
  $('.show-more-btn.thm-btn.brd-rd40').on('click', function() {  
   
    var id = $(this).data('id');
    $('#'+id).css('display','none');

    if ( $(this).text() == 'Show more' ){  
        $('#'+id).css('display','block');
        $(this).html('Show less');
    }else if ( $(this).text() == 'Voir plus' ){  
        $('#'+id).css('display','block');
        $(this).html('Voir moins');
    } else if ( $(this).text() == 'Show less' ){
        $('#'+id).css('display','none');
        $(this).html('Show more');
    }else if ( $(this).text() == 'Voir moins' ){
        $('#'+id).css('display','none');
        $(this).html('Voir plus');
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
            breakpoint: 820,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 2
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
    autoplaySpeed: 3000,
    prevArrow: '<button class="slide-arrow prev-arrow"></button>',
    nextArrow: '<button class="slide-arrow next-arrow"></button>',
    responsive: [
        {
            breakpoint: 820,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 2
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

$('.mycaroussel-index').slick({
    slidesToShow: 1,
    autoplay: true,
    autoplaySpeed: 5000,
    fade: true,
    prevArrow: '<button class="slide-arrow-index previous-arrow-index"></button>',
    nextArrow: '<button class="slide-arrow-index next-arrow-index"></button>',
    responsive: [
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
})


$('.mycaroussel-single').slick({
    dots: true,
    slidesToShow: 1,
    autoplay: true,
    autoplaySpeed: 1000,
    responsive: [
        {
            breakpoint: 820,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 1
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


$( document ).ready(function() {
    $('.slide-arrow-index').css('display','none');
});
$( ".custom-featured-item" ).hover(
    function() {
        $('.slide-arrow-index').css('display','block');
    }, function() {
        $('.slide-arrow-index').css('display','none');
      }
  );

  