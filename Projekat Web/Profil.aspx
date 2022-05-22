<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="Projekat_Web.Profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Home.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="flex">
                <div class="logo">
                    Uredi me
                </div>
                <div class="razmak">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="istrazite" OnClick="LinkButton1_Click">Istrazite</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="zakazivanja" OnClick="LinkButton2_Click">Moja Zakazivanja</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="Profil" OnClick="LinkButton3_Click" >Profil</asp:LinkButton>
                </div>
            </div>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
