<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Usedbookcafe.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN PAGE</title>
    
    <style >
 
   
  
        
        body
        {
            background:#ccc;
        }
        
        .formclass
        {
           padding:10px;
          
           background:#fff;
           width:421px;
            text-align: center;
            height: 489px;
            position: relative;
            bottom: -68px;
            right: -308px;
            top: 63px;
            left: 311px;
        }
        
        .input
        {
            padding:5px;
            width:90%;
           
        }   
        .form1
        {
            height: 1078px;
            width: 1322px;
        }
        #form1
        {
            height: 1066px;
            width: 1304px;
        }
    </style>
<body >

<div >
    <form >

    <div class="formclass" style="border-style: ridge" >
        <asp:Label ID="Label1" runat="server" Text="LOGIN PAGE" 
            
            style="font-size: larger; font-weight: 700; font-family: 'Times New Roman', Times, serif" 
            ForeColor="Blue"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="input" placeholder="USERNAME"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ErrorMessage="Name is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator> 
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="input" placeholder="PASSWORD" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                     runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox1" 
                     ></asp:RequiredFieldValidator><span class="style9">
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="LOGIN" CssClass="input" 
            onclick="Button1_Click" BackColor="#0033CC" />
            <br />
        <br />
        <br />
            
                 <a href="#" onclick="window.open('ForgetPassword.aspx','FP','width=400,height=400,top=340,left=500,fullscreen=no,resizable=0');">
                       Forgot Password</a>

        <br />
        <br />
        </span><asp:HyperLink 
                     ID="HyperLink2" runat="server" 
                     NavigateUrl="~/Register.aspx" CssClass="style11" ForeColor="#3333CC">SignUp</asp:HyperLink>
                 

                 
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
                 
    </div>
    </form>
    </div>
</body>
     
</html>
