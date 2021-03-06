<%@ Page  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Proyecto_Final.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
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
    <asp:TextBox ID="Enferemdades" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="IngresarBoton" runat="server" Height="52px" OnClick="IngresarBoton_Click" Text="Ingresar" Width="133px" />
</p>
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
        <br />
        <h2><%: Title %>Editar Medicamentos</h2>
        <p>Código del Medicamento:
    <asp:TextBox ID="CodigoActualizado" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" Height="52px" OnClick="Button2_Click" Text="Buscar" Width="133px" />
        </p>
<p>Ingrediente genérico:
    <asp:TextBox ID="IngredienteActualizado" runat="server"></asp:TextBox>
</p>
<p>Laboratorio:&nbsp;
    <asp:TextBox ID="LaboratorioActualizado" runat="server"></asp:TextBox>
</p>
<asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="158px" Width="433px">
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
        <asp:Button ID="Acutalizar" runat="server" Height="69px" OnClick="Acutalizar_Click" Text="Actualizar" Width="137px" />
   </div>
</asp:Content>
