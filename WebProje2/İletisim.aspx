<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="WebProje2.İletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--/header-->
    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>İLETİŞİM</h2>
                <p>İletişime Geçin</p>
            </div>
            
            <div class="contact-details">
                <form runat="server">
                    <asp:TextBox ID="TxtAd" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
                    <asp:TextBox ID="TxtMail" runat="server" placeholder="Mail" required=""></asp:TextBox>
                    <asp:TextBox ID="TxtTelefon" runat="server" placeholder="Telefon" required=""></asp:TextBox>
                    <asp:TextBox ID="TxtSehir" runat="server" placeholder="Şehir" required=""></asp:TextBox>
                    <asp:TextBox ID="TxtMesaj" runat="server" placeholder="Mesajınız" required="" TextMode="MultiLine" Height="100"></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" Text="GÖNDER" OnClick="Button1_Click" />
                </form>
            </div>
            
            <div class="contact-details">
                <div class="col-md-6 contact-map">
                    <h4>Biz Burdayız</h4>
                    <div class="mapouter">
                        <div class="gmap_canvas">
                            <iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=Elaz%C4%B1g&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                            <a href="https://getasearch.com/fmovies"></a>
                            <br>
                            <style>
                                .mapouter {
                                    position: relative;
                                    text-align: right;
                                    height: 500px;
                                    width: 600px;
                                }
                            </style>

                            <a href="https://www.embedgooglemap.net"></a>

                            <style>
                                .gmap_canvas {
                                    overflow: hidden;
                                    background: none !important;
                                    height: 500px;
                                    width: 600px;
                                }
                            </style>

                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
