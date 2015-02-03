// JavaScript Document
var g_bUseCatch = true;
var xit = false;
if (!g_bUseCatch) { xit = true; }
function on_exit() {
    if (!xit) {
        xit = true;
        //LOCATION MUST BE EXIST AND HAVE FULL ADDRESS SET! OTHERWISE IT WILL NOT WORK IN FF!
        if (getCookie("rb_DropOffEnabled") != "0") {
            if (DetectBrowser() == "Chrome") {
                setTimeout('redirect();', 0);
            }
            else {
                querystring = window.location.search.substring(1);
                window.location.href = "./Ajax/RedirectorPage.aspx?PURL=" + escape("~/def_drop.aspx?" + querystring) + "&droff=1";
            }
            return "\nYou entered information in the page. Are you sure you want to leave now?\n\n";
        }
    }
}
function redirect() {
    querystring = window.location.search.substring(1);
    window.location.href = "./Ajax/RedirectorPage.aspx?PURL=" + escape("~/def_drop.aspx?" + querystring) + "&droff=1";
}
window.onbeforeunload = on_exit;


function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) c_end = document.cookie.length;
            return unescape(document.cookie.substring(c_start, c_end));
        }
    }
    return "";
}

function DetectBrowser() {
    var agent = navigator.userAgent;
    var browser = "";
    if (agent.indexOf('MSIE') != -1) {
        browser = "IE";
    }
    else if (agent.indexOf('Firefox') != -1) {
        browser = "Firefox";
    }
    else if (agent.indexOf('Chrome') != -1) {
        browser = "Chrome";
    }
    else if (agent.indexOf('Opera') != -1) {
        browser = "Opera";
    }
    else if (agent.indexOf('Safari') != -1) {
        browser = "Safari";
    }

    return browser;
}