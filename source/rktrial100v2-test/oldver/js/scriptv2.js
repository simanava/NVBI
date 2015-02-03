// JavaScript Document
function popFancy(page, width, height) {
	$.fancybox({
		'href': page,
		'type': 'iframe',
		'width': width,
		'height': height,
		});
}

$(document).ready(function() {
 	$('.shipPromo input').click(function() {
		defVal = this.defaultValue;
  		$(this).val('');
	});
	$('.shipPromo input').blur(function() {
		currentVal = $(this).val();
		if (currentVal == '')
		{
			$(this).val(defVal);
		}
	});
	
	$('.btnSubPromo').click(function() {
		codeVal = $('.shipPromo input').val();
		if (codeVal == 'SHIPSAVE')
		{
			$('#p2total, #p2pnp').html('&pound;4.95');
            $('#hSelectedOption').val('2');
            $('#saleprocessdetailid').val('28');
		}
	});
	
});

function button_load(buttonId) {
    // Get button object
    var objButton = document.getElementById(buttonId);
    
    // Disable button
    setTimeout(function() { objButton.setAttribute('disabled', 'disabled'); objButton.setAttribute('style', 'cursor: wait'); }, 0);
    
    var strAlignment = "top-center";
//    if (typeof (pageType) != "undefined") {
//        if (pageType == 1 || pageType == 2) {
//            strAlignment = "bottom-center";
//        }
//    }
    $.loading({ align: strAlignment, text: 'Processing...' });
}

function  backEndAlerts(con) {
    $(document).ready(function() {
	    popContent = '<p class="popUpAlertContent">' + con + '</p>';
	    $.fancybox({
		    'content': popContent
	    });
	});
}