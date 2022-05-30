<%@ Page Language="C#" AutoEventWireup="true" CodeFile="etkayit.aspx.cs" Inherits="etkayit" %>

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
            background-color: #996600;
        }
        .auto-style7
        {
            background-color: #993300;
        }
        .auto-style8
        {
            font-weight: normal;
        }
        .auto-style9
        {
            background-color: #FFFFFF;
        }
    </style>
    <link href="StyleSheet9.css" rel="stylesheet" type="text/css" />
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
                <td style="background-color: #800000"><span class="auto-style6">Üye Adı:</span><asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                    <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/etsilme.aspx" CssClass="auto-style5">Et Silme</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/etdegistirme.aspx" CssClass="auto-style5">Et Değiştirme Sayfası</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ziyaretcidefteriyonetim.aspx" CssClass="auto-style5">Ziyaretçi Defteri Yönetim Sayfası</asp:HyperLink>
                            <br />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                PostBackUrl="~/Default.aspx" Text="Oturumu Kapat" />
                            </td>
                <td class="newStyle1">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Et.mdb" SelectCommand="SELECT * FROM [etler]"></asp:AccessDataSource>
                    <h3 class="auto-style8"><strong><span class="auto-style9">Et Kayıt</span></strong></h3>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1" GridLines="Horizontal">
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
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="71px" ImageUrl='<%# "resim/"+Eval("resim") %>' Width="258px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/Et.mdb" DeleteCommand="DELETE FROM [etler] WHERE [id] = ?" InsertCommand="INSERT INTO etler(etkategori, etcinsi, etagirlik, etfiyati, resim) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [etler]" UpdateCommand="UPDATE [etler] SET [etkategori] = ?, [etcinsi] = ?, [etagirlik] = ?, [etfiyati] = ?, [resim] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="etkategori" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="etcinsi" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="etagirlik" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="etfiyati" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="resim" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="etkategori" Type="String" />
                            <asp:Parameter Name="etcinsi" Type="String" />
                            <asp:Parameter Name="etagirlik" Type="String" />
                            <asp:Parameter Name="etfiyati" Type="String" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <br />
                    <table class="auto-style1" border="1">
                        <tr>
                            <td class="auto-style7">Et Kategori:</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Et Cinsi:</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Et Ağırlığı:</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Et Fiyatı:</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Resimi:</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
