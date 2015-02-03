window.addEventListener("load", function() {
    setTimeout(function() {
        window.scrollTo(0, 1);
    }, 0);
});

$(document).ready(function() {
    reflowDoc();
    $('a.yesPlease').click(function() {
        $('.contSlide').animate({
            height: 153
        });
        $('.yesPleaseSlide').animate({
            top: 0
        });
        $('a.x').show('fast');
    });
    $('a.x').click(function() {
        $('.contSlide').animate({
            height: 58
        });
        $('.yesPleaseSlide').animate({
            top: -96
        });
        $(this).hide('fast');
    });
});

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

        //PAGE 1
        $('.section2 h1').html('FORMULATED<br>FOR RESULTS');
        $('p.aStudy').html('Raspberry ketones increase body\'s production of adiponectin (natural hormone), which helps to regulate glucose levels, break down fatty acids and boost metabolism.');
        $('p.increaseProd').insertAfter('.fatCells').html('As adiponectin levels increase, fat is sliced up within the cell, making it easier to burn and eliminate.');
        //$('.formContainer').appendTo('.mobForm');
        $('p.descriptRasp').html('Increases metabolism and burns fat.');
        $('p.descriptApplecider').html('Prevents body fat collecting');
        $('p.descriptMango').html('Boosts energy levels and suppresses appetite');
        $('p.descriptGrapefruit').html('Regulates metabolism and aids digestion');
        $('p.descriptGreentea').html('Powerful antioxidant which lowers cholesterol and blood pressure');
        $('p.descriptResveratrol').html('Lowers blood sugar, depletes fat stores and controls appetite');

        //PAGE 2
        $('img.limQuanAvail').insertAfter('.form2');

        //PAGE 3
        $('.offer1').insertAfter('.offer2');
        $('.offer2 .offer p.detail').html('3 FOR 2!');
    } else {
        $('input[type=text]').attr('placeHolder', '');

        //PAGE 1
        $('.section2 h1').html('Clinically proven To Deliver Results');
        $('p.aStudy').html('A study conducted by the National Center for Biotechnology Information (NCBI) found raspberry ketone prevents obesity and activates lipid metabolism. Mice fed a high-fat diet alongside raspberry ketone not only lost weight, but secreted higher amounts of norepinephrine, the hormone which stimulates muscles to work harder and actively burn fat.');
        $('p.increaseProd').insertAfter('.aStudy').html('Raspberry ketones increase the production of the protein hormone adiponectin. Adiponectin regulates glucose levels, fatty acid breakdown and boosts the metabolism. As the levels of adiponectin increase, fat is sliced up within the cell, making it easier to burn and eliminate. Adiponectin is also known to suppress the risk of type 2 diabetes, obesity, non-alcoholic fatty liver disease and atherosclerosis (thickening of artery walls).');
        //$('.formContainer').appendTo('.section1');
        $('p.descriptRasp').html('Providing the fruit with its aroma and flavour, ketones increase levels of adiponectin and norepinephrine hormones. These alter fat metabolism and fat cell size and stimulate the body to use fat for energy.');
        $('p.descriptApplecider').html('Fortified with extra acids and enzymes produced during the fermentation process, apple cider vinegar actively suppresses body fat accumulation and aids weight loss.');
        $('p.descriptMango').html('This rare fruit increases the efficiency of the hormone leptin, which plays a key role in regulating energy intake and output, including appetite and metabolism.');
        $('p.descriptGrapefruit').html('The properties of grapefruit reduce insulin levels and encourage weight loss by regulating fat metabolism. It also acts as an important source of Vitamin C and the fibre pectin, useful in the digestive process.');
        $('p.descriptGreentea').html('With a long history of recognised health benefits, this powerful antioxidant reduces the risk of heart disease, lowers blood pressure and cholesterol and boosts metabolism without increasing heart rate.');
        $('p.descriptResveratrol').html('From the skin of red grapes and other fruit, this natural phenol stimulates production of the gene responsible for reducing fat stores in the body. It lowers blood sugar, increases metabolism, and helps control appetite.');

        //PAGE 3
        $('.offer2').insertAfter('.offer1');
        $('.offer2 .offer p.detail').html('<span>BUY 2, GET</span><br>1 FREE');
    }

    // AUTO SIZE THE SELECTS INSIDE THE STYLED BOXES
    $('.styleSelect').each(function() {
        selWidth = $(this).width() + 50;
        selHeight = $(this).height();
        $(this).find('select').css({
            'width': selWidth,
            'height': selHeight
        });
    });
}


function popFancy(page, width, height) {

    $.fancybox({

        'href': page,

        'type': 'iframe',

        'width': width,

        'height': height
    });
}

function backEndAlerts(con) {
    $(document).ready(function () {
        popContent = '<p class="popUpAlertContent">' + con + '</p>';
        $.fancybox({
            'content': popContent
        });
    });
}

function button_load(buttonId) {
    // Get button object
    var objButton = document.getElementById(buttonId);

    // Disable button
    setTimeout(function () { objButton.setAttribute('disabled', 'disabled'); objButton.setAttribute('style', 'cursor: wait'); }, 0);

    var strAlignment = "top-center";

    $.loading({ align: strAlignment, text: 'Processing...' });
}
