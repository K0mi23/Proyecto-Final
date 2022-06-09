<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AztualizarPaciente.aspx.cs" Inherits="Proyecto_Final.AztualizarPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <h3>Actualizar Paciente</h3>
    <p>Nit:&nbsp;
        <asp:TextBox ID="NITPaciente" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="43px" OnClick="Button1_Click" Text="Buscar" Width="151px" />
    </p>
    <p>Nombre:&nbsp;
        <asp:TextBox ID="NombreNuevo" runat="server"></asp:TextBox>
    </p>
    <p>Apellido:
        <asp:TextBox ID="ApellidoNuevo" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ActualizarBoton" runat="server" Height="43px" OnClick="Button1_Click" Text="Actualizar" Width="151px" />
    </p>
    <p>&nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
