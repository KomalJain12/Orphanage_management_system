/*----------------------------------------------------
Template Name: Astha – Charity Bootstrap 5 Template;

Version: 1.0
-------------------------------------------------------*/

(function ($) {
	"use Strict";
/*---------------------------------
     Mean Menu Active
-----------------------------------*/
$('.header-menu-area nav').meanmenu({
    meanMenuContainer: '.mobile-menu',
    meanScreenWidth: "991"
});
/*---------------------------------
     Sticky Menu Active
-----------------------------------*/
$(window).on('scroll',function() {
if ($(this).scrollTop() >50){  
    $('.header-sticky').addClass("is-sticky");
  }
  else{
    $('.header-sticky').removeClass("is-sticky");
  }
});
    
/*----------------------------
    Owl Active
------------------------------ */
/*-------------
    Hero Slider Active
------------------------------*/
$('.hero-slider').owlCarousel({
    smartSpeed: 1000,
    nav: true,
    loop: true,
    animateOut: 'fadeOut',
    animateIn: 'fadeIn',
    autoplay: false,
    autoHeight:true,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    responsive: {
        0: {
            items: 1,
            nav: false,
            dots: true
        },
        768: {
            items: 1,
            nav: false,
            dots: true
        },
        991: {
            items: 1,
        }
    }
}) 
/*--------
    Event Slider Active
----------------------------------*/
var eventSlider = $('.event-slider');
eventSlider.slick({
    arrows: true,
    autoplay: true,
    autoplaySpeed: 2000,
    dots: false,
    pauseOnFocus: true,
    pauseOnHover: true,
    infinite: true,
    slidesToShow: 1,
    slidesToScoll: 1,
    prevArrow: '<button type="button" class="slick-prev"> <i class="fa fa-angle-left"></i> </button>',
    nextArrow: '<button type="button" class="slick-next"><i class="fa fa-angle-right"></i></button>',

}); 
/*----------------------------------- 
    Event Slider 2 Active 
--------------------------------------*/  
 $('.event-slider-img-active').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: true,
  fade: true,
  prevArrow: '<span class="slick-prev"><i class="fa fa-angle-left"></i></span>',
  nextArrow: '<span class="slick-next"><i class="fa fa-angle-right"></i></span>',
  asNavFor: '.event-title-active'
});
$('.event-title-active').slick({
  slidesToShow: 5,
  slidesToScroll: 1,
  asNavFor: '.event-slider-img-active',
  dots: false,
  arrows: false,
  autoplay: true,
  focusOnSelect: true,
  vertical: true,
  responsive: [
            {
              breakpoint: 1200,
              settings: {
                slidesToShow: 5,
                slidesToScroll: 5
              }
            },
            {
              breakpoint: 991,
              settings: {
                slidesToShow: 5,
                slidesToScroll: 5
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            }
          ]
});
/*-------------
    Project Slider Active
------------------------------*/
$('.project-active').owlCarousel({
    loop:true,
    margin:0,
    nav:false,
    autoplay: true,
    autoplayTimeout: 10000,
    items:5,
    dots: false,
    lazyLoad: true,
    responsive: {
        0: {
            items: 2,
            nav: false,
            dots: true
        },
        768: {
            items: 4,
            nav: false,
            dots: true
        },
        991: {
            items: 5,
        }
    }
}); 

/*-----------------------------
    Testimonial Slider Active
------------------------------*/
$('.testimonial-active').slick({
    arrows: false,
    dots: false,
    pauseOnFocus: true,
    pauseOnHover: true,
    infinite: true,
    slidesToShow: 2,
    slidesToScoll: 2,
    zIndex:1,
    prevArrow: '<button type="button" class="slick-prev"> <i class="fa fa-angle-left"></i> </button>',
    nextArrow: '<button type="button" class="slick-next"><i class="fa fa-angle-right"></i></button>',
    responsive: [
    {
      breakpoint: 1200,
      settings: {
        slidesToShow: 2,
      }
    },
    {
      breakpoint: 992,
      settings: {
        slidesToShow: 1,
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
      }
    }
  ]
});
/*--------------------------------
    Brand Active
----------------------------------*/
 $('.brand-active').owlCarousel({
        smartSpeed: 1000,
        nav: true,
        navText: ['<i class="zmdi zmdi-chevron-left"></i>', '<i class="zmdi zmdi-chevron-right"></i>'],
        responsive: {
            0: {
                items: 2
            },
            450: {
                items: 3
            },
            768: {
                items: 4
            },
            1000: {
                items: 5
            },
            1200: {
                items: 5
            }
        }
}) 
/*--------------------------
    Counter Up
---------------------------- */
$('.counter').counterUp({
    delay: 70,
    time: 5000
});
/*=============  Gallery Mesonry Activation  ==============*/
$('.masonry__wrap').imagesLoaded(function () {

    // filter items on button click
    $('.gallery__menu').on('click', 'button', function () {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({
          filter: filterValue
        });
    });

    // change is-checked class on buttons
    $('.gallery__menu button').on('click', function () {
        $('.gallery__menu button').removeClass('is-checked');
        $(this).addClass('is-checked');
        var selector = $(this).attr('data-filter');
        $containerpage.isotope({
          filter: selector
        });
        return false;
    });

    // init Isotope
    var $grid = $('.masonry__wrap').isotope({
        itemSelector: '.gallery__item',
        percentPosition: true,
        transitionDuration: '0.7s',
        layoutMode: 'fitRows',
        masonry: {
          // use outer width of grid-sizer for columnWidth
          columnWidth: '.gallery__item',
        }
    });
});
/*----------------------------------
    ScrollUp Active
-----------------------------------*/
$.scrollUp({
    scrollText: '<i class="fa fa-angle-up"></i>',
    easingType: 'linear',
    scrollSpeed: 900,
    animation: 'fade'
});
/*----------------------------------
	 Instafeed Active 
------------------------------------*/
if($('#Instafeed').length) {
    var feed = new Instafeed({
        get: 'user',
        userId: 7093388560,
        accessToken: '7093388560.1677ed0.8e1a27120d5a4e979b1ff122d649a273',
        target: 'Instafeed',
        resolution: 'thumbnail',
        limit: 6,
        template: '<li><a href="{{link}}" target="_new"><img src="{{image}}" /></a></li>',
    });
    feed.run(); 
}

/*--------------------------------
    Match Height Active
----------------------------------*/
$('.single-feature-inner, .info-item').matchHeight();
/*------------------------------------------
    Quick Donation Toggle Class Active
-------------------------------------------*/
if ($(".quick-donation-section").length) {
    var donateList = $(".quick-donation-section .donate-list .box");

    donateList.on("click", function(e) {
        var $this = $(this);

        if (!$this.hasClass("active")) {
            $this.addClass("active");
            $this.siblings().removeClass("active");
        }

    })
} 
/*----------------------------------- 
    Single Product Side Menu Active 
--------------------------------------*/  
$('.single-slide-menu').slick({
		prevArrow: '<i class="fa fa-angle-left"></i>',
		nextArrow: '<i class="fa fa-angle-right slick-next-btn"></i>',
        slidesToShow: 3,
        responsive: [
            {
              breakpoint: 1200,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3
              }
            },
            {
              breakpoint: 991,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            }
          ]
	});
    
$('.single-slide-menu a').on('click',function(e){
      e.preventDefault();
     
      var $href = $(this).attr('href');
     
      $('.single-slide-menu a').removeClass('active');
      $(this).addClass('active');
     
      $('.product-details-large .tab-pane').removeClass('active show');
      $('.product-details-large '+ $href ).addClass('active show');
     
  })
/*------------------------------ 
10. Cart Plus Minus Button
---------------------------------*/
 $(".cart-plus-minus").append('<div class="dec qtybutton"><i class="zmdi zmdi-chevron-down"></i></div><div class="inc qtybutton"><i class="zmdi zmdi-chevron-up"></i></div>');
  $(".qtybutton").on("click", function() {
    var $button = $(this);
    var oldValue = $button.parent().find("input").val();
    if ($button.hasClass('inc')) {
      var newVal = parseFloat(oldValue) + 1;
    } else {
       // Don't allow decrementing below zero
      if (oldValue > 0) {
        var newVal = parseFloat(oldValue) - 1;
        } else {
        newVal = 0;
      }
      }
    $button.parent().find("input").val(newVal);
  });
/* --------------------------------------------------------
	 Venobox Active
* -------------------------------------------------------*/  
  $('.venobox').venobox({
        border: '10px',
        titleattr: 'data-title',
        numeratio: true,
        infinigall: true
    }); 
/*---------------------------
    Nice Select
------------------------------- */	
$('.nice-select').niceSelect(); 
/*------------------------------ 
    Toggle Function Active
---------------------------------*/   
/*--- showlogin toggle function ----*/
$('#showlogin').on('click', function() {
    $('#checkout-login').slideToggle(900);
});

/*--- showlogin toggle function ----*/
$('#showcoupon').on('click', function() {
    $('#checkout_coupon').slideToggle(900);
});
/*--- showlogin toggle function ----*/
$('#cbox').on('click', function() {
    $('#cbox-info').slideToggle(900);
});
    
/*--- showlogin toggle function ----*/
$('#ship-box').on('click', function() {
    $('#ship-box-info').slideToggle(1000);
});
    
})(jQuery);