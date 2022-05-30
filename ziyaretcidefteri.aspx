<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ziyaretcidefteri.aspx.cs" Inherits="ziyaretcidefteri" %>

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
            background-color: #FF6600;
        }
        .auto-style4
        {
            background-color: #FFFFFF;
        }
        .auto-style5
        {
            background-color: #993300;
        }
        </style>
    <link href="StyleSheet13.css" rel="stylesheet" type="text/css" />
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
                <td style="background-color: #663300">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="auto-style5">Anasayfa</asp:HyperLink>
                    <br class="auto-style5" />
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/uyekayit.aspx" CssClass="auto-style5">Üye Kayıt Sayfası</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/hakkimizda.aspx" style="background-color: #993300">Hakkımızda</asp:HyperLink>
                </td>
                <td class="newStyle1">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Et.mdb" SelectCommand="SELECT * FROM [ziyaretci] WHERE ([onay] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox3" DefaultValue="true" Name="onay" PropertyName="Text" Type="Boolean" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Et.mdb" 
                        SelectCommand="SELECT * FROM [ziyaretci] WHERE ([onay] = ?)" 
                        DeleteCommand="DELETE FROM [ziyaretci] WHERE [id] = ?" 
                        InsertCommand="INSERT INTO ziyaretci(adi, soyadi, dogumyili, icerik, onay) VALUES (?, ?, ?, ?, ?)" 
                        UpdateCommand="UPDATE [ziyaretci] SET [adi] = ?, [soyadi] = ?, [dogumyili] = ?, [icerik] = ?, [onay] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="adi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="soyadi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox8" Name="dogumyili" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="icerik" PropertyName="Text" 
                                Type="String" />
                            <asp:Parameter DefaultValue="false" Name="onay" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox7" DefaultValue="false" Name="onay" 
                                PropertyName="Text" Type="Boolean" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="soyadi" Type="String" />
                            <asp:Parameter Name="dogumyili" Type="String" />
                            <asp:Parameter Name="icerik" Type="String" />
                            <asp:Parameter Name="onay" Type="Boolean" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <h3><span class="auto-style4">Ziyaretçi Defteri</span></h3>
                    <br />
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <table border="1" class="style1">
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
                                        Doğum Yılı:</td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        İçerik:</td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydet" style="height: 26px" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>

                        <br />
                        <asp:View ID="View2" runat="server">
                            <span class="auto-style4">Yazınız Editör Tarafından Onaylanacaktır.</span><br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                                CellPadding="3" CellSpacing="1" DataKeyNames="id" 
                                DataSourceID="AccessDataSource1" GridLines="None">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                                    <asp:BoundField DataField="soyadi" HeaderText="soyadi" 
                                        SortExpression="soyadi" />
                                    <asp:BoundField DataField="dogumyili" HeaderText="dogumyili" 
                                        SortExpression="dogumyili" />
                                    <asp:TemplateField HeaderText="icerik" SortExpression="icerik">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("icerik") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("icerik") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CheckBoxField DataField="Onay" HeaderText="Onay" SortExpression="Onay" 
                                        Visible="False" />
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
                        </asp:View>

                    </asp:MultiView>
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
