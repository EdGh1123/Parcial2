<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ParcialSegundoCorte.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            CLIENTES<asp:DataList ID="DataList1" runat="server" CellPadding="3" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" Width="775px">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        Cedula:&nbsp; &nbsp; <%#Eval("Cedula") %> <br />  Nombre: &nbsp; &nbsp;<%#Eval("Nombre") %><br />Apellido: &nbsp; &nbsp;<%#Eval("Apellido") %><br />Direccion: &nbsp; &nbsp;<%#Eval("Direccion") %><br />Tel Fijo: &nbsp; &nbsp;<%#Eval("TelFijo") %><br />Celular: &nbsp; &nbsp;<%#Eval("Celular") %><br />Correo: &nbsp; &nbsp;<%#Eval("Correo") %><br />Edad: &nbsp; &nbsp;<%#Eval("Edad") %><br />Sexo: &nbsp; &nbsp;<%#Eval("Sexo") %><br />Fecha: &nbsp; &nbsp;<%#Eval("Fecha") %><br />Forma de pago: &nbsp; &nbsp;<%#Eval("formaPago") %><br></br>
                    </ItemTemplate>

                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

                </asp:DataList>
                <br />
                VENDEDORES<asp:DataList ID="DataList2" runat="server" CellPadding="3" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" Width="775px">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        Cedula:&nbsp; &nbsp; <%#Eval("Cedula") %><br />Nombre: &nbsp; &nbsp;<%#Eval("Nombre") %><br />Apellido: &nbsp; &nbsp;<%#Eval("Apellido") %><br />Direccion: &nbsp; &nbsp;<%#Eval("Direccion") %><br />Tel Fijo: &nbsp; &nbsp;<%#Eval("TelFijo") %><br />Celular: &nbsp; &nbsp;<%#Eval("Celular") %><br />Correo: &nbsp; &nbsp;<%#Eval("Correo") %><br />Edad: &nbsp; &nbsp;<%#Eval("Edad") %><br />Sexo: &nbsp; &nbsp;<%#Eval("Sexo") %><br />Fecha: &nbsp; &nbsp;<%#Eval("Fecha") %><br />
                    </ItemTemplate>

                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

                </asp:DataList>
                <br />
                PEDIDOS<asp:DataList ID="DataList3" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="775px">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        Id:&nbsp; &nbsp; <%#Eval("Id") %><br />  N° de pedido:&nbsp; &nbsp; <%#Eval("npedido") %><br />Nombre del producto:&nbsp; &nbsp; <%#Eval("producto") %><br />Cantidad: &nbsp; &nbsp; <%#Eval("cantidad") %><br />Estado: &nbsp; &nbsp;<%#Eval("estado") %><br />Vendedor:&nbsp; &nbsp; <%#Eval("vendedor") %><br />Valor total:&nbsp; &nbsp; <%#Eval("valorTotal") %>
                        <br></br> 
                        <br></br> 
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:DataList>
        </div>
    </form>
</body>
</html>
