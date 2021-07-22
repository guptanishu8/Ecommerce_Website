<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpawd.aspx.cs" Inherits="Usedbookcafe.forgotpawd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
     <div style="text-align: left">
            &quot;&#39;<asp:Label ID="Label2" runat="server" Text="Enter Username :" style="font-weight: 700; color: #0000FF; text-align: center"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="name" runat="server" style="font-weight: 700; text-align: center"></asp:TextBox>
  
        <p>
            <asp:Label ID="Label1" runat="server" Text="Enter Your username" 
                style="font-weight: 700; color: #0000FF"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="un" runat="server"></asp:TextBox>
        </p>
            <p>
            <asp:Label ID="Label4" runat="server" Text="Enter Your New Password Here" 
                    style="font-weight: 700; color: #0000FF"></asp:Label>
                :<asp:TextBox ID="pw" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Change the password" 
                OnClick="Button1_Click" 
                style="color: #0000FF; font-weight: 700; text-align: center" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
            <asp:Label ID="Label3" runat="server" Text="Password is not change"></asp:Label>
        </p></div>
    </form>

    
    
    
</body>
</html>
