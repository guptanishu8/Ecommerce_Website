<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuyBook.aspx.cs" Inherits="Usedbookcafe.BuyBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style >
     .style7
        {
            width: 82px;
            height: 57px;
            margin-right: 0px;
        }      
        .style8
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: small;
        }
        .style9
        {
            font-weight: bold;
        }
        .style10
        {
            font-weight: bold;
            font-size: small;
        }     
        .style11
        {
            font-family: "Courier New", Courier, monospace;
            font-size: x-large;
            font-weight: bold;
        }      
        .style12
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: small;
            text-align: left;
        }
        .style13
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: small;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image: url('image/HM1.jpg')">
<h1 style="margin-left: 360px">&nbsp;</h1>
    <h1 style="margin-left: 360px"><i> &nbsp;WELCOME </i></h1>
    <h1 style="margin-left: 200px"><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BUY BOOK FROM HERE!!</i></h1>
    <p class="style11">
You have <b> <asp:Label ID="Label7" runat="server" Text="Label" 
            style="text-decoration: underline; color: #3366FF"></asp:Label>
    &nbsp;products in your cart</b></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Addtocart.aspx" 
        style="font-size: large; font-weight: 700; font-family: 'Times New Roman', Times, serif; color: #FFFFFF">SHOW CART</asp:HyperLink>
    <img class="style7" src="image/cart.png" style="background-color: #FFFFFF" /><br />
    <br />
    <br />
</div>
    <div>
        	<div style="background-image: url('image/templatemo_h1_bg.jpg'); font-family: 'Times New Roman', Times, serif; font-size: large; font-style: normal; height: 81px;">
            	<br />
            	Categories:<br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">Science</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Drama</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Action</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Mystery</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Horrer</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">Travel</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">Children</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click">Cook</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">Health</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click">Math</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton11" runat="server" 
                    onclick="LinkButton11_Click">Other</asp:LinkButton>
            	&nbsp;<asp:LinkButton ID="LinkButton12" runat="server" 
                    onclick="LinkButton12_Click">ViewAllBooks</asp:LinkButton>
            	</div>
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                BorderColor="#999999" BorderWidth="1px" CellPadding="3" 
                DataSourceID="SqlDataSource1" ForeColor="Black" 
                onitemcommand="DataList1_ItemCommand" RepeatColumns="5" 
                RepeatDirection="Horizontal" BorderStyle="Solid" 
        GridLines="Vertical">
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table style="border-style: inset" >
                        <tr>
                            <td align="center" class="style8" >
                                Book ID:<b><asp:Label ID="Label8" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style9">
                                <asp:Label ID="Label9" runat="server" CssClass="style10" 
                                    style="font-family: 'Times New Roman', Times, serif" 
                                    Text='<%# Eval("book_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="border-style: outset">
                                <asp:Image ID="Image2" runat="server" Height="150px" 
                                    ImageUrl='<%# Eval("book_image") %>' Width="150px" CssClass="style8"  
                                     />
                            </td>
                        </tr>
                        <tr>
                            <td class="style12" >
                                Descripton:<b><asp:Label ID="Label10" runat="server" 
                                    Text='<%# Eval("description") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12" >
                                Author Name:<b><asp:Label ID="Label11" runat="server" 
                                    Text='<%# Eval("author_name") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12" >
                                Category:<b><asp:Label ID="Label12" runat="server" 
                                    Text='<%# Eval("category") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12" >
                                Price:<b><asp:Label ID="Label13" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13" >
                                <span class="style9" >Quantity:</span><asp:DropDownList ID="DropDownList1" runat="server" 
                                    SelectedValue='<%# Eval("quantity") %>' CssClass="style8" >
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                    <asp:ListItem Value="3"></asp:ListItem>
                                    <asp:ListItem Value="4"></asp:ListItem>
                                    <asp:ListItem Value="5"></asp:ListItem>
                                    <asp:ListItem Value="6"></asp:ListItem>
                                    <asp:ListItem Value="7"></asp:ListItem>
                                    <asp:ListItem Value="8"></asp:ListItem>
                                    <asp:ListItem Value="9"></asp:ListItem>
                                    <asp:ListItem Value="10"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    Height="72px" ImageUrl="~/image/addcart.png" Width="147px" CommandName="addtocart" CommandArgument='<%#Eval("id") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
            </asp:DataList>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:NProjectConnectionString4 %>" 
                SelectCommand="SELECT * FROM [bookdetails]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:NProjectConnectionString5 %>" 
                SelectCommand="SELECT * FROM [bookdetails] WHERE ([category] = @category)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="category" QueryStringField="cat" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
<br />
<br />
<br />
 <br />
<br />
<br />
<br />
</asp:Content>
