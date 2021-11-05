<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ParcialSegundoCorte.WebForm2" %>

<!DOCTYPE html>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
       <div class="card text-center">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
  

            
            
            <asp:DataList ID="DataList1" runat="server" CellPadding="3" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" Width="1565px">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#000000" ForeColor="#4A3C8C" />

                    <HeaderStyle BackColor="#4A3C8C" 
                     Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle 
                     BackColor="#D1F3FF" 
                     ForeColor="#000000" />
                    <ItemTemplate>


                        <table class="auto-style1" border="1">
                            <tr>
                    <td colspan="2">Cliente</td>
                </tr>
                <tr>
                    <td>Cedula</td>
                    <td><%#Eval("Cedula") %> </td>
                
                </tr>
                            <tr>
                    <td>Nombre</td>
                    <td><%#Eval("Nombre") %> </td>
                    
                </tr>
                              <tr>
                    <td>Apellido</td>
                    <td><%#Eval("Apellido") %> </td>
                 
                </tr>
                              <tr>
                    <td>Direccion</td>
                    <td><%#Eval("Direccion") %> </td>
                    
                </tr>
  <tr>
                    <td>Telefono</td>
                    <td><%#Eval("TelFijo") %> </td>
                  
                </tr>
                            <tr>
                    <td>Celular</td>
                    <td><%#Eval("Celular") %> </td>
                   
                </tr>
                            <tr>
                    <td>Correo</td>
                    <td><%#Eval("Correo") %> </td>
        
                </tr>
                             <tr>
                    <td>Edad</td>
                    <td><%#Eval("Edad") %> </td>
  
                </tr>
                             <tr>
                    <td>Fecha</td>
                    <td><%#Eval("Fecha") %> </td>
  
                </tr>
                             <tr>
                    <td>Sexo</td>
                    <td><%#Eval("Sexo") %> </td>

                </tr>
                             <tr>
                    <td>Forma de Pago</td>
                    <td><%#Eval("formaPago") %> </td>

                </tr>
              
            </table>

                    </ItemTemplate>

                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

                </asp:DataList>


           <div class="card text-center">
  <div class="card-header">
    Vendedores
  </div>

            
  <div class="card-body text-center">

                <br />
                VENDEDORES<asp:DataList ID="DataList2" runat="server" CellPadding="3" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" Width="775px">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#FFC7C7 " ForeColor="#00000" />
                    <ItemTemplate>

                        <table class="auto-style1" border="1">
                            <tr>
                    <td colspan="2">Vendedor</td>
                </tr>
                <tr>
                    <td>Cedula</td>
                    <td><%#Eval("Cedula") %> </td>
                
                </tr>
                            <tr>
                    <td>Nombre</td>
                    <td><%#Eval("Nombre") %> </td>
                    
                </tr>
                              <tr>
                    <td>Apellido</td>
                    <td><%#Eval("Apellido") %> </td>
                 
                </tr>
                              <tr>
                    <td>Direccion</td>
                    <td><%#Eval("Direccion") %> </td>
                    
                </tr>
  <tr>
                    <td>Telefono</td>
                    <td><%#Eval("TelFijo") %> </td>
                  
                </tr>
                            <tr>
                    <td>Celular</td>
                    <td><%#Eval("Celular") %> </td>
                   
                </tr>
                            <tr>
                    <td>Correo</td>
                    <td><%#Eval("Correo") %> </td>
        
                </tr>
                             <tr>
                    <td>Edad</td>
                    <td><%#Eval("Edad") %> </td>
  
                </tr>
                             <tr>
                    <td>Fecha</td>
                    <td><%#Eval("Fecha") %> </td>
  
                </tr>
                             <tr>
                    <td>Sexo</td>
                    <td><%#Eval("Sexo") %> </td>

                </tr>
                            
              
            </table>


                       </ItemTemplate>

                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

                </asp:DataList>
                <br />
         </div>
  <div class="card-footer text-muted">
   Vendedores
  </div>
</div>
         <br />
         <br />
       
      <div class="card text-center">
  <div class="card-header">
    PEDIDOS
  </div>
  <div class="card-body text-center">
    

  


             <asp:DataList ID="DataList3" runat="server" Width="1572px" >
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        <table class="auto-style1" border="1">
                            <tr>
                    <td colspan="2">Pedidos</td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td><%#Eval("Id") %> </td>
                
                </tr>
                       <tr>
                    <td>Numero de pedido</td>
                    <td><%#Eval("npedido") %> </td>
                
                </tr>   
                            <tr>
                    <td>Producto</td>
                    <td><%#Eval("Producto") %> </td>
                
                </tr>
                       <tr>
                    <td>Cantidad</td>
                    <td><%#Eval("cantidad") %> </td>
                
                </tr> 
             <tr>
                    <td>Estado del Pedido</td>
                    <td><%#Eval("estado") %> </td>
                
                </tr>
                       <tr>
                    <td>Nombre del Vendedor</td>
                    <td><%#Eval("vendedor") %> </td>
                
                </tr> 
                       <tr>
                    <td>Total del pedido</td>
                    <td><%#Eval("ValorTotal") %> </td>
                
                </tr> 
            </table>

                       
                        <br></br> 
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:DataList>
      </div>
  <div class="card-footer text-muted">
   Pedido
  </div>
</div>
         </div>
</div>
    </form>
</body>
</html>
