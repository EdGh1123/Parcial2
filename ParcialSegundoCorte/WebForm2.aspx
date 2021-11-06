<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ParcialSegundoCorte.WebForm2" %>

<!DOCTYPE html>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        
       <div class="card text-center">
  <div class="card-header">
      Cliente</div>
  <div class="card-body">
  

             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cedula" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="cedula" HeaderText="cedula" ReadOnly="True" SortExpression="cedula" />
              <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
              <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
              <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
              <asp:BoundField DataField="telFijo" HeaderText="telFijo" SortExpression="telFijo" />
              <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
              <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
              <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
              <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
              <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
              <asp:BoundField DataField="formaPago" HeaderText="formaPago" SortExpression="formaPago" />
          </Columns>
                 <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                 <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F7F7F7" />
                 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                 <SortedDescendingCellStyle BackColor="#E5E5E5" />
                 <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>

              <br />
         <br />
           <div class="card text-center">
  <div class="card-header">
    Vendedores
  </div>

            
  <div class="card-body text-center">

      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="cedula" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="cedula" HeaderText="cedula" ReadOnly="True" SortExpression="cedula" />
              <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
              <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
              <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
              <asp:BoundField DataField="telFijo" HeaderText="telFijo" SortExpression="telFijo" />
              <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
              <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
              <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
              <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
              <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
          </Columns>
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>         
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Vendedor] WHERE [cedula] = @cedula" InsertCommand="INSERT INTO [Vendedor] ([cedula], [nombre], [apellido], [direccion], [telFijo], [celular], [correo], [edad], [sexo], [fecha]) VALUES (@cedula, @nombre, @apellido, @direccion, @telFijo, @celular, @correo, @edad, @sexo, @fecha)" SelectCommand="SELECT * FROM [Vendedor]" UpdateCommand="UPDATE [Vendedor] SET [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telFijo] = @telFijo, [celular] = @celular, [correo] = @correo, [edad] = @edad, [sexo] = @sexo, [fecha] = @fecha WHERE [cedula] = @cedula">
          <DeleteParameters>
              <asp:Parameter Name="cedula" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="cedula" Type="Int32" />
              <asp:Parameter Name="nombre" Type="String" />
              <asp:Parameter Name="apellido" Type="String" />
              <asp:Parameter Name="direccion" Type="String" />
              <asp:Parameter Name="telFijo" Type="String" />
              <asp:Parameter Name="celular" Type="String" />
              <asp:Parameter Name="correo" Type="String" />
              <asp:Parameter Name="edad" Type="String" />
              <asp:Parameter Name="sexo" Type="String" />
              <asp:Parameter DbType="Date" Name="fecha" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="nombre" Type="String" />
              <asp:Parameter Name="apellido" Type="String" />
              <asp:Parameter Name="direccion" Type="String" />
              <asp:Parameter Name="telFijo" Type="String" />
              <asp:Parameter Name="celular" Type="String" />
              <asp:Parameter Name="correo" Type="String" />
              <asp:Parameter Name="edad" Type="String" />
              <asp:Parameter Name="sexo" Type="String" />
              <asp:Parameter DbType="Date" Name="fecha" />
              <asp:Parameter Name="cedula" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
      <br />
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
    

      <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:BoundField DataField="npedido" HeaderText="npedido" SortExpression="npedido" />
              <asp:BoundField DataField="producto" HeaderText="producto" SortExpression="producto" />
              <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
              <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
              <asp:BoundField DataField="vendedor" HeaderText="vendedor" SortExpression="vendedor" />
              <asp:BoundField DataField="valorTotal" HeaderText="valorTotal" SortExpression="valorTotal" />
          </Columns>
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>


             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Pedido] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Pedido] ([npedido], [producto], [cantidad], [estado], [vendedor], [valorTotal]) VALUES (@npedido, @producto, @cantidad, @estado, @vendedor, @valorTotal)" SelectCommand="SELECT * FROM [Pedido]" UpdateCommand="UPDATE [Pedido] SET [npedido] = @npedido, [producto] = @producto, [cantidad] = @cantidad, [estado] = @estado, [vendedor] = @vendedor, [valorTotal] = @valorTotal WHERE [Id] = @Id">
                 <DeleteParameters>
                     <asp:Parameter Name="Id" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="npedido" Type="String" />
                     <asp:Parameter Name="producto" Type="String" />
                     <asp:Parameter Name="cantidad" Type="String" />
                     <asp:Parameter Name="estado" Type="String" />
                     <asp:Parameter Name="vendedor" Type="String" />
                     <asp:Parameter Name="valorTotal" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="npedido" Type="String" />
                     <asp:Parameter Name="producto" Type="String" />
                     <asp:Parameter Name="cantidad" Type="String" />
                     <asp:Parameter Name="estado" Type="String" />
                     <asp:Parameter Name="vendedor" Type="String" />
                     <asp:Parameter Name="valorTotal" Type="String" />
                     <asp:Parameter Name="Id" Type="Int32" />
                 </UpdateParameters>
      </asp:SqlDataSource>


             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cliente] WHERE [cedula] = @cedula" InsertCommand="INSERT INTO [Cliente] ([cedula], [nombre], [apellido], [direccion], [telFijo], [celular], [correo], [edad], [sexo], [fecha], [formaPago]) VALUES (@cedula, @nombre, @apellido, @direccion, @telFijo, @celular, @correo, @edad, @sexo, @fecha, @formaPago)" SelectCommand="SELECT * FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telFijo] = @telFijo, [celular] = @celular, [correo] = @correo, [edad] = @edad, [sexo] = @sexo, [fecha] = @fecha, [formaPago] = @formaPago WHERE [cedula] = @cedula">
                 <DeleteParameters>
                     <asp:Parameter Name="cedula" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="cedula" Type="Int32" />
                     <asp:Parameter Name="nombre" Type="String" />
                     <asp:Parameter Name="apellido" Type="String" />
                     <asp:Parameter Name="direccion" Type="String" />
                     <asp:Parameter Name="telFijo" Type="String" />
                     <asp:Parameter Name="celular" Type="String" />
                     <asp:Parameter Name="correo" Type="String" />
                     <asp:Parameter Name="edad" Type="String" />
                     <asp:Parameter Name="sexo" Type="String" />
                     <asp:Parameter Name="fecha" Type="String" />
                     <asp:Parameter Name="formaPago" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="nombre" Type="String" />
                     <asp:Parameter Name="apellido" Type="String" />
                     <asp:Parameter Name="direccion" Type="String" />
                     <asp:Parameter Name="telFijo" Type="String" />
                     <asp:Parameter Name="celular" Type="String" />
                     <asp:Parameter Name="correo" Type="String" />
                     <asp:Parameter Name="edad" Type="String" />
                     <asp:Parameter Name="sexo" Type="String" />
                     <asp:Parameter Name="fecha" Type="String" />
                     <asp:Parameter Name="formaPago" Type="String" />
                     <asp:Parameter Name="cedula" Type="Int32" />
                 </UpdateParameters>
      </asp:SqlDataSource>


      </div>
  <div class="card-footer text-muted">
   Pedido
  </div>







            <br />
         <br />

         
        
       <div class="card text-center">
  <div class="card-header">
      Facturas</div>
  <div class="card-body">
  
      

             <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                     <asp:BoundField DataField="Vendedor" HeaderText="Vendedor" SortExpression="Vendedor" />
                     <asp:BoundField DataField="Comprador" HeaderText="Comprador" SortExpression="Comprador" />
                     <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" SortExpression="ValorTotal" />
                 </Columns>
                 <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                 <HeaderStyle BackColor="#333333" BorderColor="#333333" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F7F7F7" />
                 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                 <SortedDescendingCellStyle BackColor="#E5E5E5" />
                 <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Factura] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Factura] ([Id], [Vendedor], [Comprador], [ValorTotal]) VALUES (@Id, @Vendedor, @Comprador, @ValorTotal)" SelectCommand="SELECT * FROM [Factura]" UpdateCommand="UPDATE [Factura] SET [Vendedor] = @Vendedor, [Comprador] = @Comprador, [ValorTotal] = @ValorTotal WHERE [Id] = @Id">
          <DeleteParameters>
              <asp:Parameter Name="Id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="Id" Type="Int32" />
              <asp:Parameter Name="Vendedor" Type="String" />
              <asp:Parameter Name="Comprador" Type="String" />
              <asp:Parameter Name="ValorTotal" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="Vendedor" Type="String" />
              <asp:Parameter Name="Comprador" Type="String" />
              <asp:Parameter Name="ValorTotal" Type="String" />
              <asp:Parameter Name="Id" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
            
           <div class="card text-center">
  <div class="card-header">
    Facturas
  </div>

</div>
         </div>
</div>


    </form>
</body>
</html>
