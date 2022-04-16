<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Istatistik.aspx.cs" Inherits="WebProje2.Linq_İstatistik.İstatistik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered tab-content">
        <caption>İstatistikler</caption>
        <tr>
            <td>
                Dizi Sayısı:<asp:Label ID="LblDizi" runat="server" Text="Label"></asp:Label></td>
            <td>
                Film Sayısı:<asp:Label ID="LblFilm" runat="server" Text="Label"></asp:Label></td>
            <td>
                Belgesel Sayısı:<asp:Label ID="LblBelgesel" runat="server" Text="Label"></asp:Label></td>
            <td>
                Animasyon Sayısı:<asp:Label ID="LblAnimasyon" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>
                Toplam Blog Sayısı:<asp:Label ID="LblBlog" runat="server" Text=""></asp:Label></td>
            <td>
                Toplam Yorum Sayısı:<asp:Label ID="LblYorum" runat="server" Text=""></asp:Label></td>
            <td>
                En Fazla Yorum Alan Blog:<asp:Label ID="LblBlogYorum" runat="server" Text=""></asp:Label></td>
            <td>
                En Fazla Bloga Sahip Kategori:<asp:Label ID="LblKat" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
</asp:Content>
