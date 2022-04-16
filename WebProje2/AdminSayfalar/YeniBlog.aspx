<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniBlog.aspx.cs" Inherits="WebProje2.AdminSayfalar.YeniBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Blog Başlık" Font-Size="Large" Font-Bold="true" ForeColor="#009933"></asp:Label>
        <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" placeholder="Blog Başlığınızı Giriniz"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Blog Tarih" Font-Size="Large" Font-Bold="true" ForeColor="#cc3300"></asp:Label>
        <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control" placeholder="Blog Tarihini Giriniz"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Blog Görsel" Font-Size="Large" Font-Bold="true" ForeColor="#3366ff"></asp:Label>
        <asp:TextBox ID="TxtResim" runat="server" CssClass="form-control" placeholder="Blog Görseli"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Blog Türü" Font-Size="Large" Font-Bold="true" ForeColor="#996600"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="TURAD" DataValueField="TURID" Font-Bold="true"></asp:DropDownList>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Blog Kategorisi" Font-Size="Large" Font-Bold="true" ForeColor="#cc6600"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataTextField="KATEGORIAD" DataValueField="KATEGORIID" Font-Bold="True"></asp:DropDownList>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Blog İçerik" Font-Size="Large" Font-Bold="true" ForeColor="#ffff00"></asp:Label>
        <asp:TextBox ID="Txtİcerik" runat="server" CssClass="form-control" placeholder="Blog İçeriğini Giriniz" Height="100" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="BtnKaydet" runat="server" Text="KAYDET" CssClass="btn btn-info pull-right col-md-3" Font-Bold="true" ForeColor="#ffff00" OnClick="BtnKaydet_Click" />
    </form>
</asp:Content>
