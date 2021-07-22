<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FeedbackUs.aspx.cs" Inherits="Usedbookcafe.FeedbackUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<body>
    <div style="text-align:center;background-color:#00FF99; font-size:x-large;font-weight:bolder;font-family:Calligraphic"><br />
    <h2 class="style1">FEEDBACK FORM</h2>
       
    <br />
    
        We would like to know your opinions to improve our website
            <br />
            <br />
        <asp:Label ID="Label3" Font-Italic="True" runat="server" Text="Enter Your Email Id :" Font-Size="x-Large" Font-Underline="True" ForeColor="Black" style="font-weight: 700"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"  Height="31px" Width="494px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter email-id" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter correct email id" ControlToValidate="TextBox3"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td></tr>
            <br />
            <br/>
            <asp:Label ID="Label1" Font-Italic="True" runat="server" Text="Your valuable Suggestions :" Font-Size="x-Large" Font-Underline="True" ForeColor="Black" style="font-weight: 700"></asp:Label>
            <br />
            <br/>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="118px" Width="494px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Rate website out of 10 :" Font-Bold="True" Font-Italic="True" Font-Size="x-Large" Font-Underline="True" ForeColor="Black"></asp:Label>
            <br />
            <br/>
            <asp:TextBox ID="TextBox2" runat="server" Height="47px" Width="494px"></asp:TextBox>
            <br />
            <br />
            <br/>
            <asp:Button ID="Button1" runat="server" Text="Send Feedback" 
        OnClick="Button1_Click" 
            style="font-weight: 700; color: #FFFFFF; background-color: #003399;" CssClass="auto-style1" 
        Width="196px" Height="44px" />
        
    
    <br />
    <br />
        
    
    </div>
</body>


</asp:Content>
