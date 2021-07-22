<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="Usedbookcafe.EditBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        
        .auto-style3
        {
            color: #FFFFFF;
            font-weight: 700;
            font-size: medium;
            background-color: #0000FF;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
  <table cellpadding="2" class="style1">
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ****<asp:Label ID="Label1" runat="server" Text="DELETE BOOK DETAILS" 
                    style="font-size: x-large; font-weight: 700; font-family: Verdana; background-color: #FF66CC"></asp:Label>
                ****</td>
        </tr>
        <tr>
            <td>
                
            <strong>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Id: " 
                    style="font-size: medium; font-family: 'Times New Roman', Times, serif"></asp:Label>
            <br />
            </strong>&nbsp;</td>
            <td>
                <strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="212px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
                <br />
                <br />
                </strong>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="auto-style3" Height="36px" Width="93px" OnClick="Button1_Click" />
            <br />
            <br />
            </strong>
            <br />
            &nbsp;</td>
        </tr>
    </table>
    
</div>

<div>
            <strong>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </strong>
</div>






</asp:Content>
