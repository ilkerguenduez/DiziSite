<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="WebProje2.AdminSayfalar.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Blog Başlık" Font-Size="Large" Font-Bold="true" ForeColor="red"></asp:Label>
        <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" placeholder="Blog Başlığınızı Giriniz" Enabled="false"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Kullanıcı Adı" Font-Size="Large" Font-Bold="true" ForeColor="red"></asp:Label>
        <asp:TextBox ID="TxtKullaniciAd" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Yorum İçerik" Font-Size="Large" Font-Bold="true" ForeColor="red"></asp:Label>
        <asp:TextBox ID="Txtİcerik" runat="server" CssClass="form-control" placeholder="Yorum İçeriğini Giriniz" Height="100" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="BtnKaydet" runat="server" Text="GÜNCELLE" CssClass="btn btn-danger pull-right col-md-3" Font-Bold="true" ForeColor="#ffff00" OnClick="BtnKaydet_Click"/>
    </form>
</asp:Content>
