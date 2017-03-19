<%@ Page Language="C#" MasterPageFile="~/adminhome.master" AutoEventWireup="true" CodeFile="viewfile.aspx.cs" Inherits="viewfile" Title="Untitled Page" %>

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
    <asp:Panel ID="Panel2" runat="server" BorderColor="#660033" 
        BorderStyle="Groove" Height="138px" style="margin-left: 395px" 
        Width="400px">
        &nbsp;<br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/graph.jpg" Width="51px" />
        <asp:LinkButton ID="User" runat="server" ForeColor="#660033" 
            style="font-family: 'Times New Roman', Times, serif; font-style: italic" 
            onclick="User_Click">File 
        Usage</asp:LinkButton>
        <asp:Image ID="Image3" runat="server" Height="48px" ImageUrl="~/ccc.jpg" 
            Width="59px" />
        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#660033" 
            style="font-family: 'Times New Roman', Times, serif; font-style: italic" 
            onclick="LinkButton2_Click">Download 
        UserList</asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="104px" style="margin-left: 191px" 
        Width="668px" Visible="False">
        <asp:Image ID="Image4" runat="server" Height="88px" ImageUrl="~/ff.jpg" 
            Width="320px" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Height="154px" style="margin-left: 187px" 
        Width="708px" Visible="False">
        <asp:GridView ID="GridView1" runat="server">
            <HeaderStyle BackColor="#660033" ForeColor="White" />
        </asp:GridView>
    </asp:Panel>
    <p>
    </p>
</asp:Content>

