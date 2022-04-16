<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="WebProje2.AdminSayfalar.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-condensed">
        <%--<a href="YeniBlog.Aspx" class="btn btn-info pull-right" style="width: 120px;">YENİ BLOG <i class="fas fa-plus"></i></a>
        <br />
        <br />--%>
        <tr>
            <th>ID</th>
            <th>KULLANICI AD</th>
            <th>BLOG</th>
            <th>YORUM İÇERİK</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("YORUMID") %></td>
                    <td><%# Eval("YORUMCUNICKNAME") %></td>
                    <td><%# Eval("BLOGBASLIK") %></td>
                    <td><%# Eval("YORUMICERIK") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" Width="120px" NavigateUrl='<%# "YorumSil.Aspx?YORUMID="+Eval("YORUMID") %>' CssClass="btn btn-danger">SİL <i class="fas fa-trash-alt"></i></asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" Width="120px" NavigateUrl='<%# "YorumGuncelle.Aspx?YORUMID="+Eval("YORUMID") %>' CssClass="btn btn-success">GÜNCELLE <i class="fas fa-redo"></i></asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
