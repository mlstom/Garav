<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mojazak.aspx.cs" Inherits="Projekat_Web.Mojazak" %>

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
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="istrazite" OnClick="LinkButton1_Click">Istrazite</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="zakazivanja" OnClick="LinkButton2_Click">Moja Zakazivanja</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="Profil" OnClick="LinkButton3_Click" >Profil</asp:LinkButton>
                </div>
            </div>
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <span> <%# Eval("email") %></span>
                    <span> <%# Eval("naziv") %></span>
                     <span> <%# Eval("dan").ToString().Remove(Eval("dan").ToString().Length-9) %></span>
                    <span> <%# Eval("vreme") %></span>
                     <span> <%# Eval("usluga") %></span>
                     <span> <%# Eval("adresa") %></span>
                     <span> <%# Eval("mail") %></span>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
