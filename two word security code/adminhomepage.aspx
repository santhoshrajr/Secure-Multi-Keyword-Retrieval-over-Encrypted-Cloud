<%@ Page Language="C#" MasterPageFile="~/adminhome.master" AutoEventWireup="true" CodeFile="adminhomepage.aspx.cs" Inherits="adminhomepage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <table class="style1">
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="338px" ImageUrl="~/gggg.png" 
                    Width="318px" />
                <asp:Label ID="Label2" runat="server" 
                    style="font-family: 'Blackadder ITC'; font-size: 80px; color: #660033" 
                    Text="Welcome"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Image ID="Image3" runat="server" Height="338px" ImageUrl="~/fff.png" 
                    Width="318px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

