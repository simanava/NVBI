<%@ page language="C#" autoeventwireup="true" inherits="BillingInfo2, App_Web_billing_info2.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Raspberry Ketone ProSlim Billing Page</title>
    <link href="oldver/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="oldver/css/generic.css" rel="stylesheet" type="text/css" />
    <link href="oldver/css/p2v2.css" rel="stylesheet" type="text/css" />
    <link href="oldver/css/jquery_loading.css" rel="stylesheet" type="text/css" />
    <link href="oldver/css/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" />
    <script src="oldver/js/jQuery.js" type="text/javascript"></script>
    <script src="oldver/js/jquery_loading/jquery.loading.1.6.4.min.js" type="text/javascript"></script>
    <script src="oldver/js/tracking.js" type="text/javascript"></script>
    <script src="oldver/js/formValidation.js" type="text/javascript"></script>
    <asp:Literal ID="ltrDrop" runat="server">
    <script src="oldver/js/dropOff_billing.js" type="text/javascript"></script>
    </asp:Literal>
    <script src="oldver/js/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>
    <script src="oldver/js/scriptv2.js" type="text/javascript"></script>
    <script type="text/javascript">
        function popFancy(page, width, height) {
            $.fancybox({
                'href': page,
                'type': 'iframe',
                'width': width,
                'height': height
            });
        }
    </script>
    <script type="text/javascript">
        pageType = 2;
    </script>
</head>
<body>
    <div class="wrapMain">
        <table width="380" cellpadding="0" cellspacing="0" border="0" class="product">
            <tr>
                <td colspan="2" height="96" valign="top">
                    <h1 class="productTableHead">Raspberry Ketone ProSlim Trial</h1>
                    <p class="productTableSubhead">The ultimate natural weight loss formula</p>
                </td>
                <td width="60" align="right" valign="top">
                    <h1 class="productTableHead">&pound;0.00</h1>
                </td>
            </tr>
            <tr>
                <td width="140" height="28">&nbsp;</td>
                <td align="right">Subtotal</td>
                <td align="right">&pound;0.00</td>
            </tr>
            <tr>
                <td width="140" height="28">&nbsp;</td>
                <td align="right">Postage &amp; Packaging</td>
                <td align="right" id="p2pnp">&pound;7.95</td>
            </tr>
            <tr>
                <td width="140" height="28">&nbsp;</td>
                <td class="white" align="right"><strong>Total</strong></td>
                <td align="right" class="white" id="p2total">&pound;7.95</td>
            </tr>
        </table>
        <div class="shipPromo">
            <input type="text" value="SHIPSAVE" />
            <a class="pointer btnSubPromo">&nbsp;</a>
        </div>
        <form id="frmBilling" class="formP2" runat="server">
            <asp:HiddenField ID="hVisitID" runat="server" Value="" />
            <asp:HiddenField ID="hSessionID" runat="server" Value="" />
            <asp:HiddenField ID="hPageID" runat="server" Value="" />
            <asp:HiddenField ID="hCCType" runat="server" Value="" />
            <asp:HiddenField ID="hNameOnCard" runat="server" Value="" />
            <asp:HiddenField ID="hCCNumber" runat="server" Value="" />
            <asp:HiddenField ID="hCVV2" runat="server" Value="" />
            <asp:HiddenField ID="hExpMonth" runat="server" Value="" />
            <asp:HiddenField ID="hExpYear" runat="server" Value="" />
            <asp:HiddenField ID="bNewBillingAddress" runat="server" Value="0" />
            <asp:HiddenField ID="saleprocessdetailid" runat="server" Value="39" />
            <asp:HiddenField ID="OptionalSaleProcessDetail" runat="server" Value="30" />
            <asp:HiddenField ID="hPromoCode" runat="server" Value="" />
            <asp:HiddenField ID="hPromoDiscount" runat="server" Value="" />
            <asp:HiddenField ID="hSelectedOption" runat="server" Value="1" />
            <%--<asp:Label ID="errormsg" runat="server" Style="visibility: hidden" class="errorMsg"></asp:Label>--%>
            <asp:Label ID="errormsg" Class="errormsg" runat="server" Style="left: 0px; top: 0px; color: #4da6ff;"
                Visible="false"></asp:Label>
            <div class="row">
                <label id="lbCardNumber" runat="server">
                    <strong>Card number: </strong>
                </label>
                <asp:TextBox ID="CCNumber" runat="server" onblur="SaveEntry(this,document.getElementById('hCCNumber'));"
                    class="inputField ccNum" />
            </div>
            <%--ToDo Remove this option with it functionality--%>
            <div id="dvHolderName" runat="server" style="display: none;" class="row">
                <label id="lbNameOnCard" runat="server">
                    <strong>Cardholder name:</strong>
                </label>
                <asp:TextBox ID="NameOnCard" runat="server" onblur="SaveEntry(this,document.getElementById('hNameOnCard'));"
                    class="inputField alpha" />
            </div>
            <div class="row">
                <label id="lbExpDate" runat="server">
                    <strong>Expiry date:</strong>
                </label>
                <div class="row margin0">
                    <div class="styleSelect">
                        <asp:DropDownList ID="ExpirationMonth" runat="server" onblur="SaveEntry(this,document.getElementById('hExpMonth'));"
                            class="inputField expireDate selectBox">
                            <asp:ListItem Text="Month" Value="" />
                            <asp:ListItem Text="01" Value="01" />
                            <asp:ListItem Text="02" Value="02" />
                            <asp:ListItem Text="03" Value="03" />
                            <asp:ListItem Text="04" Value="04" />
                            <asp:ListItem Text="05" Value="05" />
                            <asp:ListItem Text="06" Value="06" />
                            <asp:ListItem Text="07" Value="07" />
                            <asp:ListItem Text="08" Value="08" />
                            <asp:ListItem Text="09" Value="09" />
                            <asp:ListItem Text="10" Value="10" />
                            <asp:ListItem Text="11" Value="11" />
                            <asp:ListItem Text="12" Value="12" />
                        </asp:DropDownList>
                    </div>
                    <div class="styleSelect">
                        <asp:DropDownList ID="ExpirationYear" runat="server" onblur="SaveEntry(this,document.getElementById('hExpYear'));"
                            class="inputField expireDate selectBox">
                            <asp:ListItem Text="Year" Value="" />
                            <asp:ListItem Text="2012" Value="2012" />
                            <asp:ListItem Text="2013" Value="2013" />
                            <asp:ListItem Text="2014" Value="2014" />
                            <asp:ListItem Text="2015" Value="2015" />
                            <asp:ListItem Text="2016" Value="2016" />
                            <asp:ListItem Text="2017" Value="2017" />
                            <asp:ListItem Text="2018" Value="2018" />
                            <asp:ListItem Text="2019" Value="2019" />
                            <asp:ListItem Text="2020" Value="2020" />
                            <asp:ListItem Text="2021" Value="2021" />
                            <asp:ListItem Text="2022" Value="2022" />
                            <asp:ListItem Text="2023" Value="2023" />
                            <asp:ListItem Text="2024" Value="2024" />
                            <asp:ListItem Text="2025" Value="2025" />
                            <asp:ListItem Text="2026" Value="2026" />
                            <asp:ListItem Text="2027" Value="2027" />
                            <asp:ListItem Text="2028" Value="2028" />
                            <asp:ListItem Text="2029" Value="2029" />
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row">
                <label id="lbCVV2" runat="server">
                    <strong>CVV code:</strong>
                </label>
                <div class="row margin0">
                    <asp:TextBox ID="CVV2" runat="server" MaxLength="4" onblur="SaveEntry(this,document.getElementById('hCVV2'));"
                        class="inputField cvvNo short whatsThis" />
                    <a onclick="popFancy('cvv.html', 600, 400);" class="whatsThis pointer">What is this?</a>
                </div>
            </div>
            <%--ToDo Remove this option with it functionality--%>
            <%-- <div style="visibility:hidden">
        <div id="lbAuthorize" runat="server" visible="false">
            <asp:CheckBox ID="Agree" runat="server" Text="" Checked="true" />&nbsp;&nbsp;I accept
            the <a href="javascript:void(0);">Terms and Conditions</a>
        </div>
        </div>--%>
            <div class="row">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" OnClientClick="ClickTracking(93);"
                    onmouseover="HoverTracking(93);" class="subBtn pointer" />
            </div>
        </form>
        <div class="termsPrivacy">
            <a onclick="javascript:void window.open('https://www.raspberryketoneproslim.com/legal/terms.html','1392233848882','width=700,height=500,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false;" class="pointer">Terms &amp; Conditions</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="javascript:void window.open('https://www.raspberryketoneproslim.com/legal/privacy.html','1392233848882','width=700,height=500,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false;" class="pointer">Privacy Policy</a>
        </div>
    </div>
    <!-- Call Pixel -->
    <asp:Literal ID="ltrPixel" runat="server">    
    </asp:Literal>
</body>
</html>
