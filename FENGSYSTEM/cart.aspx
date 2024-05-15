<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="FENGSYSTEM.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container d-flex justify-content-center align-items-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered tb text-center " >
                <Columns>
                    <asp:TemplateField HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MaHang") %>' CssClass="text-decoration-none btn btn-dark hi" OnClick="LinkButton2_Click">Xóa</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="TenHang" HeaderText="Tên hàng" />
                    <asp:TemplateField HeaderText="Hình Ảnh">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Images/" + Eval("Hinh") %>' CssClass="img hi" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="MoTa" HeaderText="Mô tả" />
                    <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
                    <asp:TemplateField HeaderText="Số lượng">
                        <ItemTemplate>
                            <div class="d-flex">
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("SoLuong") %>' CssClass="form-control hi me-2 tb"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("MaHang") %>' Text="Sửa" CssClass="btn btn-dark btn-sm hi" OnClick="Button1_Click"/>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                </Columns>
                <RowStyle VerticalAlign="Middle" />
            </asp:GridView>
        </div>
    </form>
    <style>
        .tb {
            border-color: #000000;
        }

        .hi {
            border-radius: 0;
        }

        .img {
            max-width: 100px;
        }
    </style>
</asp:Content>
