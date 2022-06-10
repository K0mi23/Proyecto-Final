<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_Final.Log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <div class="jumbotron">
        <body>



    
<style type="text/css">
    .wrp { width: 100%; text-align: center; }
    .frm { text-align: left; width: 500px; margin: auto; }
    .fldLbl { white-space: nowrap; }
</style><style>
            body {background-color: cornflowerblue;} 
            </style>

<div class="wrp">
    <div class="frm">
       <form id="form1" runat="server">

           &nbsp;&nbsp;&nbsp;

        <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#333333" Height="286px" OnAuthenticate="Login1_Authenticate" Width="397px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" ForeColor="#284775" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>
    </form>
    </div>
</div>


</body>
    </div>
    
</html>
