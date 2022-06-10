<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Proyecto_Final.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <p>
        <br />
    </p>
        <h2><%: Title %>Agregar Sintoma</h2>
    <p>Código del Sintoma:
        <asp:TextBox ID="Codigo_Sintoma" runat="server"></asp:TextBox>
</p>
<p>Descripción del Sintoma:
    <asp:TextBox ID="Descripcion" runat="server" Width="245px"></asp:TextBox>
</p>
<p>&nbsp;</p>
<p>
    <asp:Button ID="AgregarSintoma" runat="server" Height="44px" Text="Agregar" Width="140px" OnClick="AgregarSintoma_Click" />
</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="172px" Width="345px">
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
</p>
    <p>&nbsp;</p>
   </div>
        </asp:Content>
