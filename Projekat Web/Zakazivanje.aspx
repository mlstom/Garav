<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zakazivanje.aspx.cs" Inherits="Projekat_Web.Zakazivanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Home.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="flex">
                <div class="logo">
                    Uredi me
                </div>
                <div class="razmak">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="istrazite">Istrazite</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="zakazivanja">Moja Zakazivanja</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="Profil" >Profil</asp:LinkButton>
                </div>
            </div>
        <div>
            Dobar dan,<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            Zakazujete <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> u
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            po ceni <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> rsd
        </div>
        <div>
            
            <asp:TextBox ID="TextBox1" TextMode="Date" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="zakazi" OnClick="Button1_Click" />
        </div>
        
    </form>
</body>
</html>
