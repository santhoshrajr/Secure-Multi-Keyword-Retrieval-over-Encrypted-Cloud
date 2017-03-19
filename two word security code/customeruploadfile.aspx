<%@ Page Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="customeruploadfile.aspx.cs" Inherits="customeruploadfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 88%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <br />
    </p>
       <center> &nbsp;&nbsp; <asp:Label ID="Label2" runat="server" 
            style="font-family: 'Blackadder ITC'; font-size: xx-large; color: #660033" 
            Text="File Upload"></asp:Label></center>
    <asp:Panel ID="Panel2" runat="server" BorderColor="#660033" 
        BorderStyle="Groove" Height="138px" style="margin-left: 395px" 
        Width="617px">
        <table class="style1">
            <tr>
                <td>
                    File Catagory</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="136px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    FileName</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="136px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    File Upload</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="220px" />
                    
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#36B0B6" ForeColor="White" 
                        Height="31px" Text="File Upload" Width="140px" onclick="Button1_Click" />
                    <asp:Label ID="Label3" runat="server" 
                        style="font-family: 'Blackadder ITC'; font-size: large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
    </p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

