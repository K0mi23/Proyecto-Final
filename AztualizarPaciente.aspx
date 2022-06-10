<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AztualizarPaciente.aspx.cs" Inherits="Proyecto_Final.AztualizarPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="jumbotron">
    <h3>Actualizar Paciente</h3>
    <p>Nit:&nbsp;
        <asp:TextBox ID="NITPaciente" runat="server"></asp:TextBox>
    </p>
    <p>Nombre:&nbsp;
        <asp:TextBox ID="NombreNuevo" runat="server"></asp:TextBox>
    </p>
    <p>Apellido:
        <asp:TextBox ID="ApellidoNuevo" runat="server"></asp:TextBox>
    </p>
        <p>Dirección: 
            <asp:TextBox ID="Direccion" runat="server" Width="231px"></asp:TextBox>
    </p>
        <p>Fecha de Nacimiento
            <asp:Calendar ID="FNacimiento" runat="server" Height="28px" Width="315px"></asp:Calendar>
        </p>
        <p>Teléfono: <asp:TextBox ID="Telefono" runat="server" Width="238px"></asp:TextBox>
        </p>
        <p>&nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="43px" OnClick="Button1_Click" Text="Buscar" Width="151px" />
        <asp:Button ID="Button2" runat="server" Height="42px" OnClick="Button2_Click" Text="Actualizar" Width="125px" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="230px" Width="355px">
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
    <p>
        &nbsp;</p>
    </div>
</asp:Content>
