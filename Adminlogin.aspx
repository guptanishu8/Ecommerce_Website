<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Usedbookcafe.Adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style type="text/css">
        .style1
        {
            width: 263px;
        }
        .style2
        {
            width: 303px;
        }
        .auto-style1
        {
            height: 242px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
     <asp:Label ID="Label1" runat="server" Text="ADMIN LOGIN PAGE" 
                   BackColor="White" Font-Size="XX-Large" ForeColor="Black" 
                   style="background-color: #00FFFF" ></asp:Label>
        <br />
    </div>
    <div>
    <table  class="auto-style1" align="center">
             <tr>
                 <td class="style1">
                     <asp:Label ID="Label2" runat="server" Text="USERNAME:"></asp:Label>&nbsp; </td>
                 <td class="style2">
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
             <br />
            <br />
                 </tr>
                 <tr>
                 <td class="style1">
                     <asp:Label ID="Label3" runat="server" Text="PASSWORD:"></asp:Label></td>
                     <td class="style2">
                         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br />
            <br /></td>
             </tr>
             <tr>
                 <td colspan="2" class="style1">
              <br />
              <br />
              <br />
              <asp:Button ID="Button1" runat="server" Text="Login" Font-Names="Times New Roman" 
                         Font-Size="Medium" Height="33px" Width="77px" OnClick="Button1_Click" 
                         style="position: relative; top: -18px; left: 131px" />
             </tr>
               <tr>
                  <td colspan="2"> 
                      <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                   </tr>
          
             </table>
         
    </div>
    </form>
</body>
</html>
