<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Samples.aspx.cs" Inherits="Portal.Samples" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">
    <div style="padding:30px;">



                <section id="page-header">
                    <div class="breadcrumbs"><a href="#">صفحه اصلی</a>  <span class="separator icon-double-angle-left"></span> 
<span class="actual">نمونه کارها</span>
                    </div>
                    <div class="clear"></div>
                    <h1>نمونه کارها</h1>
                    <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد</p>
                    <div class="clear"></div>
                    <div class="double-line"></div>
                </section>
                <!-- end page-header -->
                <div class="row-fluid">
                    <section id="main-content" class="span12">
                        <section id="filter-bar" class="visible-desktop visible-tablet">
                            <ul id="filters" class="no-margin no-list">
                                <li>
توسط فیلتر:
</li>
                                <li><a href="#" data-filter="*" class="selected">همه</a>
                                </li>
                                <li><a href="#" data-filter=".animation">انیمیشن</a>
                                </li>
                                <li><a href="#" data-filter=".branddesign">طراحی برند</a>
                                </li>
                                <li><a href="#" data-filter=".graphicdesign">طراحی گرافیک</a>

                                </li>
                                <li><a href="#" data-filter=".photographywork">کار فتو گرافی</a>
                                </li>
                                <li><a href="#" data-filter=".webdesign">طراحی وب</a>
                                </li>
                            </ul>
                        </section>
                        <!-- end filter-bar -->
                        <section id="portfolio" class="span12 three-cols">
                            <ul id="portfolio-projects" class="no-margin no-list" data-liffect="zoomOut">
                                <li class="project span4 branddesign photographywork">
                                    <a href="portfolio-single-1.html">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">لورم ایپسوم یا طرح‌نما<span class=
"icon-plus"></span></h3>
                                    </a>
                                </li>
                                <li class="project span4 animation branddesign webdesign">
                                    <a rel="lightbox[gallery2]" href="img/sazandegi.png">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">
سبد گالری فیلم <span class="icon-plus"></span></h3>
                                    </a><a class="hidden" rel="lightbox[gallery2]" href="http://vimeo.com/58822081" title="">گالری</a><a class="hidden" rel="lightbox[gallery2]" href="img/portfolio/9.jpg" title="">گالری</a><a class="hidden" rel="lightbox[gallery2]" href="http://www.youtube.com/watch?v=X-vDxKLVGwQ"
                                    title="">گالری</a>
                                </li>
                                <li class="project span4 graphicdesign photographywork">
                                    <a href="http://www.google.com" target="_blank">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">پروژه با لینک های خارجی<span class="icon-plus"></span></h3>
                                    </a>
                                </li>
<%--                                <li class="project span4 animation webdesign">
                                    <a href="portfolio-single-1.html">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/a4.jpg" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">زیبا پوست قهوه ای<span class="icon-plus"></span></h3>
                                    </a>
                                </li>--%>
                              <%--  <li class="project span4 branddesign graphicdesign webdesign">
                                    <a href="portfolio-single-1.html">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/aa1.jpg" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">مدل مو قرمز<span class="icon-plus"></span></h3>
                                    </a>
                                </li>--%>
<%--                                <li class="project span4 animation branddesign graphicdesign">
                                    <a rel="lightbox[gallery6]" href="img/portfolio/6.jpg">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/aa2.jpg" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">
به عنوان مثال تصویر کادر نمایش تصاویر کوچک
<span class=
"icon-plus"></span></h3>
                                    </a>
                                </li>--%>
<%--                                <li class="project span4 animation photographywork webdesign">
                                    <a href="portfolio-single-1.html">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/portfolio/1.jpg" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">
زیبایی در زندگی
<span class=
"icon-plus"></span></h3>
                                    </a>
                                </li>--%>
                                <li class="project span4 branddesign photographywork webdesign">
                                    <a rel="lightbox[gallery8]" href="img/portfolio/16.jpg">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">

زندگی در برف
 <span class="icon-plus"></span></h3>
                                    </a><a class="hidden" rel="lightbox[gallery8]" href="img/portfolio/5.jpg" title="">گالری</a><a class="hidden" rel="lightbox[gallery8]" href="img/portfolio/1.jpg" title="">گالری</a>
                                </li>
                                <li class="project span4 branddesign graphicdesign">
                                    <a href="portfolio-single-1.html">
                                        <div class="post-thumbnail">
                                            <div class="plus">+</div><span class="hover color-hover"></span>
                                            <img src="img/sazandegi.png" alt="" width="650" height="420" />
                                        </div>
                                        <!-- end post-thumbnail -->
                                         <h3 class="project-title post-title">
                                            عکاسی خلاق
                                            <span class="icon-plus"></span>

                                         </h3> 
                                    </a>
                                </li>


                            </ul>
                            <!-- end portfolio-projects -->
                        </section>
                        <!-- end portfolio -->

                        <div class="clear"></div>
                        <div id="postsNav" class="navigation nav-portfolio lefts">
                            <div class="pagination_links">
                                <div class="visible-desktop visible-tablet">
                                    <div class='numbers-pag'><a class='numbered prev' href='#'><span>
Previous</span></a><a class='numbered current-page' href='#'><span class='current'>1</span></a><a class='numbered inactive' href='#'><span>2</span></a><a class='numbered inactive' href='#'><span>3
</span></a><a class='numbered next' href='page/2/index.html'><span>Next</span></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end pagination_links -->
                        </div>
                        <!-- #nav-below -->
                        <div class="clear"></div>
                    </section>
                    <!-- end main-content -->
                    <div class="clear"></div>
                </div>




    </div>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="CPHL" runat="server">
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="CPHF" runat="server">
</asp:Content>
