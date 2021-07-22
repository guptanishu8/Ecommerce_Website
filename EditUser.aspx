<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Usedbookcafe.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 98%;
        }
        .style2
        {
            height: 70px;
        }
        .style3
        {
            height: 70px;
            width: 657px;
        }
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ----- ****&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="DELETE USER DETAILS" style="font-size: x-large; font-weight: 700; font-family: Verdana; background-color: #FF66CC"></asp:Label>
            &nbsp;&nbsp;&nbsp; ****------<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                
            <strong>
            <br />
                <asp:Label ID="Label4" runat="server" 
                    style="font-size: medium; font-family: 'Times New Roman', Times, serif" 
                    Text="ENTER THE USER ID:"></asp:Label>
            <br />
            </strong>&nbsp;</td>
            <td class="style3">
                <strong>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="212px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Id"></asp:RequiredFieldValidator>
                <br />
                <br />
                </strong>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="auto-style3" 
                    Height="40px" Width="112px" OnClick="Button1_Click" />
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
