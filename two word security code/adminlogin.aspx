<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 425px;
        }
        .style5
        {
            width: 266px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table class="style3">
        <tr>
            <td class="style4">
                <asp:Image ID="Image2" runat="server" Height="194px" ImageUrl="~/admin.jpg" 
                    Width="277px" />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" 
                    style="font-style: italic; font-size: 39px; font-family: 'Blackadder ITC'; color: #660033; font-weight: 700;" 
                    Text="Admin Login" ForeColor="#36B0B6"></asp:Label>
                <br />
                <br />
                <table class="style3">
                    <tr>
                        <td class="style5">
                            <asp:Label ID="Label3" runat="server" 
                                style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-size: large; font-weight: 700" 
                                Text="Enter Security Code"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="158px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:Label ID="Label4" runat="server" 
                                style="font-family: 'Times New Roman', Times, serif; font-style: italic; font-size: large; font-weight: 700" 
                                Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="158px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="35px" Text="Confirm" 
                    Width="154px" BackColor="#36B0B6" ForeColor="White" 
                    onclick="Button1_Click" /></center>
                <asp:Label ID="Label5" runat="server" style="font-style: italic"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

