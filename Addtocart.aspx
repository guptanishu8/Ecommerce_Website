<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addtocart.aspx.cs" Inherits="Usedbookcafe.Addtocart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            font-size: large;
            font-family: serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <span class="auto-style4">
    <br />
    You have
            </span>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4"></asp:Label>
            <span class="auto-style4">&nbsp;food items in your cart</span><br />
            <br /><br /><br />
            <strong>
            <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/BuyBook.aspx" CssClass="auto-style4">Continue Shopping</asp:HyperLink>
            </strong>
            <br />
    <br />
    <div style="width: 947px; background-image: none;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Width="945px" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="Inset" BorderWidth="1px" CellPadding="1" CellSpacing="1" 
            ShowFooter="True" onrowdeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr.No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="book_name" HeaderText="Book Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="author_name" HeaderText="Author Name ">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="book_image" HeaderText=" BooK Image" ItemStyle-Height="200px" ItemStyle-Width="200px" ControlStyle-Height="200" ControlStyle-Width="200">
<ControlStyle Height="200px" Width="200px"></ControlStyle>

                    <ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" />
                </asp:ImageField>
            <asp:BoundField DataField="category" HeaderText="Category">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField HeaderText="Remove" ShowDeleteButton="True">
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" 
            BorderWidth="6px" Height="50px" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        
    </asp:GridView>
    
    </div>
    <div>
        <br />
        <br />
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
        Text="CheckOut" Width="155px" Font-Bold="True" Font-Size="Large" 
            style="color: #FFFFFF; background-color: #0066FF" />
   
   </div>
</asp:Content>
