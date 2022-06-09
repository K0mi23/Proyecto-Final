<%@ Page  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Proyecto_Final.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Ingreso Medicamentos</h2>
    <h3>&nbsp;</h3>
<p>Código del Medicamento:
    <asp:TextBox ID="Codigo" runat="server"></asp:TextBox>
</p>
<p>Ingrediente genérico:
    <asp:TextBox ID="Ingrediente" runat="server"></asp:TextBox>
</p>
<p>Laboratorio:&nbsp;
    <asp:TextBox ID="Laboratorio" runat="server"></asp:TextBox>
</p>
<p>Enfermedades a recetar:&nbsp;
    <asp:TextBox ID="Enfermedades" runat="server"></asp:TextBox>
</p>
<p>&nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="Ingresar" Width="149px" />
</p>
<p>&nbsp;</p>
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="158px" Width="433px">
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
</asp:Content>
