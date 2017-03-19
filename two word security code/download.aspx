<%@ Page Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="download.aspx.cs" Inherits="download" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <p>
        <br />
    </p>
              <asp:GridView ID="gvDetails" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="fileid" 
        onselectedindexchanged="gvDetails_SelectedIndexChanged1" 
        onrowcommand="gvDetails_RowCommand">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>
 <asp:ButtonField HeaderText="Download" Text="Click Here.!" CommandName="dwn" />
<asp:BoundField DataField="fileid" HeaderText="fileid" />
    <asp:TemplateField HeaderText="FileName">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("filename") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>

</Columns>
</asp:GridView>
    <p>
    </p>
    <p>
    </p>



</asp:Content>

