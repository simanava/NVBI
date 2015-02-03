// JavaScript Document
function popFancy(page, width, height) {
	$.fancybox({
		'href': page,
		'type': 'iframe',
		'width': width,
		'height': height,
		});
}

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