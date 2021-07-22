<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AHome.aspx.cs" Inherits="Usedbookcafe.AHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 912px;
            height: 464px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="color: #FF9933; font-size: large; font-weight: 700">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-----****<asp:Label ID="Label1" runat="server" 
        Text="Welcome To ADMIN PANEL" style="font-size: xx-large"></asp:Label>
    ****-----<br />
    <br />
        
    <img class="style1" src="image/image2.jpg" />
    <div style="top: 888px; left: 95px; position: absolute; height: 92px; width: 920px">
   <asp:Label ID="Label2" runat="server" Text="ADMIN MANAGEMENT" 
        
            style="top: -153px; left: 378px; position: absolute; width: 542px; color: #000000; height: 110px;" 
            Font-Size="XX-Large"></asp:Label> </div></div>

</asp:Content>
