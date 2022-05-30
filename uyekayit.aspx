<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uyekayit.aspx.cs" Inherits="uyekayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1482px;
            height: 180px;
        }
        .style1
        {
            width: 100%;
        }
        .auto-style3
        {
            background-color: #996633;
        }
        .auto-style4
        {
            background-color: #CC3300;
        }
        .auto-style5
        {
            background-color: #FFFFFF;
        }
        </style>
    <link href="StyleSheet11.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" border="1">
            <tr>
                <td colspan="2">
                    <img alt="" class="auto-style2" src="Kırmızı%20Beyaz%20Et%20Mamülleria.gif" /></td>
            </tr>
            <tr>
                <td style="background-color: #CC6600">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="auto-style4">Anasayfa</asp:HyperLink>
                    <br class="auto-style4" />
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ziyaretcidefteri.aspx" CssClass="auto-style4">Ziyaretçi Defteri</asp:HyperLink>
                        <br class="auto-style4" />
                        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style4" NavigateUrl="~/hakkimizda.aspx">Hakkımızda</asp:HyperLink>
                    </td>
                <td class="newStyle1">
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Et.mdb" DeleteCommand="DELETE FROM [uye] WHERE [id] = ?" InsertCommand="INSERT INTO uye(adi, soyadi, uyeadi, sifre, mail) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [uye]" UpdateCommand="UPDATE [uye] SET [adi] = ?, [soyadi] = ?, [uyeadi] = ?, [sifre] = ?, [mail] = ? WHERE [id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="adi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="soyadi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="uyeadi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="sifre" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="mail" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="soyadi" Type="String" />
                <asp:Parameter Name="uyeadi" Type="String" />
                <asp:Parameter Name="sifre" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
                    <h3><span class="auto-style5">Üye Kayıt</span></h3>
                    <br />
                    <table class="style1" border=1>
                        <tr>
                            <td class="auto-style3">
                                Adınız:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                Soyadınız:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                Uye Adınız:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                Şifreniz:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                Mailiniz:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydol" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
