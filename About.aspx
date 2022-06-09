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
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="165px" Width="279px">
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
</asp:Content>
