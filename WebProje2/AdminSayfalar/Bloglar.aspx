<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Bloglar.aspx.cs" Inherits="WebProje2.AdminSayfalar.Bloglar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-condensed">
        <caption">Blog İşlemleri</caption>
        <a href="YeniBlog.Aspx" class="btn btn-info pull-right" style="width: 120px;">YENİ BLOG <i class="fas fa-plus"></i></a>
        <br />
        <br />
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>TARİH</th>
            <th>TÜR</th>
            <th>KATEGORİ</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("BLOGID") %></td>
                    <td><%# Eval("BLOGBASLIK") %></td>
                    <td><%# Eval("BLOGTARIH") %></td>
                    <td><%# Eval("TURAD")%></td>
                    <td><%# Eval("KATEGORIAD") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" Width="120px" NavigateUrl='<%# "BlogSil.Aspx?BLOGID="+Eval("BLOGID") %>' CssClass="btn btn-danger">SİL <i class="fas fa-trash-alt"></i></asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" Width="120px" NavigateUrl='<%# "BlogGuncelle.Aspx?BLOGID="+Eval("BLOGID") %>' CssClass="btn btn-success">GÜNCELLE <i class="fas fa-redo"></i></asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
