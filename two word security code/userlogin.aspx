<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 92%;
    }
    .style5
    {
        width: 281px;
        font-family: "Times New Roman", Times, serif;
        font-style: italic;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
       <center> 
           <asp:Label ID="Label2" runat="server" 
            style="font-family: 'Blackadder ITC'; font-size: 36px; color: #660033" 
            Text="User Login"></asp:Label></center>
    <asp:Panel ID="Panel2" runat="server" BorderColor="#660033" 
    BorderStyle="Groove" Height="129px" style="margin-left: 348px" Width="569px">
        <table class="style3">
            <tr>
                <td class="style5">
                    UserName</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="135px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="135px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Security Code</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="135px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#36B0B6" ForeColor="White" 
                        style="font-size: medium" Text="Login" Width="104px" 
                        onclick="Button1_Click" />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

