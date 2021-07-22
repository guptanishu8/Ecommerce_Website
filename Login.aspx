<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Usedbookcafe.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <title></title>
    <style>
        
        body
        {
            background:#ccc;
        }
        
        .formclass
        {
           padding:10px;
          
           background:#fff;
           width:498px;
            text-align: center;
            height: 408px;
            position: relative;
            bottom: 11px;
            right: -174px;
            top: -5px;
            left: 174px;
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

    <div class="formclass" 
        style="border-style: ridge; margin-right: 0px; font-size: medium; font-family: 'Times New Roman', Times, serif; color: #FF0000;" >
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


</asp:Content>

