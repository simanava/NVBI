<%@ page language="C#" autoeventwireup="true" inherits="UpSale, App_Web_upsale.aspx.cdcab7d2" %>

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
    <form id="fromUpsale" runat="server">
        <!-- Hidden Fields -->
        <asp:HiddenField ID="hVisitID" runat="server" Value="" />
        <asp:HiddenField ID="hSessionID" runat="server" Value="" />
        <asp:HiddenField ID="hPageID" runat="server" Value="" />
        <!--End Hidden Fields -->
        <div class="container page3">
            <div class="row">
                <div class="section1 span12">
                    <div class="header">
                        <h1 class="partnerOffer">Partner offer</h1>
                        <p class="increase">Increase the effectiveness of your diet, with a
                            <br />
                            <span>nutrient-rich detox body sculptor!</span></p>
                    </div>
                    <a class="x">x</a>
                    <div class="contSlide">
                        <div class="yesPleaseSlide">

                            <!-- <a href="p4.html">-->
                            <asp:LinkButton ID="lbtYes21" runat="server" OnClick="lbtYesSave_Click" >
                                <div class="offer">
                                    <p class="detail oneFree">
                                        <span>BUY 2, GET</span><br>1 free                 
                                    </p>
                                    <p class="second">
                                        Best offer                 
                                    </p>
                                    <p class="priceBefore">
                                        &pound;149.97                 
                                    </p>
                                    <p class="priceAfter">
                                        &pound;29.90                 
                                    </p>
                                </div>
                            </asp:LinkButton>
                            <!--</a>-->

                            <p class="or">or</p>

                            <!--<a href="p4.html">-->
                            <asp:LinkButton ID="lbtYes12" runat="server" OnClick="lbtYes40_Click" >
                                <div class="offer">
                                    <p class="detail">
                                        40% off!                 
                                    </p>
                                    <p class="second">
                                        Great offer                 
                                    </p>
                                    <p class="priceBefore">
                                        &pound;41.55                 
                                    </p>
                                    <p class="priceAfter">
                                        &pound;14.95                 
                                    </p>
                                </div>
                            </asp:LinkButton>
                            <!--</a>-->
                            <a class="yesPlease">Yes please</a>
                        </div>
                    </div>
                    <img src="img/logoDetoxBerries.png" class="logoDetoxBerries">
                    <img src="img/flatStomach.jpg" class="flatStomach">
                    <div class="offerDetails">
                        <h1>Get a sculpted body!</h1>
                        <p>Achieve your best body with an all-natural blend of antioxidants</p>
                        <img src="img/productDetoxBerries.png" class="productDetoxBerries">
                        <ul>
                            <li class="burn">Burn fat &amp; calories</li>
                            <li class="boost">Boost your metabolism</li>
                            <li class="look">Look thinner</li>

                            <li class="feel">Feel toned &amp; energised</li>
                            <li class="improve">Improve digestion</li>
                        </ul>
                        <div class="fortyPercentOff">
                            <p>64% OFF <span>or</span> 3 FOR 2</p>
                        </div>
                        <img src="img/legs.png" class="legs">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="section2 span12">
                    <div class="span4 offer1">
                        <img src="img/pinkArrows.png" class="pinkArrows">
                        <img src="img/productDetoxBerries.png" class="productDetoxBerries">
                        <div class="offer">
                            <img src="img/arrowOffer.png" class="arrowOffer">
                            <p class="detail">64% OFF!</p>
                            <p class="second">great offer</p>
                            <p class="priceBefore">&pound;41.55</p>
                            <p class="priceAfter">&pound;14.95</p>
                        </div>
                        <!-- <a href="p4.html" class="yesPleaseOffer" runat="server" OnClick="lbtYes40_Click"  >yes please!</a> -->
                        <asp:LinkButton ID="lbtYes22" runat="server" OnClick="lbtYes40_Click"  class="yesPleaseOffer" >
                            yes please!
                        </asp:LinkButton>
                        <p class="getToned">I want to get toned and thin.</p>
                    </div>
                    <div class="span4 offer2">
                        <img src="img/pinkArrows.png" class="pinkArrows">
                        <img src="img/productDetoxBerries.png" class="productDetoxBerries bot1">
                        <img src="img/productDetoxBerries.png" class="productDetoxBerries bot2">
                        <img src="img/productDetoxBerries.png" class="productDetoxBerries bot3">
                        <img src="img/flashAmazingDeal.png" class="amazingDeal">
                        <div class="offer">
                            <img src="img/arrowOffer.png" class="arrowOffer">
                            <p class="detail"><span>BUY 2, GET</span><br>
                                1 FREE</p>
                            <p class="second">best offer</p>
                            <p class="priceBefore">&pound;149.97</p>
                            <p class="priceAfter">&pound;29.90</p>
                        </div>
                        <!--<a href="p4.html" class="yesPleaseOffer"  runat="server" OnClick="lbtYesSave_Click">yes please!</a>-->
                        <asp:LinkButton class="yesPleaseOffer" runat="server" OnClick="lbtYesSave_Click">
                            yes please!
                        </asp:LinkButton>
                        <p class="loseWeight">I want to lose weight and save money.</p>
                    </div>
                    <div class="span4 noThanks">
                        <img src="img/largeX.png" class="largeX">
                       
                        <p class="iDontWant">I don't want the weight loss benefits.</p>
                        <!--<a id="A2" class="yesPleaseOffer"   >no thank you</a>-->
                        <asp:LinkButton id="A2" class="yesPleaseOffer" runat="server" OnClick="btnNo_Click">
                            no thank you
                        </asp:LinkButton>
                    </div>
                </div>
                <div class="section3 span12">
                    <h1>Detox Berries Supplement <span>- 60 pills</span></h1>
                    <p>The perfect companion for Raspberry Ketone ProSlim, add our advanced berry formula for maximum weight loss.</p>
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
    </form>
    <!-- Call Pixel -->
    <asp:Literal ID="ltrPixel" runat="server">    
    </asp:Literal>
    <!-- end Call Pixel -->

    <script src="js/jquery-2.0.3.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/formValidation.js" type="text/javascript"></script>
    <script src="js/optionLists.js" type="text/javascript"></script>
    <script src="js/modernizr.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
</body>
</html>
