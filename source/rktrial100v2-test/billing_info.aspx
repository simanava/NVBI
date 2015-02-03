<%@ page language="C#" autoeventwireup="true" inherits="BillingInfo, App_Web_billing_info.aspx.cdcab7d2" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Raspberry Ketone ProSlim</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <meta name="description" content="">
    <meta name="author" content="">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100italic,100,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet/less" type="text/css" href="css/style.less">
    <script src="js/less.js" type="text/javascript"></script>
  </head>
<body>

    <div class="container page2">
   
        <div class="row">
            <div class="section1 span12">
                <img src="img/logo.png" class="logo">
                <ul>
                    <li>Block fat absorption</li>
                    <li>Increase metabolism</li>
                    <li>Control appetite</li>
                    <li>Aid digestion</li>
                </ul>
                <img src="img/raspberry4.png" class="raspberry4" />
                <img src="img/woman3.png" class="woman3" />
                <img src="img/topCurve.png" class="topCurve" />
                <p class="trimFat">TRIM FAT EFFORTLESSLY!</p>
                <img src="img/arrowTrimFat.png" class="arrowTrimFat" />
                <p class="theScientifically">THE SCIENTIFICALLY PROVEN WAY TO LOSE WEIGHT</p>
                <img src="img/underline.png" class="underline" />
                <p class="pAndp">postage &amp; packaging</p>
                <table>
                    <tr>
                        <th class="text-left">Product</th>
                        <th colspan="2" class="text-right">Price</th>
                    </tr>
                    <tr>
                        <td width="85" class="imgHolder descript">
                            <img src="img/bottle.png" class="bottle">
                        </td>
                        <td class="descript" valign="top">
                            <p>
                                <strong>Raspberry Ketone ProSlim Trial</strong><br>
                                <span class="theUltimate">The ultimate natural weight loss formula</span>
                            </p>
                        </td>
                        <td class="itemPrice text-right descript" valign="top">
                            <p><strong>&pound;0.00</strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>Subtotal</td>
                        <td class="text-right">&pound;0.00</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>Postage &amp; Packaging</td>
                        <td class="text-right">&pound;4.95</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><strong>Total</strong></td>
                        <td class="text-right"><strong>&pound;4.95</strong></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="last">
                            <p>Shipment estimated time of arrival 27/01/2014</p>
                        </td>
                    </tr>
                </table>
                <img src="img/arrowGetYouTrial.png" class="arrowGetYourTrial" />
                <div class="formContainer form2">
                    <form id="frmBilling" runat="server">

                        <!-- hidden field -->
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
                        <asp:HiddenField ID="saleprocessdetailid" runat="server" Value="28" />
                        <asp:HiddenField ID="OptionalSaleProcessDetail" runat="server" Value="30" />
                        <asp:HiddenField ID="hPromoCode" runat="server" Value="" />
                        <asp:HiddenField ID="hPromoDiscount" runat="server" Value="" />
                        <!--end hidden field -->


                        <h1>final step!<br />
                            <span class="point27">postage &amp; packaging</span></h1>
                        <div class="rowForm creditCards">
                            <p>We accept:</p>
                            <img src="img/cardVisa.png" />
                            <img src="img/cardMasterCard.png" />
                        </div>
                         <!--Error Message -->
                        <asp:Label ID="errormsg" Class="errormsg" runat="server" style="left: 32px;top: 85px;"  ></asp:Label>
                        <!--end Error Message -->
                        <div id="dvHolderName" runat="server" style="display: none;" class="row">
                            <label id="lbNameOnCard" runat="server">
                                <strong>Cardholder name:</strong>
                            </label>
                            <asp:TextBox ID="NameOnCard" runat="server" onblur="SaveEntry(this,document.getElementById('hNameOnCard'));"
                                class=" alpha" />
                        </div>
                        <div class="rowForm">
                            <label id="lbCardNumber" runat="server">Card number:</label>
                            <asp:TextBox class="inputField ccNum"  ID="CCNumber" runat="server" onblur="SaveEntry(this,document.getElementById('hCCNumber'));" />
                        </div>
                        <div class="rowForm">
                            <label id="lbExpDate" runat="server">Expiry date:</label>
                            <div class="styleSelect">
                                <asp:DropDownList ID="month" runat="server" onblur="SaveEntry(this,document.getElementById('hExpMonth'));"
                                    class="inputField expireDate">
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
                            <div class="styleSelect contYear">
                                <asp:DropDownList ID="year" runat="server" onblur="SaveEntry(this,document.getElementById('hExpYear'));"
                                    class="inputField expireDate">
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
                        <div class="rowForm">
                            <label id="lbCVV2" runat="server">CVV code:</label>
                            <asp:TextBox ID="CVV2" runat="server" type="text" class="inputField cvvNo" MaxLength="4" onblur="SaveEntry(this,document.getElementById('hCVV2'));" />

                            <a href="#whatIsThis" class="whatIsThis" role="button" data-toggle="modal">What is this?</a>
                            <div id="whatIsThis" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                    <h3 id="myModalLabel">CVV Number</h3>
                                </div>
                                <div class="modal-body">
                                    <img src="img/cvv.jpg" />
                                </div>
                                <div class="modal-footer">
                                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                                </div>
                            </div>
                        </div>
                        <div class="rowForm">
                            <asp:Button  type="submit"  class="btn btnGreen subBtn" Text="rush my order" runat="server" ID="btnSubmit" OnClick="btnSubmit_Click"   />
                        </div>
                        <p class="secure padlock">
                            128 BIT SSL<br>
                            <span class="openSans400">secure site</span>
                        </p>
                        <p class="secure phone">
                            Phone support<br>
                            <span class="openSans400">7 days a week</span>
                        </p>
                        <img src="img/logoVeriSign.png" class="logoVeriSign" />
                        <img src="img/logoMcafee.png" class="logoMcafee" />
                        <img src="img/logoTruste.jpg" class="logoTruste" />
                    </form>
                </div>
                <img src="img/termsP2.jpg" class="termP2">
                <img src="img/limQuanAvail.jpg" class="limQuanAvail">
            </div>
        </div>
    </div>

    <div class="container termsLinks">
        <div class="row">
            <div class="span12 text-center">
                <a href="#termAndCond" role="button" data-toggle="modal">Terms &amp; Conditions</a>
                <a href="#privacyPolicy" role="button" data-toggle="modal">Privacy Policy</a>


                <div id="termAndCond" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                        <h3 id="H1">Terms &amp; Conditions</h3>
                    </div>
                    <div class="modal-body">
                        <iframe width="100%" src="https://www.raspberryketoneproslim.com/legal/terms.html?bootstrap" frameborder="0"></iframe>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    </div>
                </div>

                <div id="privacyPolicy" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                        <h3 id="H2">Privacy Policy</h3>
                    </div>
                    <div class="modal-body">
                        <iframe width="100%" src="https://www.raspberryketoneproslim.com/legal/privacy.html?bootstrap" frameborder="0"></iframe>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Call Pixel -->
    <asp:Literal ID="ltrPixel" runat="server">    
    </asp:Literal>
    <!-- End Call Pixel -->

    <script src="js/jquery-2.0.3.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/formValidation.js" type="text/javascript"></script>
    <!-- <script src="js/optionLists.js" type="text/javascript"></script> -->
    <script src="js/modernizr.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
    <script src="js/tracking.js" type="text/javascript"></script>
</body>
</html>
