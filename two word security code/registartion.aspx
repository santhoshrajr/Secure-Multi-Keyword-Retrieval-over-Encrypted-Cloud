<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registartion.aspx.cs" Inherits="registartion" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        margin-left: 318px;
    }
        .style7
    {
        width: 100%;
            height: 116px;
        }
    .style9
    {
        width: 261px;
        font-style: italic;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Registration" Font-Italic="True" 
        Font-Size="XX-Large" style="font-family: Algerian; color: #660033"></asp:Label></center>
    
                <asp:Panel ID="Panel2" runat="server" BorderColor="#660066" 
                    BorderStyle="Groove" Height="209px" CssClass="style6" 
    Width="621px">
                    <table class="style7">
                        <tr>
                            <td class="style9">
                                UserName</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                UserEmailId</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Password</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Mobile No</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Address</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" BackColor="#36B0B6" ForeColor="White" 
                                    Text="Submit" Width="89px" onclick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="Label3" runat="server" 
                        style="font-family: 'Blackadder ITC'; font-size: x-large"></asp:Label>
                    <br />
                    <br />
</asp:Panel>
                    
    
</asp:Content>

