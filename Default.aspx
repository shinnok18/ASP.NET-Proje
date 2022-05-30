<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1764px;
            height: 180px;
        }
        .newStyle1 {
            background-image: url('logo.png');
        }
        .newStyle2 {
            background-image: url('logo.png');
        }
        .newStyle7 {
            background-image: url('logo.png');
        }
        .auto-style3 {
            color: #333300;
        }
        .auto-style4 {
            width: 989px;
            background-image: url('logo.png');
        }
        .auto-style5
        {
            background-color: #CC3300;
        }
        .auto-style6
        {
            background-color: #FFFFFF;
        }
        .auto-style7
        {
            color: #333300;
            background-color: #FFFFFF;
        }
        .auto-style8
        {
            background-color: #009933;
        }
    </style>
    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet3.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet4.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet6.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet7.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet8.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet9.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
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
                <td class="newStyle9">
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                        DataFile="~/App_Data/Et.mdb" 
                        
                        SelectCommand="SELECT * FROM [uye] WHERE (([uyeadi] = ?) AND ([sifre] = ?))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox2" Name="uyeadi" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="sifre" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                    <asp:FormView ID="FormView2" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        DataKeyNames="id" DataSourceID="AccessDataSource3" DefaultMode="Edit" 
                        GridLines="Vertical" OnPageIndexChanging="FormView2_PageIndexChanging" Visible="False">
                        <EditItemTemplate>
                            id:
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            adi:
                            <asp:TextBox ID="adiTextBox" runat="server" Text='<%# Bind("adi") %>' />
                            <br />
                            soyadi:
                            <asp:TextBox ID="soyadiTextBox" runat="server" Text='<%# Bind("soyadi") %>' />
                            <br />
                            uyeadi:
                            <asp:TextBox ID="uyeadiTextBox" runat="server" Text='<%# Bind("uyeadi") %>' />
                            <br />
                            sifre:
                            <asp:TextBox ID="sifreTextBox" runat="server" Text='<%# Bind("sifre") %>' />
                            <br />
                            mail:
                            <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <EmptyDataTemplate>
                            Kullanıcı Adı Ve Şifre Yanlış.
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            adi:
                            <asp:TextBox ID="adiTextBox" runat="server" Text='<%# Bind("adi") %>' />
                            <br />
                            soyadi:
                            <asp:TextBox ID="soyadiTextBox" runat="server" Text='<%# Bind("soyadi") %>' />
                            <br />
                            uyeadi:
                            <asp:TextBox ID="uyeadiTextBox" runat="server" Text='<%# Bind("uyeadi") %>' />
                            <br />
                            sifre:
                            <asp:TextBox ID="sifreTextBox" runat="server" Text='<%# Bind("sifre") %>' />
                            <br />
                            mail:
                            <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            adi:
                            <asp:Label ID="adiLabel" runat="server" Text='<%# Bind("adi") %>' />
                            <br />
                            soyadi:
                            <asp:Label ID="soyadiLabel" runat="server" Text='<%# Bind("soyadi") %>' />
                            <br />
                            uyeadi:
                            <asp:Label ID="uyeadiLabel" runat="server" Text='<%# Bind("uyeadi") %>' />
                            <br />
                            sifre:
                            <asp:Label ID="sifreLabel" runat="server" Text='<%# Bind("sifre") %>' />
                            <br />
                            mail:
                            <asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>' />
                            <br />
                        </ItemTemplate>
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    </asp:FormView>
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <span class="auto-style3"><span class="auto-style6">ÜYE GİRİŞİ</span><br class="auto-style6" /> <span class="auto-style6">Üye Adınız:</span></span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
                            <br class="auto-style7" /> <span class="auto-style7">Şifreniz:</span><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Giriş" />
                        </asp:View>
                        <br />
                        <asp:View ID="View2" runat="server">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/etkayit.aspx" CssClass="auto-style5">Et Kayıt Sayfası</asp:HyperLink>
                            <br class="auto-style5" />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/etsilme.aspx" CssClass="auto-style5">Et Silme</asp:HyperLink>
                            <br class="auto-style5" />
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/etdegistirme.aspx" CssClass="auto-style5">Et Değiştirme Sayfası</asp:HyperLink>
                            <br class="auto-style5" />
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ziyaretcidefteriyonetim.aspx" CssClass="auto-style5">Ziyaretçi Defteri Yönetim Sayfası</asp:HyperLink>
                            <br />
                            <span class="auto-style6">Üye Adı:</span><asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                PostBackUrl="~/Default.aspx" Text="Oturumu Kapat" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </asp:View>
                    </asp:MultiView>
                    <br />
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/uyekayit.aspx" CssClass="auto-style8">Üye Kayıt Sayfası</asp:HyperLink>
                    <br class="auto-style8" />
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ziyaretcidefteri.aspx" CssClass="auto-style8">Ziyaretçi Defteri</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/hakkimizda.aspx" style="background-color: #009933">Hakkımızda</asp:HyperLink>
                    <br />
                </td>
                <td class="auto-style4">
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/Et.mdb" DeleteCommand="DELETE FROM [sayac] WHERE [id] = ?" InsertCommand="INSERT INTO [sayac] ([id], [sayac]) VALUES (?, ?)" SelectCommand="SELECT * FROM [sayac]" UpdateCommand="UPDATE [sayac] SET [sayac] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                            <asp:Parameter Name="sayac" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="sayac" Type="Int32" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Edit">
                        <EditItemTemplate>
                            Toplam Ziyaretçi:
                            <asp:TextBox ID="sayacTextBox" runat="server" BorderStyle="None" BorderWidth="0px" ReadOnly="True" Text='<%# Bind("sayac") %>' />
                            <br />
                            &nbsp;
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <InsertItemTemplate>
                            sayac:
                            <asp:TextBox ID="sayacTextBox" runat="server" Text='<%# Bind("sayac") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            sayac:
                            <asp:Label ID="sayacLabel" runat="server" Text='<%# Bind("sayac") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    </asp:FormView>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Et.mdb" SelectCommand="SELECT * FROM [etler]"></asp:AccessDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="etkategori" HeaderText="etkategori" SortExpression="etkategori" />
                            <asp:BoundField DataField="etcinsi" HeaderText="etcinsi" SortExpression="etcinsi" />
                            <asp:BoundField DataField="etagirlik" HeaderText="etagirlik" SortExpression="etagirlik" />
                            <asp:BoundField DataField="etfiyati" HeaderText="etfiyati" SortExpression="etfiyati" />
                            <asp:TemplateField HeaderText="resim" SortExpression="resim">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("resim") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="64px" ImageUrl='<%# "resim/"+ Eval("resim") %>' Width="239px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <span class="auto-style6">&#169;Telif Hakkı Orçun Türkokuloğlu'na Aittir.</span><br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
