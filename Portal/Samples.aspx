<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Samples.aspx.cs" Inherits="Portal.Samples" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHR" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHC" runat="server">
    <div style="padding: 30px;">



        <section id="page-header">
            <div class="breadcrumbs">
                <a href="#">صفحه اصلی</a>  <span class="separator icon-double-angle-left"></span>
                <span class="actual">نمونه کارها</span>
            </div>
            <div class="clear"></div>
            <h1>نمونه کارها</h1>
            <p>در این بخش می توانید برخی از سایت های طرای شده توسط تیم برنامه نویسی سامانه هوشمند سیمرغ را مشاهده نمایید.</p>
            <div class="clear"></div>
            <div class="double-line"></div>
        </section>
        <!-- end page-header -->

        <div class="row-fluid">
            <section id="main-content" class="span12">
                <section id="filter-bar" class="visible-desktop visible-tablet">
                    <ul id="filters" class="no-margin no-list">
                        <li>توسط فیلتر:
                        </li>
                        <li><a href="#" data-filter="*" class="selected">همه</a>
                        </li>
                        <li><a href="#" data-filter=".animation">خبری</a>
                        </li>
                        <li><a href="#" data-filter=".branddesign">دانشگاهی</a>
                        </li>

                    </ul>
                </section>
                <!-- end filter-bar -->


                <section id="portfolio" class="span12 three-cols">
                    <ul id="portfolio-projects" class="no-margin no-list" data-liffect="zoomOut">


                        <li class="project span4 animation animation webdesign">
                            <a rel="lightbox[gallery2]" href="http://sazandeginews.com/">
                                <div class="post-thumbnail">
                                    <div class="plus">+</div>
                                    <span class="hover color-hover"></span>
                                    <img src="img/sazandegi.png" alt="" width="300" height="350" />
                                </div>
                                <!-- end post-thumbnail -->
                                <h3 class="project-title post-title">سازندگی <span class="icon-plus"></span></h3>
                            </a>
                      
                        </li>
    

                        <li class="project span4 branddesign photographywork webdesign">
                            <a rel="lightbox[gallery8]" href="http://nren.ir/fa/">
                                <div class="post-thumbnail">
                                    <div class="plus">+</div>
                                    <span class="hover color-hover"></span>
                                    <img src="img/nern.jpg" alt="" width="200" height="200" />
                                </div>
                                <!-- end post-thumbnail -->


                                <h3 class="project-title post-title">شبکه علمی شعا
                                <span class="icon-plus"></span></h3>
                            </a><a class="hidden" rel="lightbox[gallery8]" href="img/nern.jpg" title="">گالری</a><a class="hidden" rel="lightbox[gallery8]" href="img/nern.jpg" title="">گالری</a>
                        </li>



                    </ul>
                    <!-- end portfolio-projects -->

                </section>
                <!-- end portfolio -->

                <div class="clear"></div>
                <div id="postsNav" class="navigation nav-portfolio lefts">
                    <div class="pagination_links">
                        <div class="visible-desktop visible-tablet">
                            <div class='numbers-pag'>
                                <a class='numbered prev' href='#'><span>Previous</span></a><a class='numbered current-page' href='#'><span class='current'>1</span></a><a class='numbered inactive' href='#'><span>2</span></a><a class='numbered inactive' href='#'><span>3
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
