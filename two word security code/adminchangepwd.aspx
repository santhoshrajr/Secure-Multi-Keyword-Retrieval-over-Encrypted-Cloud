<%@ Page Language="C#" MasterPageFile="~/adminhome.master" AutoEventWireup="true" CodeFile="adminchangepwd.aspx.cs" Inherits="adminchangepwd" Title="Untitled Page" %>

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
      <center> <asp:Label ID="Label2" runat="server" 
            style="font-family: 'Blackadder ITC'; font-size: xx-large; color: #660033" 
            Text="ChangePassword"></asp:Label></center> 
    <asp:Panel ID="Panel2" runat="server" BorderColor="#660033" 
        BorderStyle="Groove" Height="138px" style="margin-left: 395px" Width="681px">
        <table class="style1">
            <tr>
                <td>
                    OldPassword</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="136px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    New Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="136px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="136px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#36B0B6" ForeColor="White" 
                        Height="31px" Text="Change Password" Width="140px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

