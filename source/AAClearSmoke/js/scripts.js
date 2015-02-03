$(document).ready(function() {
    reflowDoc();

    // AUTO SIZE THE SELECTS INSIDE THE STYLED BOXES
    $('.styleSelect').each(function() {
        selWidth = $(this).width() + 50;
        selHeight = $(this).height();
        $(this).find('select').css({
            'width': selWidth,
            'height': selHeight
        });
    });

    // ADD INCLUDES
    $('.include').each(function() {
        var targetClass = $(this).attr('class').split(' ')[1];
        var inc = $(this);
        $.get(inc.attr('title'), function(data) {
            inc.replaceWith(data);
        });
    });

});

// ON WINDOW RESIZE

var sizeDetect;
$(window).resize(function() {
    clearTimeout(sizeDetect);
    sizeDetect = setTimeout(reflowDoc, 10);
});

function reflowDoc() {
    var winWidth = $(window).width();
    if (winWidth < 767) {

        $('label').each(function() {
            var labelValue = $(this).html();
            var labelValue = labelValue.replace(':', '');
            $(this).next('input[type=text]').attr('placeHolder', labelValue);
            $(this).next('input[type=number]').attr('placeHolder', labelValue);
        });

        // PAGE1
        $('.r2c1 h2, .r2c1 p').appendTo('.r1c3');
        $('.r2c5 h2, .r2c5 p').appendTo('.r3c3');
        $('img.tea').appendTo('.r2c1');
        $('img.smoking').appendTo('.r3c1');
        $('img.beforeAfter, img.doc').insertAfter('.section5 h1');
        $('.section6 ul li.percent95').html('Increase Brightness');
        $('.section6 ul li.percent86').html('Reduce Staining');
        $('.section6 ul li.percent80').html('Decrease Yellowness');
        $('.section1 .section form').insertAfter('.section6');
        $('.freeCarry').insertAfter('img.product');
        $('.contInsideTheKit').appendTo('.mobInsideTheKit');
        $('.yellowTeeth').appendTo('.mobYellowTeeth');
        $('.yesPlease, .noThanks').appendTo('.btnCont');
        $('.section1 .section ul.ticks li:first-child').html('Brightens Teeth By 6 Shades');
        $('.contInsideTheKit h1').html('INSIDE YOUR KIT');
        $('a.claimYourTrial').attr('href', '#form');
        $('.subTotal').html('Carry Case');
        $('.subPrice').html('FREE');
        $('.couple').attr('src', 'img/coupleMob.png');
        $('.couple2').attr('src', 'img/couple2mob.png');

        // PAGE2
        $('.page2 form h1').insertBefore('.page2 table');

    } else {
        // PAGE1
        $('input[type=text]').attr('placeHolder', '');
        $('.r1c3 h2, .r1c3 p').appendTo('.r2c1');
        $('.r3c3 h2, .r3c3 p').appendTo('.r2c5');
        $('img.tea').appendTo('.r1c3');
        $('img.smoking').appendTo('.r1c5');
        $('img.beforeAfter, img.doc').appendTo('.leftCol');
        $('form').appendTo('.section1 .section');
        $('.freeCarry').insertAfter('.sendMyOrder');
        $('.contInsideTheKit').appendTo('.section2');
        $('.yellowTeeth').insertBefore('.easySteps');
        $('.yesPlease, .noThanks').insertAfter('p.before');
        $('.section1 .section ul.ticks li:first-child').html('Brightens Teeth By Up To 6 Shades');
        $('.contInsideTheKit h1').html('INSIDE THE KIT');
        $('a.claimYourTrial').attr('href', '');
        $('.subTotal').html('Subtotal');
        $('.subPrice').html('&pound;0.00');
        $('.couple2').attr('src', 'img/couple2.png');

        // PAGE2
        $('h1').insertAfter('.arrowL');
    }
}