<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Projekat_Web.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Register.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <p>Login</p>
            <div class="input">
                 <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" color="rgb(193, 215, 215)" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Unesi Mejl" CssClass="text" ></asp:TextBox>
            </div>
            <div class="input">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" color="rgb(193, 215, 215)" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Unesi Sifru" CssClass="text" ></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Potvrdi" OnClick="Button1_Click" />
            <p>
                Ili 
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"> Napravi nalog? </asp:LinkButton>
            </p>
            
        </div>
        
    </form>
</body>
</html>
