<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Portal.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">






                      <script type="text/javascript">
                         jssor_1_slider_init = function () {

                             var jssor_1_SlideshowTransitions = [
                                 { $Duration: 800, $Opacity: 2 }
                             ];

                             var jssor_1_options = {
                                 $AutoPlay: 1,
                                 $SlideshowOptions: {
                                     $Class: $JssorSlideshowRunner$,
                                     $Transitions: jssor_1_SlideshowTransitions,
                                     $TransitionsOrder: 1
                                 },
                                 $ArrowNavigatorOptions: {
                                     $Class: $JssorArrowNavigator$
                                 },
                                 $BulletNavigatorOptions: {
                                     $Class: $JssorBulletNavigator$
                                 }
                             };

                             var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                             /*#region responsive code begin*/

                             var MAX_WIDTH = 1550;

                             function ScaleSlider() {
                                 var containerElement = jssor_1_slider.$Elmt.parentNode;
                                 var containerWidth = containerElement.clientWidth;

                                 if (containerWidth) {

                                     var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                                     jssor_1_slider.$ScaleWidth(expectedWidth);
                                 }
                                 else {
                                     window.setTimeout(ScaleSlider, 30);
                                 }
                             }

                             ScaleSlider();

                             $Jssor$.$AddEvent(window, "load", ScaleSlider);
                             $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                             $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                             /*#endregion responsive code end*/
                         };
    </script>
    <style>
        /*jssor slider loading skin spin css*/
        .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        /*jssor slider bullet skin 051 css*/
        .jssorb051 .i {position:absolute;cursor:pointer;}
        .jssorb051 .i .b {fill:#fff;fill-opacity:0.5;}
        .jssorb051 .i:hover .b {fill-opacity:.7;}
        .jssorb051 .iav .b {fill-opacity: 1;}
        .jssorb051 .i.idn {opacity:.3;}

        /*jssor slider arrow skin 051 css*/
        .jssora051 {display:block;position:absolute;cursor:pointer;}
        .jssora051 .a {fill:none;stroke:#fff;stroke-width:360;stroke-miterlimit:10;}
        .jssora051:hover {opacity:.8;}
        .jssora051.jssora051dn {opacity:.5;}
        .jssora051.jssora051ds {opacity:.3;pointer-events:none;}
    </style>
    <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:250px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">



            
          <%--  <div>
                <img data-u="image" src="img/sazandegi.png" />
            </div>--%>

            <div>
                <img data-u="image" src="img/gr.png" /> 

            </div>
            


            <div>
                <img data-u="image" src="img/nern.png" />

            </div>
          
            <div>
                <img data-u="image" src="img/seemorgh.png" />
            </div>
           
          
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb051" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
            </svg>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>






     <div class="row-fluid">
                        <div class="row-fluid intro ">
                            <div class="span8">
                                <h1>

Bellum حق بیمه وردپرس
</h1>
                                <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد</p>
                            </div>
                            <!-- end span8 -->
                            <div class="hsocial span4">
                                <div class="pull-left">
                                    <p>ما اجتماعی هستیم</p>
                                    <div class="clear"></div>
                                    <a class="social_icn face" href="#" target="_blank"><span>Facebook</span></a>
                                    

<a class="social_icn tumblr" href="#" target="_blank">
    <span>Tumblr</span></a>
                                    <a class="social_icn rss" href="#">
    <span>RSS</span></a>
                                </div>
                            </div>
                            <!-- end social -->
                        </div>
                        <!-- end row- fluid -->
                        <div class="clear"></div>
                        <div class="double-line" style="margin-top: 10px; margin-bottom: 10px;"></div>
                        <div class="row-fluid numbered">
                            <div class="col span4">
                                <h3>طراحی ریسپانسیو</h3>
                                <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است
                                    <br />
                                    <br />لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است
                                    <br />
                                    <br />
<a href="#"><strong>
اطلاعات بیشتر
</strong> <span class="icon-plus"></span></a>
                                </p>
                            </div>
                            <!-- end col -->
                            <div class="col span4">
                                <h3>
ویژگی های شگفت انگیز
</h3>
                                <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد
                                    <br />
                                    <br />لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است
                                    <br />
                                    <br />
<a href="#"><strong>
اطلاعات بیشتر
</strong> <span class="icon-plus"></span></a>
                                </p>
                            </div>
                            <!-- end col -->
                            <div class="col span4">
                                <h3>
طراحی تمیز & حداقل
</h3>
                                <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد
                                    <br />
                                    <br />لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است
                                    <br />
                                    <br />
<a href="#"><strong>
اطلاعات بیشتر
</strong> <span class="icon-plus"></span></a>
                                </p>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row-fluid -->
                        <div class="clear"></div>
                        <div class="double-line" style="margin-top: 10px; margin-bottom: 10px;"></div>
                        <section class="recent-works">
                          <%--  <h3>آثار</h3>--%>
                            <a class="more" href="index.html#">
نمونه کارها ما +
</a>
                            <div class="clear"></div>
                            <div class="row-fluid">
                                <div class="project span3">
                                    <a href="portfolio-single-1.html">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div> <span class="hover color-hover"></span> 
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">
در حال تاریکی</h3>  <span class="georgia project-categories">
کار عکاسی طراحی نام تجاری
</span> 
                                    </a>
                                </div>
                                <div class="project span3">
                                    <a rel="lightbox[gallery2]" href="img/portfolio/3.jpg">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div> <span class="hover color-hover"></span> 
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">
سبد گالری فیلم
</h3>  <span class="georgia project-categories">

انیمیشن طراحی وب با نام تجاری
</span> 
                                    </a> <a class="hidden" rel="lightbox[gallery2]" href="http://vimeo.com/58822081" title="">گالری</a>  <a class="hidden" rel="lightbox[gallery2]" href="img/portfolio/5.jpg" title="">گالری</a>  <a class="hidden" rel="lightbox[gallery2]" href="http://www.youtube.com/watch?v=X-vDxKLVGwQ"
                                    title="">گالری</a> 
                                </div>
                                <div class="project span3">
                                    <a href="http://www.google.com">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div> <span class="hover color-hover"></span> 
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">
پروژه با لینک های خارجی
</h3> 
<span class="georgia project-categories">
کار عکاسی طراحی گرافیک
</span> 
                                    </a>
                                </div>
                                <div class="project span3">
                                    <a href="portfolio-single-1.html">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div> <span class="hover color-hover"></span> 
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">

سایت سازندگی
</h3>  <span class="georgia project-categories">
انیمیشن طراحی وب سایت
</span> 
                                    </a>
                                </div>
                            </div>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
