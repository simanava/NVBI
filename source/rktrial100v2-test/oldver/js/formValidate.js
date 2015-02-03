// JavaScript Document
var PageType = 0;
$(function() {
    //console.log('hello');


    //ROTATE THIS THING
    /*$('.subBtn').click(function(){
    var interval = null;
    var counter = 0;
    var $this = $(this);
    clearInterval(interval);

	interval = setInterval(function(){
    if (counter != -360) {
    counter -= 1;
    $('.subBtn').css({
    MozTransform: 'rotate(-' + -counter + 'deg)',
    WebkitTransform: 'rotate(' + -counter + 'deg)',
    transform: 'rotate(' + -counter + 'deg)'
    }).animate({top: -190 + 'px'},2200, 'easeOutBounce');
    }
    }, 1);
    });*/

    // e = element
    // str = string
    // obj = object

    var strJSErrorList = ""; // Error message handler

    strStatus = "";
    var objIcon = $("<div class='status'></div>");
    var strIconMsg = $(objIcon).text(strStatus);
    var objField = $('.inputField');

    $(objField).css('border', '1px solid #fff');
    $(objField).after(objIcon);
    $('.status').css({ opacity: 0, right: 10 + 'px' });
    //    $('.cvv').next('.status').addClass('shorten');
    //    $('.expiry').next('.status').addClass('shorten');
    //    $('.ccNum').next('.status').addClass('shorten');

    $(objField, this).blur(function validation(err) {

        var strUserInput = this.value;
        var strcardInput = $('.ccNum').value;
        //var strDatesInput = $('.expiry').value;
        var className = $(this).attr('class');
        var classNameSplit = className.split(' ');

        field = "";

        switch (classNameSplit[1]) {
            case "alpha": if (strUserInput.match(/^[A-Za-z\ \-]+$/)) { field = this; isGood(field); $(this).removeClass('error'); } else { field = this; isBad(field); $(this).addClass('error'); }
                break
            case "alphaNum": if (strUserInput.match(/^[A-Za-z0-9]/)) { field = this; isGood(field); $(this).removeClass('error'); } else { field = this; isBad(field); $(this).addClass('error'); }
                break
            case "numeric": if (strUserInput.match(/^[0-9]+$/)) { field = this; isGood(field); $(this).removeClass('error'); } else { field = this; isBad(field); $(this).addClass('error'); }
                break
            case "phone": if (strUserInput.match(/^[0-9\(\)\+\.\s-]{11,}$/)) { field = this; isGood(field); $(this).removeClass('error'); } else { field = this; isBad(field); $(this).addClass('error'); }
                break
            		case"email":
		if (strUserInput.match(/^([a-zA-Z0-9\+_\-]+)(\.[a-zA-Z0-9\+_\-]+)*@([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,6}$/)) {
			isGood(field);
		} 
		else {
			isBad(field);
		}
		break
            case "ukZip": if (strUserInput.match(/^(([A-Za-z]){1,2})((\d|[A-Za-z]){1,2})\s*(\d{1})([A-Za-z]{2})$/)) { field = this; isGood(field); $(this).removeClass('error'); } else { field = this; isBad(field); $(this).addClass('error'); }
                break
            case "value": if (strUserInput != "") { field = this; isGood(field); $(this).removeClass('error'); } else { field = this; isBad(field); $(this).addClass('error'); }
                break
            case "expiry": if (IsValidExpireDate() && strUserInput != "") { setExpiryStatus(1) } else { setExpiryStatus(0) }
                break
            case "ccNum": if (Mod10(strUserInput) && strUserInput != "") { field = this; isGood(field); $(this).removeClass('error'); } else { field = this; isBad(field); $(this).addClass('error'); }
                break
        }

        //console.log(strUserInput)

        function isGood(field) {
            var warning = $(field).next('.status');
            if ($(warning).hasClass('isBad')) {
                $(warning).animate({ opacity: 0, right: 6 + 'px' }, 200);
            };
            $(warning).removeClass('isBad');
            $(warning).addClass('isGood');
            $(warning).text('✔');
            $(field).next('.isGood, .isBad').stop('true', 'true').animate({ opacity: 1, right: 2 + 'px' }, 200);
            $(field).css({ border: '1px solid #363' });
            $(field).animate({ backgroundColor: '#8c8' }, 200);
        };

        function isBad(field) {

            var warning = $(field).next('.status');
            if ($(warning).hasClass('isGood')) {
                $(warning).animate({ opacity: 0, right: 6 + 'px' }, 200);
            };
            $(warning).removeClass('isGood');
            $(warning).addClass('isBad');
            $(warning).text("x");
            $(field).next('.isGood, .isBad').stop('true', 'true').animate({ opacity: 1, right: 2 + 'px' }, 200);
            $(field).css({ border: '1px solid #633' });
            $(field).animate({ backgroundColor: '#e66' }, 200);

            // Add field to error list
            strJSErrorList += field.id + ", ";
        };

        function setExpiryStatus(status) {
            if (status == 1) {
                isGood($('.expiry'));
                $('.expiry').removeClass('error');
            }
            else {
                isBad($('.expiry'));
                $('.expiry').addClass('error');
            }
        };

        //strUserInput.match(/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/)			
        //$(this).css('backgroundColor','#f99');

    });
///////////////////////////////////////////////
/////////////////////////////////////////////
    $('.subBtn').click(function(e) {
        strJSErrorList = "";
        if ($(objField.val() == "")) {
            $('.inputField').blur();
            //e.preventDefault();
        }
        if ($(objField).hasClass('error')) {
            e.preventDefault();

            // Do an Ajax call to submit all the data posted on this submit
            if (pageType == 1) // Contact
            {
                visitID = $('#hVisitID').val();
                pageID = $('#hPageID').val();
                Firstname = $('#Fname').val();
                Lastname = $('#LName').val();
                Address1 = $('#Address1').val();
                City = $('#City').val()
                County = $('#County').val();
                Zip = $('#Zip').val();
                Email = $('#Email').val();
                Phone = $('#Phone').val();
                Params = "visitid=" + visitID + "&pageid=" + pageID + "&firstname=" + escape(Firstname) + "&lastname=" + escape(Lastname) + "&address1=" + escape(Address1) + "&city=" + escape(City) + "&county=" + escape(County) + "&zip=" + escape(Zip) + "&email=" + escape(Email) + "&phone=" + escape(Phone) + "&errorlist=" + strJSErrorList + "&btrackcontact=1"
                // Call Ajax page to perform action
                $.get('./Ajax/SubmitTracking.aspx?' + Params + '&rnd=' + Math.random(), function(data) { });
            }
            else if (pageType == 2) // Billing
            {
                visitID = document.getElementById('hVisitID').value
                pageID = document.getElementById('hPageID').value
                ExpMonth = document.getElementById('ExpirationMonth');
                ExpYear = document.getElementById('ExpirationYear');
                //NameOnCard = document.getElementById('NameOnCard');
                var CardNumber = document.getElementById('CCNumber');
                var CVV2 = document.getElementById('CVV2');

                Params = "visitid=" + visitID + "&pageid=" + pageID + "&nameoncard=&cardnumber=" + escape(CardNumber.value) + "&cvv2=" + escape(CVV2.value) + "&expmonth=" + escape(ExpMonth.value) + "&expyear=" + escape(ExpYear.value) + "&errorlist=" + escape(strJSErrorList) + "&btrackbilling=1"
                // Call Ajax page to perform action
                $.get('./Ajax/SubmitTracking.aspx?' + Params + '&rnd=' + Math.random(), function(data) { });
            }
            else if (pageType == 3) // DropOff
            {
                // First Contact
                visitID = $('#hVisitID').val();
                pageID = $('#hPageID').val();
                Firstname = $('#Fname').val();
                Lastname = $('#LName').val();
                Address1 = $('#Address1').val();
                City = $('#City').val()
                County = $('#County').val();
                Zip = $('#Zip').val();
                Email = $('#Email').val();
                Phone = $('#Phone').val();

                Params = "visitid=" + visitID + "&pageid=" + pageID + "&firstname=" + escape(Firstname) + "&lastname=" + escape(Lastname) + "&address1=" + escape(Address1) + "&city=" + escape(City) + "&county=" + escape(County) + "&zip=" + escape(Zip) + "&email=" + escape(Email) + "&phone=" + escape(Phone) + "&errorlist=" + strJSErrorList + "&btrackcontact=1"
                // Call Ajax page to perform action
                $.get('./Ajax/SubmitTracking.aspx?' + Params + '&rnd=' + Math.random(), function(data) { });

                // Second Billing
                visitID = document.getElementById('hVisitID').value
                pageID = document.getElementById('hPageID').value
                ExpMonth = document.getElementById('ExpirationMonth');
                ExpYear = document.getElementById('ExpirationYear');
                //NameOnCard = document.getElementById('NameOnCard');
                var CardNumber = document.getElementById('CCNumber');
                var CVV2 = document.getElementById('CVV2');

                Params = "visitid=" + visitID + "&pageid=" + pageID + "&nameoncard=&cardnumber=" + escape(CardNumber.value) + "&cvv2=" + escape(CVV2.value) + "&expmonth=" + escape(ExpMonth.value) + "&expyear=" + escape(ExpYear.value) + "&errorlist=" + escape(strJSErrorList) + "&btrackbilling=1"
                // Call Ajax page to perform action
                $.get('./Ajax/SubmitTracking.aspx?' + Params + '&rnd=' + Math.random(), function(data) { });
            }
        }
        else //if ($(objField).val() != "" && !$(objField).hasClass('error')){
        {
            // Set dropoff value
            xit = true;
            button_load('btnSubmit');
        }
        //}
    });

///////////////////////////////////
///////////////////////////////////
    // Written by David Leppek of Pay By Touch Merchant Services as a free easy method of validating a credit card
    function Mod10(ccNumb) { //v2.0
        var valid = "0123456789"
        var len = ccNumb.length;
        var bNum = true;
        var iCCN = ccNumb;
        var sCCN = ccNumb.toString();
        var iCCN;
        var iTotal = 0;
        var bResult = false;
        var digit;
        var temp;
        iCCN = sCCN.replace(/^\s+|\s+$/g, ''); // strip spaces
        //alert(iCCN);
        for (var j = 0; j < len; j++) {
            temp = "" + iCCN.substring(j, j + 1);
            if (valid.indexOf(temp) == "-1") bNum = false;
        }
        if (!bNum) { }
        iCCN = parseInt(iCCN);

        if (len == 0) { /* nothing, field is blank */
            bResult = true;
        } else {
            if (len >= 15) {		//15 or 16 for Amex or V/MC
                for (var i = len; i > 0; i--) {
                    digit = "digit" + i;
                    //alert(digit);

                    calc = parseInt(iCCN) % 10; //right most digit
                    calc = parseInt(calc);
                    //alert(calc);
                    iTotal += calc; 	//parseInt(cardnum.charAt(count))i:\t" + calc.toString() + " x 2 = " + (calc *2) +" : " + calc2 + "\n";
                    // commented out below which wrote NONALTERED digit to page for demo only.
                    //document.form1.textfield.value += "" + i + ":\t" + calc.toString() + " x 1 = " + calc + "\n";

                    i--;
                    digit = "digit" + i;
                    //alert(digit);

                    iCCN = iCCN / 10; 	// subtracts right most digit from ccNum
                    calc = parseInt(iCCN) % 10; // step 1 double every other digit
                    //alert( iCCN + " " + calc);
                    calc2 = calc * 2;

                    switch (calc2) {
                        case 10: calc2 = 1; break; //5*2=10 & 1+0 = 1
                        case 12: calc2 = 3; break; //6*2=12 & 1+2 = 3
                        case 14: calc2 = 5; break; //7*2=14 & 1+4 = 5
                        case 16: calc2 = 7; break; //8*2=16 & 1+6 = 7
                        case 18: calc2 = 9; break; //9*2=18 & 1+8 = 9
                        default: calc2 = calc2; 		//4*2= 8 &   8 = 8  -same for all lower numbers
                    }
                    iCCN = iCCN / 10; 	// subtracts right most digit from ccNum
                    iTotal += calc2;
                    // commented out below which wrote MULTIPLIED digit to page for demo only
                    //document.form1.textfield.value += "" + i +":\t" + calc.toString() + " x 2 = " + (calc *2) +" : " + calc2 + "\n";
                }
                // commeneted out SUM below for demo only
                //document.form1.textfield.value += "\t\tSum: " + iTotal + "\n";
                if ((iTotal % 10) == 0) {
                    //document.calculator.results.value = "Yes"; 
                    bResult = true;
                } else {
                    //document.calculator.results.value = "No"; 
                    bResult = false;
                }
            }
        }

        // change alert to on-page display or other indication if needed.
        if (!bResult)
            return false
        else
            return true
    }


})

function openPopUp(linkURL) {
    window.open(linkURL, 'popup', 'width=600,height=600,scrollbars=yes')
}

function IsValidExpireDate() {
    today = new Date()
    carddate = new Date(document.getElementById('ExpirationYear').value, document.getElementById('ExpirationMonth').value, today.getDate())
    if (today > carddate) {
        return false;
    }
    else {
        return true;
    }
}