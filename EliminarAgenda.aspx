<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarAgenda.aspx.cs" Inherits="Proyecto_Final.EliminarAgenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <h3>Eliminar Cita Agendada</h3>
    <p>NIt paciente:
        <asp:TextBox ID="Nitpaciente" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BuscarCita" runat="server" Height="40px" OnClick="BuscarCita_Click" Text="Buscar Cita" Width="113px" />
    </p>
    <p>Nombre: <asp:TextBox ID="NombrePaciente" runat="server"></asp:TextBox>
    </p>
    <p>Apellido:
        <asp:TextBox ID="ApellidoPaciente" runat="server"></asp:TextBox>
    </p>
    <p>Cita:
        <asp:TextBox ID="CitaPaciente" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="EliminarCita" runat="server" Height="40px" Text="Eliminar Cita" Width="113px" />
    </p>
    </asp:Content>
