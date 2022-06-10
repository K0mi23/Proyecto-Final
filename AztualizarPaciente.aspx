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
    <p>&nbsp;</p>
    <p>
        &nbsp;</p>
    </div>
</asp:Content>
