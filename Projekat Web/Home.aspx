<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Projekat_Web.Home" %>

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
                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="istrazite" OnClick="LinkButton4_Click">Istrazite</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="zakazivanja" OnClick="LinkButton1_Click">Moja Zakazivanja</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="Profil" OnClick="LinkButton2_Click">Profil</asp:LinkButton>
                    
                </div>
            </div>
            <div class="input" >
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="text" placeholder="Pretrazi salon..." AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </div>
            <asp:DataList ID="DataList3" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" RepeatLayout="Table" >
                <ItemTemplate>

                    <img src="<%# Eval("slika") %>" />
                    <span> <%# Eval("naziv")%></span>
                    <span> <%# Eval("adresa")%></span>
                    <span> <%# Eval("mail")%></span>
                    

                </ItemTemplate>
            </asp:DataList>
            <asp:DataList ID="DataList2" runat="server" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <img src="<%# Eval("slika") %>" />
                    <span> <%# Eval("ime")%></span>
                    <span> <%# Eval("naziv")%></span>
                     <span> <%# Eval("adresa")%></span>
                    <span> <%# Eval("mail")%></span>
                    <span> <%# Eval("cena")%></span>
                    <asp:Button ID="Button2" runat="server" Text="Zakazi" CommandName="zakazi" CommandArgument='<%# Eval("ime").ToString()+","+ Eval("naziv").ToString()+","+ Eval("cena").ToString()+","+Eval("slika").ToString() %>' />
                </ItemTemplate>
            </asp:DataList>
             <p class="kat"> Popularne Usluge</p>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="kategorija" style="display:flex;flex-direction:column;align-items:center;justify-content:center;margin:10px 20px;gap:20px">
                        <span class="ime"   ><%# Eval("ime")%></span> 
                        <img class="slika"  src="<%# Eval("slika") %>"  />
                        
                        <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Vise" CommandName="prikazi" CommandArgument='<%# Eval("ime").ToString() %>' />
                    </div>
                    
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
