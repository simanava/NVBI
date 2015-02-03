// JScript File

// Global variable used to know if the submit button was submitted, in order to not call the body UnOnload function to track entries
var bSubmitted = 0


//================================================================================================
// Tracks a HOVER on a object
//================================================================================================
function HoverTracking( objID ){
    iPageID = document.getElementById('hPageID');
    iVisitID = document.getElementById('hVisitID');
    $.get('./ajax/hovertracking.aspx?objid=' + objID + '&pageid=' + iPageID.value + '&visitid=' + iVisitID.value + '&rnd=' + Math.random(), function(data) {});
}

//================================================================================================
// Tracks a CLICK on an object
//================================================================================================
function ClickTracking( objID ){    
    iPageID = document.getElementById('hPageID');
    iVisitID = document.getElementById('hVisitID');
    $.get('./ajax/click.aspx?objid=' + objID + '&pageid=' + iPageID.value + '&visitid=' + iVisitID.value + '&rnd=' + Math.random(), function(data) {});        
}   


//================================================================================================
// If the user exits the page with clicking the submit button, all his entries are saved in the DB
//================================================================================================
function ExitTracking( Obj ){
    var JSON_Obj = new Object();
    JSON_Obj = Obj
    // Only track entries IF the form was NOT submitted
    if (bSubmitted == 0){
        
        params = ""
        iPageID = document.getElementById('hPageID');
        iVisitID = document.getElementById('hVisitID');

        // If ContactInfo needs to be tracked
        if (JSON_Obj.bContact)
        {
            params += "&btrackcontact=1&firstname="+document.getElementById('hFname').value+"&lastname="+document.getElementById('hLname').value+"&address1="+document.getElementById('hAddress1').value+"&address2="+document.getElementById('hAddress2').value+"&city="+document.getElementById('hCity').value+"&county="+document.getElementById('hCounty').value+"&zip="+document.getElementById('hZip').value+"&email="+document.getElementById('hEmail').value+"&phone="+document.getElementById('hPhone').value
        }
        
        // If BillingInfo needs to be tracked
        if (JSON_Obj.bBilling)
        {
            params += "&btrackbilling=1&cctype="+document.getElementById('hCCType').value+"&ccnumber="+document.getElementById('hCCNumber').value+"&nameoncard="+document.getElementById('hNameOnCard').value+"&cvv2="+document.getElementById('hCVV2').value+"&expmonth="+document.getElementById('hExpMonth').value+"&expyear="+document.getElementById('hExpYear').value
        } 

        // Do an AJAX call to submit Exit information
        UrlToCall = "./ajax/exittracking.aspx?pageid=" + iPageID.value + "&visitid=" + iVisitID.value + "&rnd=" + Math.random() + params
        $.get(UrlToCall, function(data) {
        }); 
        
        // Pause for 0.5 seconds (to give time for the ajax call to send the info)
        sleep(500);
    }
}

//================================================================================================
// Pauses the javascript for x milliseconds
//================================================================================================
function sleep(delay)
{
    var start = new Date().getTime();
    while (new Date().getTime() < start + delay);
}

//================================================================================================
// OnBlur of a textbox, save the entry in a hidden variable, which will be posted on body Unload
//================================================================================================
function SaveEntry( obj, hobj ){
    hobj.value = obj.value
    bSubmitted = 0 // reset the bSubmitted variable
}


