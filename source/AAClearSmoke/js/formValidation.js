// JavaScript Document
var objField = $('.inputField');
$(objField, this).blur(function validation(err) {
    var strUserInput = this.value;
    var className = $(this).attr('class');
    var classNameSplit = className.split(' ');
    var field = this;
    var defaultValue = this.defaultValue;
    var currentValue = $(this).val();

    if (currentValue == defaultValue) {
        isBad(field);
        return false;
    }

    switch (classNameSplit[1]) {

        // FORM VALIDATION CONDITIONS
        case "alpha":
            if (strUserInput.match(/^[A-Za-z\ \-\']+$/)) {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "alphaNum":
            if (strUserInput.match(/^[A-Za-z0-9\/\\.,\'-:;\ \-]+$/)) {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "email":
            if (strUserInput.match(/^([a-zA-Z0-9\+_\-]+)(\.[a-zA-Z0-9\+_\-]+)*@([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,6}$/)) {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "phone":
            if (strUserInput.match(/^[0-9\(\)\+\.\s-]{11,}$/)) {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "postCode":
            if (strUserInput.match(/^(([A-Za-z]){1,2})((\d|[A-Za-z]){1,2})\s*(\d{1})([A-Za-z]{2})$/)) {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "ccNum":
            if (Mod10(strUserInput) && strUserInput != "") {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "cvvNo":
            if ($('.cvvNo').val().match(/\d{3,}/) && strUserInput.match(/^[0-9]+$/)) {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "value":
            if (strUserInput != "") {
                isGood(field);
            } else {
                isBad(field);
            }
            break

        case "selectBox":
            if (strUserInput != "") {
                $(this).closest('.styleSelect').removeClass('error');
            } else {
                $(this).closest('.styleSelect').addClass('error');
            }
            break

        case "expireDate":
            today = new Date();
            carddate = new Date(document.getElementById('year').value, document.getElementById('month').value, today.getDate());
            if (today > carddate || carddate == '') {
                $('#month, #year').closest('.styleSelect').addClass('error');
            } else {
                $('#month, #year').closest('.styleSelect').removeClass('error');
            }
            break

    }

    function isGood(field) {
        $(field).removeClass('error');
    };

    function isBad(field) {
        $(field).addClass('error');
    };

});

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

    for (var j = 0; j < len; j++) {
        temp = "" + iCCN.substring(j, j + 1);
        if (valid.indexOf(temp) == "-1") bNum = false;
    }
    if (!bNum) {}
    iCCN = parseInt(iCCN);

    if (len == 0) { /* nothing, field is blank */
        bResult = true;
    } else {
        if (len >= 15) { //15 or 16 for Amex or V/MC
            for (var i = len; i > 0; i--) {
                digit = "digit" + i;
                //alert(digit);

                calc = parseInt(iCCN) % 10; //right most digit
                calc = parseInt(calc);
                //alert(calc);
                iTotal += calc;
                //parseInt(cardnum.charAt(count))i:\t" + calc.toString() + " x 2 = " + (calc *2) +" : " + calc2 + "\n";
                // commented out below which wrote NONALTERED digit to page for demo only.
                //document.form1.textfield.value += "" + i + ":\t" + calc.toString() + " x 1 = " + calc + "\n";

                i--;
                digit = "digit" + i;

                iCCN = iCCN / 10; // subtracts right most digit from ccNum
                calc = parseInt(iCCN) % 10; // step 1 double every other digit
                //alert( iCCN + " " + calc);
                calc2 = calc * 2;

                switch (calc2) {
                    case 10:
                        calc2 = 1;
                        break; //5*2=10 & 1+0 = 1
                    case 12:
                        calc2 = 3;
                        break; //6*2=12 & 1+2 = 3
                    case 14:
                        calc2 = 5;
                        break; //7*2=14 & 1+4 = 5
                    case 16:
                        calc2 = 7;
                        break; //8*2=16 & 1+6 = 7
                    case 18:
                        calc2 = 9;
                        break; //9*2=18 & 1+8 = 9
                    default:
                        calc2 = calc2; //4*2= 8 &   8 = 8  -same for all lower numbers
                }
                iCCN = iCCN / 10; // subtracts right most digit from ccNum
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

$('.subBtn').click(function(e) {
    if ($(objField.val() == "")) {
        $('.inputField').blur();
    }
    if ($(objField).hasClass('error') || $('.styleSelect').hasClass('error')) {
        e.preventDefault();
    }
});