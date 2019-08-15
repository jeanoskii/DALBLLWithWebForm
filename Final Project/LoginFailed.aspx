<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginFailed.aspx.cs" Inherits="Machine_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="style1">
        Log-in to enjoy our website.</h2>
    <p class="style1">
        <asp:Label ID="Label1" runat="server" Font-Names="Segoe UI" ForeColor="Red" 
            Text="lblError"></asp:Label>
    </p>
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="style2">
                    Username</td>
                <td>
                    <asp:TextBox ID="txtUNinpt" runat="server" BackColor="#666666" 
                        BorderStyle="None" Font-Names="Segoe UI" ForeColor="White" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password</td>
                <td>
                    <asp:TextBox ID="txtPWinpt" runat="server" BackColor="#666666" 
                        BorderStyle="None" Font-Names="Segoe UI" ForeColor="White" TextMode="Password" 
                        Width="156px"></asp:TextBox>
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
