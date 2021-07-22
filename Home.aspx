<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Usedbookcafe.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .style7
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            font-weight: bold;
            width: 266px;
        }
        .style8
        {
            width: 266px;
        }
        .style9
        {
            border-style: outset;
            border-color: #FFFFFF;
width: 948px;
            height: 430px;
            
            top: 530px;
            left: 600px;
            margin-top: 646px;
            margin-bottom: 0px;
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="WELCOME TO USED BOOK CAFE!!!
" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFF66" style="text-align: center"></asp:Label>
        <br />
        <br />
<div style="border-style: ridge; background-image: url('image/b8.jpg'); height: 818px; width: 945px;" >
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="BUY AND SELL BOOK ONLINE" 
        Font-Bold="True" Font-Italic="True" Font-Size="X-Large" 
        
        style="font-size: xx-large; font-family: 'Times New Roman', Times, serif; color: #FF3300" 
        ForeColor="#FF0066"></asp:Label>
   
    <br />
    <br />
    <br />
    <br />
&nbsp;<img class="style9" src="image/HM1.jpg"/><br />
    <br />
    <br />
    <br />
    <br />
    <br />
        </div>
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="~~**ALL THE AVAILABLE BOOK **~~" 
            Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" 
            BackColor="#FFCC00"></asp:Label>
        <br />
        <br />
        <br />
        <br />&nbsp;
    </div>
    <div>
   
    <br />
    <br />
   <br />
   
   <br />
   
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
   
   <br />
   
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" 
                 RepeatColumns="4" 
                RepeatDirection="Horizontal">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    <table class="style3">
                        <tr>
                            <td align="center" class="style7">
                                Book Name:<b><asp:Label ID="Label3" runat="server" 
                                    Text='<%# Eval("book_name") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style7">
                                Author Name:<b><asp:Label ID="Label4" runat="server" 
                                    Text='<%# Eval("author_name") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style8">
                                <asp:Image ID="Image2" runat="server" Height="100px" 
                                    ImageUrl='<%# Eval("book_image") %>' Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style7" >
                                Price:<b><asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style8">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="BUY BOOK FROM HERE" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="#FF5050" />
                            </td>
                        </tr>
                    </table>
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:NProjectConnectionString4 %>" 
                SelectCommand="SELECT * FROM [bookdetails]"></asp:SqlDataSource>
            <br />
            
    </div>
     <br />
    <br />
    <br />
</div> 
    </asp:Content>
