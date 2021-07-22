<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="Usedbookcafe.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12
        {
            margin-left: 16px;
        }
       
       
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div align="center" 
        style="font-size: large; width: 958px; margin-top: 22px;">
    <br />
    <asp:Label ID="Label1" runat="server" 
        Text="THANKS FOR BUYING BOOKS FROM OUR SITES!!" Font-Size="XX-Large"></asp:Label>
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" 
        NavigateUrl="~/BuyBook.aspx">GO BACK FOR BUYING BOOK</asp:HyperLink>
    <br />
    <br />
    <br />
  </div>
 <div style="text-align: left"> 

<span class="auto-style5"><strong>Order Id:
        </strong>
        </span>
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5"></asp:Label></strong><span class="auto-style5"></span>&nbsp;&nbsp;&nbsp; <strong>
    
            <br class="auto-style5" />
                <br />
            </strong><span class="auto-style5"><strong>Order Date:
        </strong>
        </span>
        <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5"></asp:Label>
        </strong>
        <br />
        <br />

</div>

<div style="background-image: none; width: 950px; height: 562px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Height="326px" Width="944px" style="margin-bottom: 0px" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr.No" />
            <asp:BoundField DataField="book_name" HeaderText="Book Name" />
            <asp:BoundField DataField="author_name" HeaderText="Author Name" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="price" HeaderText="Price" />
             <asp:ImageField DataImageUrlField="book_image" HeaderText=" BooK Image" ItemStyle-Height="200px" ItemStyle-Width="200px" ControlStyle-Height="200" ControlStyle-Width="200">
<ControlStyle Height="200px" Width="200px"></ControlStyle>

                    <ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" />
                </asp:ImageField>
            <asp:BoundField DataField="category" HeaderText="Category" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
  
 <div style="height: 358px; width: 957px">  
     <br />
     <br />
     Type your Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
         Height="47px" Width="298px" TextMode="MultiLine" CssClass="auto-style12"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Address is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        
        <br />
            <br />
            <br />
   Enter Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="285px" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter mobile number: " ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct number" ControlToValidate="TextBox2" ValidationExpression="^([7-9]{1})([0-9]{9})$" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
        <br />
     <br />

            <asp:Button ID="Button1" runat="server" Text="Place Order" 
         OnClick="Button1_Click"  Height="47px" Width="194px" Font-Bold="True" 
          BackColor="#3333FF" ForeColor="White" /></div>
</asp:Content>
