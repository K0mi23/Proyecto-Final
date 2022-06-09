<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Proyecto_Final.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Agendar Citas</h3>
    <p>Nit Paciente:
        <asp:TextBox ID="NitPaciente" runat="server"></asp:TextBox>
    </p>
    <p>Fecha<asp:Calendar ID="FechaCita" runat="server"></asp:Calendar>
    </p>
    <p>Hora de Inicio:
        <asp:TextBox ID="HoraInicial" runat="server"></asp:TextBox>
    </p>
    <p>Hora Fin:
        <asp:TextBox ID="HoraFinal" runat="server"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="AgendarCita" runat="server" Height="51px" OnClick="AgendarCita_Click" Text="Agendar" Width="161px" />
    </p>
</asp:Content>
