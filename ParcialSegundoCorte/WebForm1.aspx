<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ParcialSegundoCorte.WebForm1" %>

<!DOCTYPE html>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
   
<html xmlns="http://www.w3.org/1999/xhtml">
  
<head runat="server">
     
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 326px;
        }
        .auto-style3 {
            width: 242px;
        }
        .auto-style4 {
            width: 10px;
        }
        .auto-style5 {
            width: 287px;
        }
        .auto-style7 {
            width: 119px;
            height: 28px;
        }
        .auto-style8 {
            width: 326px;
            height: 28px;
        }
        .auto-style10 {
            height: 24px;
        }
        .auto-style12 {
            width: 42%;
            height: 475px;
        }
        .auto-style13 {
            width: 214%;
        }
        .auto-style15 {
            height: 28px;
            width: 14px;
        }
        .auto-style17 {
            width: 60%;
        }
        .auto-style18 {
            width: 95%
        }
        .auto-style20 {
            height: 29px;
        }
        .auto-style23 {
            width: 119px;
            height: 21px;
        }
        .auto-style24 {
            width: 297px
        }
        .auto-style25 {
            width: 390px;
        }
        .auto-style29 {
            height: 24px;
            width: 298px;
        }
        .auto-style30 {
            width: 298px;
        }
        .auto-style31 {
            width: 267px;
        }
        .auto-style32 {
            width: 119px;
            height: 45px;
        }
        .auto-style33 {
            width: 326px;
            height: 45px;
        }
        .auto-style35 {
            width: 440px;
            height: 46px;
        }
        .auto-style36 {
            width: 2196px;
            height: 46px;
        }
        .auto-style37 {
            width: 10px;
            height: 46px;
        }
        .auto-style39 {
            width: 440px;
        }
        .auto-style41 {
            width: 2196px;
        }
        .auto-style42 {
            width: 119px;
        }
        </style>
</head>
    <body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Eduardo de la Hoz</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <asp:Button ID="Button8" CausesValidation="false" runat="server" Text="Registro de Vendedor" OnClick="Button8_Click" />
        </li>
        <li class="nav-item">
            <asp:Button ID="Button9" CausesValidation="false" runat="server" Text="Registro de Cliente" OnClick="Button9_Click" />
        </li>
        <li class="nav-item">
            <asp:Button ID="Button6"  CausesValidation="false" runat="server" Text="Pedido" OnClick="Button6_Click" />
          
        </li>
          <li class="nav-item">
              <asp:Button ID="Button7" CausesValidation="false"  runat="server" Text="Factura" OnClick="Button7_Click" />
        
        </li>
          <li class="nav-item">
              <asp:Button ID="Button10" CausesValidation="false" runat="server" Text="Pago" OnClick="Button10_Click" />
        
        </li>
              <li>
              <asp:Button ID="Button12" CausesValidation="false" runat="server" Text="Revisar Datos" OnClick="LinkButton1_Click" />

        </li>
      </ul>
    </div>
  </div>
</nav>

        <div>










            
                <asp:MultiView ID="MultiView2" runat="server">
                  
              <asp:View ID="ViewCliente" runat="server"> 
                  



                <div class=" row vh-100 justify-content-center align-items-center">

                  <div class="card text-center " style="max-width: 40rem; ">
  <div class="card-header">
    Ingresar Cliente
  </div>
  <div class="card-body  row vh-100 justify-content-center align-items-center">
 


      <div class=" row vh-100 justify-content-center align-items-center">







                <table class="auto-style12">
                <tr>

                    <td colspan="2">
           </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                  
                    <td class="auto-style39">Numero de Cedula</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tcedula" runat="server" TextMode="Number"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tcedula" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tcedula" ErrorMessage="El numero debe tener entre 6 y 10 digitos" ValidationExpression="([0-9]{6,10})*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                 
                    <td class="auto-style39">Nombre</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tnombre" runat="server"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tnombre" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="tnombre" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                 
                    <td class="auto-style39">Apellido</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tapellido" runat="server"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tapellido" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="tapellido" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style39">Direccion de recidencia</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tdireccion" runat="server"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tdireccion" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                  
                    <td class="auto-style39">Telefono Fijo</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tfijo" runat="server" TextMode="Phone" OnTextChanged="tfijo_TextChanged"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tfijo" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="tfijo" ErrorMessage="Solo numeros" ValidationExpression="([0-9])*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style39">Telefono Celular</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tcelular" runat="server" TextMode="Phone"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tcelular" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="tcelular" ErrorMessage="Digite un numero celular valido (10 digitos)" ValidationExpression="([0-9]{10})*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style39">Correo Electronico</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tcorreo" runat="server" TextMode="Email"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tcorreo" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style39">Edad</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tedad" runat="server" TextMode="Number"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tedad" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
               
                    <td class="auto-style39">Sexo</td>
                    <td class="auto-style41">
                        <asp:RadioButtonList ID="rsexo" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rsexo_SelectedIndexChanged">
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Otro</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="rsexo" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                   
                    <td class="auto-style35">Fecha</td>
                    <td class="auto-style36">
                        <asp:TextBox ID="tfecha" runat="server" TextMode="Date"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tfecha" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style37"></td>
                </tr>
                    <tr>
                   
                    <td class="auto-style35">Forma de Pago</td>
                    <td class="auto-style36">
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="Nombre" DataValueField="Nombre"  Height="26px" Width="134px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [forma_de_pago] WHERE [Id] = @Id" InsertCommand="INSERT INTO [forma_de_pago] ([Id], [Nombre]) VALUES (@Id, @Nombre)" SelectCommand="SELECT * FROM [forma_de_pago]" UpdateCommand="UPDATE [forma_de_pago] SET [Nombre] = @Nombre WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                                <asp:Parameter Name="Nombre" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style37"></td>
                </tr>
                <tr>
                   
                    
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Guardar y seguir" class="btn btn-secondary" OnClick="Button1_Click" Width="331px" />
            </td>
                </tr>
            </table>
              </div>
      </div>
  <div class="card-footer text-muted">
   Ingresar cliente
  </div>
</div></div>
            </asp:View>


       
             <asp:View ID="Vendedor" runat="server">
            
      
                <div class=" row vh-100 justify-content-center align-items-center">

                  <div class="card text-center " style="max-width: 40rem; ">
  <div class="card-header">
    Ingresar Vendedor
  </div>
  <div class="card-body  row vh-100 justify-content-center align-items-center">
 


      <div class=" row vh-100 justify-content-center align-items-center">




                    
            <br />
                    <br />
            <br />
            <table class="auto-style13" >
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">
           </td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Numero Identificacion</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tcedula0" runat="server" TextMode="Number"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tcedula0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tcedula0" ErrorMessage="El numero debe tener entre 6 y 10 digitos" ValidationExpression="([0-9]{6,10})*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Nombre</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tnombre0" runat="server"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="tnombre0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="tnombre0" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Apellido</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tapellido0" runat="server"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="tapellido0" EnableTheming="False" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="tapellido0" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Direccion</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tdireccion0" runat="server" Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="tdireccion0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Telefono Fijo</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tfijo0" runat="server" TextMode="Phone"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="tfijo0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ControlToValidate="tfijo0" ErrorMessage="Solo numeros" ValidationExpression="([0-9])*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Telefono Ceular</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tcelular0" runat="server" TextMode="Phone"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="tcelular0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ControlToValidate="tcelular0" ErrorMessage="Digite un numero celular valido (10 digitos)" ValidationExpression="([0-9]{10})*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Correo Electronico</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tcorreo0" runat="server" TextMode="Email"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="tcorreo0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Edad</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tedad0" runat="server" TextMode="Number"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="tedad0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Sexo</td>
                    <td class="auto-style25">
                        <asp:RadioButtonList ID="rsexo0" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Otro</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="rsexo0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">Fecha act</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tfecha0" runat="server" TextMode="Date"  Height="26px" Width="134px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="tfecha0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button11" runat="server" class="btn btn-secondary col-sm-12" Text="Guardar Vendedor " Width="262px" OnClick="Button11_Click" />
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
                    <br />
                    <br />
            <br />
                

                <br />     </div></div>
  <div class="card-footer text-muted">
  Vendedor
  </div>
</div></div>
                     </asp:View>


     









                     <asp:View ID="Pedido" runat="server">



                                 <div class=" row vh-100 justify-content-center align-items-center">

                  <div class="card text-center " style="max-width: 60rem;  ">
  <div class="card-header">
    Agregar Articulos Al Pedido
  </div>
  <div class="card-body  row vh-100 justify-content-center align-items-center">
 


      <div class=" row vh-100 justify-content-center align-items-center">






            <table class="auto-style17">
                <tr>
                    <td class="auto-style7">Numero de Pedido</td>
                    <td class="auto-style8"><b><asp:Label ID="Label9" runat="server" ForeColor="Red"></asp:Label>
                        
                        </b></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style42">Producto</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombreProducto" DataValueField="nombreProducto" Height="34px"  Width="311px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombreProducto] FROM [Producto]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>

                </tr>


                <tr>
                    <td class="auto-style32">Cantidad </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="offset-sm-0" Height="34px" TextMode="Number" Width="311px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="TextBox1" ErrorMessage="Necesita Colocar Una cantidad" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td class="auto-style42">Cliente</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre" Height="34px"  Width="311px" DataValueField="nombre">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cliente]"></asp:SqlDataSource>
                    </td>
                    
                </tr>
                  <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style2">
                        
                    
                </tr>
                      <tr>
                    <td class="auto-style42">Vendedor</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="nombre" DataValueField="nombre" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Height="34px"  Width="311px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vendedor]"></asp:SqlDataSource>
                          </td>

                </tr>
                <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style2">
                        
                    
                </tr>
                <tr>
                    <td class="auto-style42"><b>
                        &nbsp;</b></td>
                    <td class="auto-style2">
                   <asp:Button ID="Button5" runat="server" class="btn btn-secondary col-sm-12"  Text="Agregar" OnClick="Button5_Click" Height="34px"  Width="311px" />
                    
                        <div runat="server" id="divpedido"  visible="false"><div class="alert alert-success" role="alert">
  Se Cargaron todos los datos!
</div>
                        </div>
                    
                    </td>
                </tr>
               
            </table>


           </div></div>
  <div class="card-footer text-muted">
   Agregar Articulos Al Pedido
  </div>
</div></div>

                      </asp:View>

                      
          


               

              <asp:View ID="Factura" runat="server">

                <b>FACTURA</b><asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                      <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                      <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                            <b>SUBTOTAL </b><asp:Label ID="Label10" runat="server"></asp:Label>
                        <br />
                            <b>TOTAL A PAGAR</b>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                      
                  <br />
                <br />
                  </asp:View>

              




                    <asp:View ID="FormaPago" runat="server">

                    <table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style3">Elige tu forma de pago </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="dpago" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dpago_SelectedIndexChanged">
                            <asp:ListItem>Ninguno</asp:ListItem>
                            <asp:ListItem>Tarjeta de crédito/debito</asp:ListItem>
                            <asp:ListItem> Efectivo</asp:ListItem>
                            <asp:ListItem>Web</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="dpago" ErrorMessage="*Este campo es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
                       <br />
                <br />

                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="VistaTarjeta" runat="server">
                        <table class="auto-style18">
                            <tr>
                                <td class="auto-style30">FECHA DE CADUCIDAD</td>
                                <td>
                                    <asp:TextBox ID="tfecha1" runat="server" TextMode="Date" OnTextChanged="tfecha1_TextChanged"  Height="26px" Width="134px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="tfecha1" ErrorMessage="*Este campo es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">NUMERO DE TARJETA</td>
                                <td>
                                    <asp:TextBox ID="ttarjeta" runat="server" OnTextChanged="ttarjeta_TextChanged"  Height="26px" Width="134px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="ttarjeta" ErrorMessage="*Este campo es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server"  Height="26px" Width="134px">
                                        <asp:ListItem>Visa</asp:ListItem>
                                        <asp:ListItem>Mastercard</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Este campo es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">CVC</td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="tcvc" runat="server"   Height="26px" Width="134px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="tcvc" ErrorMessage="*Este campo es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <asp:Label ID="Label11" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" class="btn btn-secondary col-sm-12" OnClick="Button2_Click" Text="PAGAR" Width="191px" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="VistaEfectivo" runat="server">
                        <table class="auto-style18">
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style31">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style31">Efectivo recibido</td>
                                <td>
                                    <asp:TextBox ID="tefectivo" runat="server" TextMode="Number"  Height="26px" Width="134px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Este campo es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style31">
                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" class="btn btn-secondary col-sm-12" Text="PAGAR" OnClick="Button3_Click" Width="202px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="VistaWeb" runat="server">
                        <table class="auto-style18">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20">
                                    <asp:Label ID="Label13" runat="server"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" CausesValidation="false" class="btn btn-secondary col-sm-12" Height="133px" OnClick="Button4_Click" Text="PAYPAL" Width="578px" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

                <br />
                
                <br />

                </asp:View>

                     </asp:MultiView>
                 



            </div>
        
         <br />
                
                <br />
                
                <br />
                <br />

    </form>
</body>
</html>
