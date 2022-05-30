<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ziyaretcidefteriyonetim.aspx.cs" Inherits="ziyaretcidefteriyonetim" %>

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
            width: 148px;
            background-color: #990000;
        }
        .auto-style5
        {
            background-color: #CC3300;
        }
        .auto-style6
        {
            background-color: #996633;
        }
        .auto-style7
        {
            background-color: #FFFFFF;
        }
        </style>
    <link href="StyleSheet12.css" rel="stylesheet" type="text/css" />
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
                <td class="auto-style3"><span class="auto-style6">Üye Adı:</span><asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                    <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/etkayit.aspx" CssClass="auto-style5">Et Kayıt Sayfası</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/etsilme.aspx" CssClass="auto-style5">Et Silme</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/etdegistirme.aspx" CssClass="auto-style5">Et Değiştirme Sayfası</asp:HyperLink>
                            <br />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                PostBackUrl="~/Default.aspx" Text="Oturumu Kapat" />
                            <br />
                    <br />
                </td>
                <td class="newStyle1">
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Et.mdb" DeleteCommand="DELETE FROM [ziyaretci] WHERE [id] = ?" InsertCommand="INSERT INTO [ziyaretci] ([id], [adi], [soyadi], [dogumyili], [icerik], [onay]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ziyaretci]" UpdateCommand="UPDATE [ziyaretci] SET [adi] = ?, [soyadi] = ?, [dogumyili] = ?, [icerik] = ?, [onay] = ? WHERE [id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="soyadi" Type="String" />
                <asp:Parameter Name="dogumyili" Type="String" />
                <asp:Parameter Name="icerik" Type="String" />
                <asp:Parameter Name="onay" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="soyadi" Type="String" />
                <asp:Parameter Name="dogumyili" Type="String" />
                <asp:Parameter Name="icerik" Type="String" />
                <asp:Parameter Name="onay" Type="Boolean" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
                    <h3><span class="auto-style7">Ziyaretçi Defteri Yönetim Sayfası</span></h3>
                    <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="AccessDataSource1" GridLines="None" Width="1093px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" CancelText="İptal" DeleteText="Sil" EditText="Düzenle" SelectText="Seç" UpdateText="Güncelle" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                <asp:BoundField DataField="soyadi" HeaderText="soyadi" SortExpression="soyadi" />
                <asp:BoundField DataField="dogumyili" HeaderText="dogumyili" SortExpression="dogumyili" />
                <asp:BoundField DataField="icerik" HeaderText="icerik" SortExpression="icerik" />
                <asp:CheckBoxField DataField="onay" HeaderText="onay" SortExpression="onay" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
        <br />
    
    </div>
    </form>
</body>
</html>
