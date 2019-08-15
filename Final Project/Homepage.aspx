<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Homepage.aspx.cs" Inherits="Machine_Project._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Log-in to enjoy our website.</h2>
    <p>
        <table style="width: 100%;">
            <tr>
                <td align="right" class="style2">
                    Username:</td>
                <td>
                    <asp:TextBox ID="txtUNinpt" runat="server" BackColor="#666666" 
                        BorderStyle="None" Font-Names="Segoe UI" ForeColor="White"
                        Width="156px" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Password:</td>
                <td>
                    <asp:TextBox ID="txtPWinpt" runat="server" BackColor="#666666" 
                        BorderStyle="None" Font-Names="Segoe UI" ForeColor="White" TextMode="Password" 
                        Width="156px" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" BackColor="#F5188E" BorderStyle="None" 
            Font-Bold="True" Font-Names="Segoe UI" Font-Size="Medium" ForeColor="White" 
            Height="31px" Text="Log-in" Width="87px" onclick="btnLogin_Click" />
    </p>
    <p>
        Not yet registered? Sign-up
        <asp:HyperLink ID="signuphere" runat="server" ForeColor="#0099CC" 
            NavigateUrl="~/Signup.aspx">here</asp:HyperLink>
    </p>
    </asp:Content>
