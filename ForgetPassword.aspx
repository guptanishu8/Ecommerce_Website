<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Usedbookcafe.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        
        body
        {
            background:#ccc;
            height: 381px;
            width: 354px;
        }
        
        .formclass
        {
           padding:2px;
          
           
     

        }
        
        .input
        {
            padding:5px;
            width:90%;
           
        }   
        

    </style>
</head>
<body >

<div>
<br/>

   <form id="form1" runat="server">

    <div class="formclass" 
        style="border-style: solid; background-color: #FFFFFF; height: 393px;" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="FORGOT PASSWORD" 
            
            style="font-size: larger; font-weight: 700; font-family: 'Times New Roman', Times, serif; text-align: center;" 
            Font-Bold="True" ForeColor="#0000CC"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="input" placeholder="ENTER YOUR USERNAME"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ErrorMessage="Username is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator> 
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="input" placeholder="ENTER YOUR REGISTRED EMAIL ID" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                     runat="server" ErrorMessage="Email ID is Required" ControlToValidate="TextBox1" 
                     ></asp:RequiredFieldValidator><span class="style9">
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="GET YOUR PASSWORD" CssClass="input" 
            onclick="Button1_Click" BackColor="#0033CC" Font-Bold="True" 
            ForeColor="White" />
            <br />
        <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        <br />
        <br />
        <br />
        </span>
                 
        <br />
        <br />
                 
    </div>
    </form>
    </div>
</body>
</html>
