<%@ page language="C#" autoeventwireup="true" inherits="Thank, App_Web_thank.aspx.cdcab7d2" %>

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
    <div class="container page4">
        <div class="row">
            <div class="section1 span12">
                <form id="fromThank" runat="server">
                    <asp:HiddenField ID="hVisitID" runat="server" Value="" />
                    <asp:HiddenField ID="hSessionID" runat="server" Value="" />
                    <asp:HiddenField ID="hPageID" runat="server" Value="" />
                    <img src="img/logo.png" class="logo">
                    <img src="img/woman4.png" class="woman4">
                    <img src="img/raspberry5.png" class="raspberry5">
                    <img src="img/topCurveP4.png" class="topCurveP4">
                    <h1>thank you for<br>
                        your order!</h1>
                    <div class="span7 receipt">
                        <p>
                            A receipt for your order has been sent to <asp:Label ID="lblShowEmail" runat="server"></asp:Label>.
                        <br class="ifYouDoNot">
                            If you do not receive our email within the next hour, please check your spam or junk folders.
                        </p>
                        <p>
                            <span class="yourOrder">Your order should arrive within 5-7 business days.</span><br>
                            Please note that Royal Mail cannot guarantee prompt delivery during severe weather conditions, service interruptions or any other unforeseen circumstances.
                        </p>
                    </div>
                    <div class="span7 contTable">
                        <a href="javascript:window.print()" class="printThisPage">Print this page</a>
                        <div>
                            <div class="span3">
                                <h3>Order Information</h3>
                                <table>
                                    <tr>
                                        <td class="orderId"><strong>Order ID:</strong></td>
                                        <td valign="top" id="elOrderID" runat="server">1234567
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="orderDate"><strong>Order Date:</strong></td>
                                        <td valign="top" id="elOrderDate" runat="server">12/05/2011
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="shipAddress">
                                            <span class="shipAddressTitle"><strong>Shipping Address:</strong></span><br>
                                            <asp:Label ID="lblName" runat="server"></asp:Label><br />
                                            <asp:Label ID="lblAddress" runat="server"></asp:Label><br />
                                            <asp:Label ID="lblCity" runat="server">Glenmorgan</asp:Label><br />
                                            <asp:Label ID="lblCounty" runat="server">Middlesex</asp:Label><br />
                                            <asp:Label ID="lblZip" runat="server">TH7 8IK</asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="span4">
                                <h3>Order Summary</h3>
                                <table class="orderSummary">
                                    <tr>
                                        <td>Raspberry Ketone ProSlim Trial</td>
                                        <td>1</td>
                                        <td>&pound;<asp:Label ID="lblBillAmount" runat="server">0.00</asp:Label></td>
                                    </tr>

                                    <tr id="Detox" runat="server" visible="false">
                                        <td width="200">DetoxBerries<asp:Label ID="lblDetoxTitle" runat="server"> - 64% off</asp:Label>
                                        </td>
                                        <td width="10" >1</td>
                                        <td align="right">&pound;<asp:Label ID="lblDetoxAmount" runat="server">24.99</asp:Label>
                                        </td>
                                    </tr>

                                    <tr id="DetoxTwo" runat="server" visible="false">
                                        <td width="200">DetoxBerries<asp:Label ID="lblDetoxTwoTitle" runat="server"> - 3 for 2</asp:Label>
                                        </td>
                                        <td width="10" >1</td>
                                        <td align="right">&pound;<asp:Label ID="lblDetoxTwoAmount" runat="server">29.90</asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Postage &amp; Packaging</td>
                                        <td></td>
                                        <td>&pound;<asp:Label ID="lblShipAmount" runat="server">4.95</asp:Label></td>
                                    </tr>
                                    <tr class="total">
                                        <td></td>
                                        <td>Total</td>
                                        <td>&pound;<asp:Label ID="lblTotal" runat="server">4.95</asp:Label>
                                            <asp:Label ID="lblDetoxTotal" runat="server" Visible="false">24.99</asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <h3 class="questions">Questions about your order?</h3>
                                <p>If you have additional questions about your order, please contact our Customer Support team on FREEPHONE 0800 468 1045. We are available from 8am – 8pm, 7 days a week.</p>
                            </div>
                        </div>
                    </div>
                </form>
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
                        <h3 id="myModalLabel">Terms &amp; Conditions</h3>
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
                        <h3 id="H1">Privacy Policy</h3>
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
    <asp:Literal ID="ltrPixel" runat="server"></asp:Literal>

    <script src="js/jquery-2.0.3.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/formValidation.js" type="text/javascript"></script>
    <script src="js/optionLists.js" type="text/javascript"></script>
    <script src="js/modernizr.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
</body>
</html>
