<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FENGSYSTEM._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div id="carouselExampleIndicators" class="carousel slide mb-5">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/images/anh1.jpg" class="d-block w-100" style="max-width: 100%; height: 862.19px">
                </div>
                <div class="carousel-item">
                    <img src="/images/anh2.jpg" class="d-block w-100" style="max-width: 100%; height: 862.19px">
                </div>
                <div class="carousel-item">
                    <img src="/images/anh3.jpg" class="d-block w-100" style="max-width: 100%; height: 862.19px">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="container d-flex justify-content-center align-content-center">
            <asp:DataList ID="dl_mathang" runat="server" CssClass="text-center" RepeatColumns="4">
                <ItemTemplate>
                    <div class="card border-0 px-3 pb-3 " style="width: 18rem;">
                        <div class="text-center ">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "Images/"+Eval("Hinh") %>' CommandArgument='<%# Eval("MaHang") %>' CssClass="hi img-thumbnail border-0" OnClick="ImageButton1_Click" />
                        </div>
                        <div class="card-body">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaHang") %>' CssClass="card-text text-center text-dark text-decoration-none" OnClick="LinkButton1_Click"><b><%# Eval("TenHang") %></b></asp:LinkButton>
                            <p class="card-text text-center"><%# Eval("DonGia") %>đ</p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="text-center mb-5" style="margin-top: 100px">
            <a class="cta text-decoration-none" href="newArrivals.aspx">
                <span class="hover-underline-animation">Shop now </span>
                <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" id="arrow-horizontal">
                    <path transform="translate(30)" d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z" data-name="Path 10" id="Path_10"></path>
                </svg>
            </a>
        </div>
    </form>
    <style>
        .hi{
            border-radius:0;
        }
    </style>
</asp:Content>
