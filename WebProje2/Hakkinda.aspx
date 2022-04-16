<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Hakkinda.aspx.cs" Inherits="WebProje2.Hakkinda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="about-section">
            <div class="about-grid">
                <strong>
                    <h3>HAKKIMIZDA</h3>
                </strong>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <p><%# Eval("ACIKLAMA") %></p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
