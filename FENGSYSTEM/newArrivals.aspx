<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="newArrivals.aspx.cs" Inherits="FENGSYSTEM.newArrivals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container d-flex justify-content-center align-content-center">
            <asp:DataList ID="dl_new" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <div class="card border-0 px-3 pb-3" style="width: 25rem;">
                        <div class="text-center ">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "Images/"+Eval("Hinh") %>' CommandArgument='<%# Eval("MaHang") %>' CssClass="img-thumbnail border-0 hi" OnClick="ImageButton1_Click" />
                        </div>
                        <div class="card-body text-center">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaHang") %>' CssClass="card-text text-center text-dark text-decoration-none" OnClick="LinkButton1_Click"><%# Eval("TenHang") %></asp:LinkButton>
                            <p class="card-text text-center"><b><%# Eval("DonGia") %>đ</b></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
    <style>
        .hi{
            border-radius:0;
        }
    </style>
</asp:Content>

