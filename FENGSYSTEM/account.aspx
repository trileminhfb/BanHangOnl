<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="FENGSYSTEM.account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container d-flex justify-content-center align-content-center">
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
                <LayoutTemplate>
                    <table cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2"><b>LOGIN</b></td>
                                    </tr>
                                    <tr class="text-center">
                                        <td align="right" class="d-flex align-content-center justify-content-center me-2">
                                            <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control hi"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="Login1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="d-flex align-content-center justify-content-center me-2">
                                            <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" TextMode="Password" ID="Password" CssClass="form-control hi"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="Login1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox runat="server" Text="Remember password" ID="RememberMe"></asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: Red;">
                                            <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button runat="server" CommandName="Login" Text="LOGIN" ValidationGroup="Login1" ID="LoginButton" CssClass="btn btn-dark hi text-end"></asp:Button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </form>
    <style>
        .hi{
            border-radius:0;
        }
    </style>
</asp:Content>

