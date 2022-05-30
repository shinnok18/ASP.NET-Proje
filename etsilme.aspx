<%@ Page Language="C#" AutoEventWireup="true" CodeFile="etsilme.aspx.cs" Inherits="etsilme" %>

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
    <link href="StyleSheet10.css" rel="stylesheet" type="text/css" />
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
                <td style="background-color: #990000"><span class="auto-style6">Üye Adı:</span><asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                    <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/etkayit.aspx" CssClass="auto-style5">Et Kayıt Sayfası</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/etdegistirme.aspx" CssClass="auto-style5">Et Değiştirme Sayfası</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ziyaretcidefteriyonetim.aspx" CssClass="auto-style5">Ziyaretçi Defteri Yönetim Sayfası</asp:HyperLink>
                            <br />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                PostBackUrl="~/Default.aspx" Text="Oturumu Kapat" style="height: 26px" />
                            </td>
                <td class="newStyle1">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Et.mdb" SelectCommand="SELECT * FROM [etler]"></asp:AccessDataSource>
                    <h3 class="auto-style7">Et Silme</h3>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="AccessDataSource1" GridLines="Vertical" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
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
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="93px" ImageUrl='<%# "resim/"+ Eval("resim") %>' Width="277px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/Et.mdb" DeleteCommand="DELETE FROM [etler] WHERE [id] = ?" InsertCommand="INSERT INTO [etler] ([id], [etkategori], [etcinsi], [etagirlik], [etfiyati], [resim]) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [etler] WHERE ([id] = ?)" UpdateCommand="UPDATE [etler] SET [etkategori] = ?, [etcinsi] = ?, [etagirlik] = ?, [etfiyati] = ?, [resim] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                            <asp:Parameter Name="etkategori" Type="String" />
                            <asp:Parameter Name="etcinsi" Type="String" />
                            <asp:Parameter Name="etagirlik" Type="String" />
                            <asp:Parameter Name="etfiyati" Type="String" />
                            <asp:Parameter Name="resim" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox2" Name="id" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="etkategori" Type="String" />
                            <asp:Parameter Name="etcinsi" Type="String" />
                            <asp:Parameter Name="etagirlik" Type="String" />
                            <asp:Parameter Name="etfiyati" Type="String" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    <br />
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Edit" GridLines="Horizontal" OnItemDeleted="FormView1_ItemDeleted1">
                        <EditItemTemplate>
                            Silmek İstediğinizden Emin Misiniz?<br />&nbsp;<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Delete" Text="Sil" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" OnClick="UpdateCancelButton_Click1" Text="İptal" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <InsertItemTemplate>
                            etkategori:
                            <asp:TextBox ID="etkategoriTextBox" runat="server" Text='<%# Bind("etkategori") %>' />
                            <br />
                            etcinsi:
                            <asp:TextBox ID="etcinsiTextBox" runat="server" Text='<%# Bind("etcinsi") %>' />
                            <br />
                            etagirlik:
                            <asp:TextBox ID="etagirlikTextBox" runat="server" Text='<%# Bind("etagirlik") %>' />
                            <br />
                            etfiyati:
                            <asp:TextBox ID="etfiyatiTextBox" runat="server" Text='<%# Bind("etfiyati") %>' />
                            <br />
                            resim:
                            <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            etkategori:
                            <asp:Label ID="etkategoriLabel" runat="server" Text='<%# Bind("etkategori") %>' />
                            <br />
                            etcinsi:
                            <asp:Label ID="etcinsiLabel" runat="server" Text='<%# Bind("etcinsi") %>' />
                            <br />
                            etagirlik:
                            <asp:Label ID="etagirlikLabel" runat="server" Text='<%# Bind("etagirlik") %>' />
                            <br />
                            etfiyati:
                            <asp:Label ID="etfiyatiLabel" runat="server" Text='<%# Bind("etfiyati") %>' />
                            <br />
                            resim:
                            <asp:Label ID="resimLabel" runat="server" Text='<%# Bind("resim") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    </asp:FormView>
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
