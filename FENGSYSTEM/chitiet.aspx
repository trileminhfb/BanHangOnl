<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="FENGSYSTEM.chitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container justify-content-center align-content-center d-flex">
        <asp:DataList ID="dl_chitiet" runat="server">
            <ItemTemplate>
                <div class="card mb-3 border-0 mt-5 w-100 ">
                    <div class="row">
                        <div class="col-6 border-0 text-end">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("Hinh") %>' CssClass="img-fluid hi" />
                        </div>
                        <div class="col-6">
                            <div class="card-body ">
                                <h5 class="card-title"><%# Eval("TenHang") %></h5>
                                <p class="card-text"><small class="text-body-secondary"><%# Eval("DonGia") %>đ</small></p>
                                <div>
                                    <span class="small">SIZE</span>
                                    <div class="radio-inputs">
                                        <label class="radio">
                                            <input type="radio" name="radio" checked="">
                                            <span class="name">M</span>
                                        </label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="radio"><input type="radio" name="radio">
                                            <span class="name">L</span>
                                        </label>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="radio"><input type="radio" name="radio">
                                            <span class="name">XL</span>
                                        </label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                </div>
                                <nav class="navbar mt-2">
                                    <form runat="server">
                                        <div class="d-flex">
                                            <asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control me-2 hi"></asp:TextBox>
                                            <asp:Button ID="Button1" runat="server" Text="ADD TO CART"
                                                OnClick="Button1_Click" CssClass="btn btn-dark hi" CommandArgument='<%# Eval("MaHang") %>' />
                                        </div>
                                    </form>
                                </nav>
                                <hr style="border: 1px solid rgba(51, 65, 85, 1)" class="w-75" />
                                <div class="text-nowrap">
                                    <b><%# Eval("MoTa") %></b>
                                </div>
                                <div>SIZE:M/L/XL</div>
                                <div>ALL SALES FINAL, WE DO NOT ACCEPT RETURNS OR EXCHANGES. PLEASE CHECK SIZING AND TERMS BEFORE PURCHASING.</div>
                            </div>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="container justify-content-center align-content-center d-flex mt-3">
        <div class="row">
            <asp:Label ID="lbthongbao" runat="server" Text="" CssClass="text-danger form-control hi"></asp:Label>
        </div>
    </div>
    <style>
        .hi {
            border-radius: 0;
        }

        .radio-inputs {
            position: relative;
            display: flex;
            flex-wrap: wrap;
            border-radius: 0;
            background-color: #EEE;
            box-sizing: border-box;
            box-shadow: 0 0 0px 1px rgba(0, 0, 0, 0.06);
            padding: 0.25rem;
            width: 300px;
            font-size: 14px;
        }

            .radio-inputs .radio {
                flex: 1 1 auto;
                text-align: center;
            }

                .radio-inputs .radio input {
                    display: none;
                }

                .radio-inputs .radio .name {
                    display: flex;
                    cursor: pointer;
                    align-items: center;
                    justify-content: center;
                    border-radius: 0;
                    border: none;
                    padding: .5rem 0;
                    color: rgba(51, 65, 85, 1);
                    transition: all .15s ease-in-out;
                }

                .radio-inputs .radio input:checked + .name {
                    background-color: #fff;
                    font-weight: 600;
                }
    </style>
</asp:Content>

