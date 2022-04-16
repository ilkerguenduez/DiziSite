﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="WebProje2.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="content-grids">
                <div class="col-md-8 content-main">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="content-grid">
                                <div class="content-grid-info">
                                    <img src="<%# Eval("BLOGRESİM")%>" alt="" style="height: 370px; width: 650px" />
                                    <div class="post-info">
                                        <h4><a href="BlogDetay.Aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK") %></a> <%# Eval("BLOGTARIH") %></h4>
                                        <p><%# Eval("BLOGICERIK") %></p>
                                        <a href="BlogDetay.Aspx?BLOGID=<%# Eval("BLOGID") %>"><span></span>DEVAMINI OKU...</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


                <div class="col-md-4 content-right">
                    <div class="recent">
                        <h3>EN SON POSTLAR</h3>
                        <ul>
                            <asp:Repeater ID="Repeater3" runat="server">
                                <ItemTemplate>
                                    <li><a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>


                    <div class="comments">
                        <h3>EN SON YORUMLAR</h3>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <ul>
                                    <li><a href="#"><%#Eval("YORUMCUNICKNAME")%> - <%#Eval("YORUMICERIK")%></a></li>
                                </ul>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <div class="clearfix"></div>


                    <div class="categories">
                        <h3>KATEGORİLER</h3>
                        <ul>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <li><a href="KategoriDetay.Aspx?KATEGORIID=<%# Eval("KATEGORIID") %>"><%# Eval("KATEGORIAD") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>


                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
</asp:Content>
