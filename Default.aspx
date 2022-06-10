<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto_Final._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>BIENVENIDO</h1>
        <p>Agregar Paciente Nuevo</p>
        <p>NIT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NIT_Textbox" runat="server" Width="244px"></asp:TextBox>
        </p>
        <p>Nombre:
            <asp:TextBox ID="Nombre_Textbox" runat="server" Width="249px"></asp:TextBox>
        </p>
        <p>Apellido:
            <asp:TextBox ID="Apellido_Textbox" runat="server" Width="252px"></asp:TextBox>
        </p>
        <p>Dirección: 
            <asp:TextBox ID="Direccion_Textbox" runat="server" Width="234px"></asp:TextBox>
        </p>
        <p>Fecha de Nacimiento
            <asp:Calendar ID="FNacimiento_Calendar" runat="server" Height="28px" Width="315px"></asp:Calendar>
        </p>
        <p>Teléfono: <asp:TextBox ID="Telefono_Textbox" runat="server" Width="238px"></asp:TextBox>
        </p>
        <p>
            <asp:GridView ID="InformacionPaciente" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="531px">
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
        <p>
            <asp:Button ID="BotonGuardar" runat="server" Height="49px" Text="Guardar" Width="126px" class="btn btn-primary btn-lg" OnClick="BotonGuardar_Click" />
        </p>
        
    </div>

    <div class="row">
    </div>

</asp:Content>
