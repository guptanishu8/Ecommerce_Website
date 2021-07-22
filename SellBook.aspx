<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SellBook.aspx.cs" Inherits="Usedbookcafe.SellBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 771px;
        }
    .auto-style4 {
        width: 771px;
        height: 21px;
    }
        .auto-style5 {
            width: 688px;
            height: 478px;
        }
        .style7
        {
            height: 77px;
        }
        .style8
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            font-weight: bold;
        }
        .style9
        {
            height: 77px;
            font-weight: bold;
        }
        .style10
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
        .style11
        {
            font-style: italic;
            font-weight: bold;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><div >
           <center>  <asp:Label ID="Label1" runat="server" Text="ADD BOOK HERE " 
                   BackColor="White" Font-Size="XX-Large" ForeColor="Black" align="center" 
                   style="color: #FF3300; background-color: #CCCCFF" ></asp:Label></center>
             <br />
         </div>
    <div class="auto-style5">
        
        <table style="width: 98%; height: 427px;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Book Name:" CssClass="style8"></asp:Label></td>
                <td>
                    <asp:TextBox ID="book_name" runat="server" Height="50px" Width="250px" 
                        style="border-style: groove; border-color: #800000" CssClass="style11">
                    </asp:TextBox>
                    <i><b>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="book_name" ErrorMessage="Book Name is mandatory" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    </b></i>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Author Name: " CssClass="style8"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="author_name" runat="server" Height="50px" Width="250px" 
                        style="border-style: groove; border-color: #800000" CssClass="style11"></asp:TextBox>
                    <i><b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="author_name" ErrorMessage="Author name is required" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    </b></i>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Description:" CssClass="style8"></asp:Label></td>
                <td>
                    <asp:TextBox ID="description" runat="server" TextMode="MultiLine" Height="50px" 
                        Width="250px" style="border-style: groove; border-color: #800000" 
                        CssClass="style11"></asp:TextBox>
                    <i><b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Description is neccesory" ControlToValidate="description" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    </b></i>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Price:" CssClass="style8"></asp:Label></td>
                <td>
                    <asp:TextBox ID="price" runat="server" Height="50px" Width="250px" 
                        style="border-style: groove; border-color: #800000" CssClass="style11"></asp:TextBox>
                    <i><b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="price" ErrorMessage="Enter the Price" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    </b></i>
                </td>
                
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label6" runat="server" Text="Book Image" CssClass="style10"></asp:Label>

                </td>
                <td class="style7">
                    <asp:FileUpload ID="f1" runat="server" Height="50px" Width="250px" 
                        style="border-style: inset; border-color: #FFFFFF" CssClass="style11" />
                    <i><b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Image is mandatory" ControlToValidate="f1" Display="Dynamic"></asp:RequiredFieldValidator>

                    </b></i>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Category:" CssClass="style8"></asp:Label>

                </td>
                <td>
                    <asp:DropDownList ID="category" runat="server"
                        
                        style="border-style: groove; border-color: #800000" Height="30px" 
                       Width="246px" CssClass="style11">
                        <asp:ListItem>Science</asp:ListItem>
                        <asp:ListItem>Drama</asp:ListItem>
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>Mystery</asp:ListItem>
                        <asp:ListItem>Horrer</asp:ListItem>
                        <asp:ListItem>Travel</asp:ListItem>
                        <asp:ListItem>Children</asp:ListItem>
                        <asp:ListItem>Cook</asp:ListItem>
                        <asp:ListItem>Math</asp:ListItem>
                        <asp:ListItem>Health</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>

                    </asp:DropDownList>
                    <i><b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                        runat="server" ErrorMessage="Category is required" 
                        ControlToValidate="category" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    </b></i>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Quantity:" CssClass="style8"></asp:Label>

                </td>
                <td>
                    <asp:DropDownList ID="quantity" runat="server" Height="50px" Width="250px" CssClass="style11" 
                        >
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <i><b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="quantity" ErrorMessage="Enter the Quantity" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        Display="Dynamic" ErrorMessage="Quantity is Invalid" 
                        ValidationExpression="[0-9]" ControlToValidate="quantity"></asp:RegularExpressionValidator>
                    <br />
                    </b></i>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" 
                        Width="100px" Height="35px" 
                        style="color: #008000; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #FF9933" />

                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" 
                        Height="35px" 
                        style="color: #008000; font-size: medium; font-family: 'Times New Roman', Times, serif; font-weight: 700; background-color: #FF6600" 
                        Width="100px" />
                </td>
            </tr>
                       
            <tr>
                <td colspan="2">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Label" 
                        style="font-size: xx-large; font-weight: 700; font-style: italic; font-family: 'Times New Roman', Times, serif"></asp:Label>

                </td>
            </tr>
                       
           </table>
            
    </div>
   
   <div>
       <img src="image/img1.jpg" 
           
           style="top: 615px; left: 670px; position: absolute; width: 389px; height: 329px; border-style: solid; border-width: 1px; margin-left: 0px; padding: 1px 4px" />

       <br />
       <br />
       <br />
       <br />

   </div>            

               
   


</asp:Content>
