<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Usedbookcafe.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Register Page</title>
    <style type="text/css">
         body
        {
            background:#ccc;
        }
        .auto-style2 {
            width: 662px;
            height: 330px;
            background-color: #FFFFFF;
        }
        
       
        .style1
        {
            background-color: #FF5050;
        }
        
       
        .style2
        {
            width: 117px;
            height: 69px;
            float: none;
        }
        .auto-style4
        {
            text-align: left;
        }
        
       
        .style3
        {
            width: 1290px;
            height: 356px;
        }
        
       
        .style4
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: x-large;
        }
        
       
    </style>

</head>
<body>
    <form id="form1" runat="server">
       <div style="font-size:xx-large;font-weight:bolder;font-size:large;background-color:Aqua; position: relative; text-align: center; text-decoration: underline;">
           <br class="style1" />
           <img alt="" class="style2" src="image/logo.jpg.png" 
               style="background-color: #FFFFFF" /><asp:Label ID="Label1" runat="server" Text="Registration Form" Font-Size="XX-Large" CssClass="auto-style4" ></asp:Label>
        <br/></div> 
        <center>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Kindly enter your details" ForeColor="#0033CC" Font-Bold="True" Font-Italic="True" Font-Underline="True" text-align="center" align="center" Font-Size="XX-Large" ></asp:Label></center>&nbsp<asp:SqlDataSource 
           ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:NProjectConnectionString2 %>" 
          SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
       <img class="style3" src="image/HM2.jpg" /><br />
       <div style="top: 277px; left: 657px; position: absolute; height: 53px; width: 536px">
           <p style="font-size: x-large; font-style: italic; font-family: 'Times New Roman', Times, serif; color: #CC66FF">
       Register And Get your Favourite book from here......</p>
       </div>
        <div>
            <table class="auto-style2" style="font-size: medium; font-family: 'times New Roman', Times, serif; " align="center">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="FULL NAME:"></asp:Label> </td>
                    <td class="auto-style6">
             
                      <asp:TextBox ID="TextBox1" runat="server" BorderColor="#3366CC" Height="35px" 
                             Width="150px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter the valid name" ControlToValidate="Textbox1" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                        
                        <br />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="PHONE NO:" ></asp:Label> </td>
                    <td class="auto-style5">
  <asp:TextBox ID="TextBox2" runat="server" BorderColor="#3366CC" Height="35px" 
                             Width="150px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Mobile number  is Required: " ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct number" ControlToValidate="TextBox2" ValidationExpression="^([7-9]{1})([0-9]{9})$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                     <asp:Label ID="Label5" runat="server" Text="EMAIL ID:"></asp:Label> </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" BorderColor="#003399" Height="35px" 
                            Width="150px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Email-id Password is Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        .<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailId" ControlToValidate="TextBox3"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label6" runat="server" Text="ADDRESS:"  ></asp:Label> </td>
                    <td class="auto-style5" >
                      <asp:TextBox ID="TextBox4" runat="server" Height="60px" Width="150px" 
                            Textmode="Multiline" BorderColor="#003399"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address  is Required." ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="USERNAME:" ></asp:Label> </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="#003399" Height="35px" 
                            Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="USERNAME is Required." ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter the correct user name." ControlToValidate="TextBox5" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="PASSWORD:" ></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" 
                            BorderColor="#003399" Height="35px" Width="150px" ></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password not to Strong." ControlToValidate="Textbox6"  OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="Passw"></asp:CustomValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is Required." ControlToValidate="TextBox6"></asp:RequiredFieldValidator>                 </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="CONFIRM PASSWORD:" ></asp:Label></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" runat="server"  TextMode="Password" 
                            BorderColor="#003399" Height="35px" Width="150px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password in not matching."></asp:CompareValidator>
                    
                    </td>
                       </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="SIGN UP" BorderColor="Black" 
                            Height="26px" Width="79px" OnClick="Button1_Click" 
                            style="font-weight: 700; font-size: medium; font-family: 'Times New Roman', Times, serif; background-color: #0066FF" />
                    </td>
                    <td >
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="RESET" BorderColor="Black" 
                            Height="27px" Width="74px" OnClick="Button2_Click" 
                            style="font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #0066FF" />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                <tr>
                    <td>
                       
                        &nbsp;</td>
                    <td ><p><span class="style4">You Have Account?</span> 
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" 
                            style="font-size: x-large; font-style: italic; font-family: 'Times New Roman', Times, serif">SignIN Here</asp:HyperLink></p>
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>

</body>
</html>
