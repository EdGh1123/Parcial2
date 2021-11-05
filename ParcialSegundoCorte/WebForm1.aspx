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
            width: 516px;
        }
        .auto-style7 {
            width: 389px;
            height: 28px;
        }
        .auto-style8 {
            width: 326px;
            height: 28px;
        }
        .auto-style9 {
            width: 389px;
        }
        .auto-style10 {
            height: 24px;
        }
        .auto-style11 {
            width: 621px;
        }
        .auto-style12 {
            width: 232%;
        }
        .auto-style13 {
            width: 214%;
        }
        .auto-style14 {
            width: 37%;
            height: 1210px;
        }
        .auto-style15 {
            height: 28px;
            width: 14px;
        }
        .auto-style17 {
            width: 191%;
        }
        .auto-style18 {
            width: 192%
        }
        .auto-style19 {
            width: 142%
        }
        .auto-style20 {
            height: 29px;
        }
        .auto-style23 {
            width: 389px;
            height: 21px;
        }
        .auto-style24 {
            width: 297px
        }
        .auto-style25 {
            width: 390px;
        }
        </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>

            <p href="">Parcial 2 ASP</p>
            <div class="flexbox-container">
                <div class="auto-style14">
                    <table class="auto-style12">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
            <b>CLIENTE</b></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">CEDULA</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tcedula" runat="server" TextMode="Number"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tcedula" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tcedula" ErrorMessage="Digite un numero valido de cedula (8-10 digitos)" ValidationExpression="([0-9]{8,10})*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">NOMBRE</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tnombre" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="tnombre" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">APELLIDO</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tapellido" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tapellido" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="tapellido" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">DIRECCION</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tdireccion" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tdireccion" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">TEL FIJO</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tfijo" runat="server" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tfijo" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="tfijo" ErrorMessage="Digite un telefono fijo valido (7 digitos)" ValidationExpression="([0-9]{7})*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">CELULAR</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tcelular" runat="server" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tcelular" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="tcelular" ErrorMessage="Digite un numero celular valido (10 digitos)" ValidationExpression="([0-9]{10})*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">CORREO</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tcorreo" runat="server" TextMode="Email"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tcorreo" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">EDAD</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tedad" runat="server" TextMode="Number"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tedad" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">SEXO</td>
                    <td class="auto-style11">
                        <asp:RadioButtonList ID="rsexo" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Otro</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="rsexo" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">FECHA</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tfecha" runat="server" TextMode="Date"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tfecha" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
            <br />
                    <br />
            <br />
            <table class="auto-style13" >
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">
            <b>VENDEDOR</b></td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">CEDULA</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tcedula0" runat="server" TextMode="Number"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tcedula0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tcedula0" ErrorMessage="Digite un numero valido de cedula (8-10 digitos)" ValidationExpression="([0-9]{8,10})*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">NOMBRE</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tnombre0" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="tnombre0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="tnombre0" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">APELLIDO</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tapellido0" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="tapellido0" EnableTheming="False" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="tapellido0" ErrorMessage="Solo se permiten letras" ValidationExpression="([a-zA-Z ])*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">DIRECCION</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tdireccion0" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="tdireccion0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">TEL FIJO</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tfijo0" runat="server" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="tfijo0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ControlToValidate="tfijo0" ErrorMessage="Digite un telefono fijo valido (7 digitos)" ValidationExpression="([0-9]{7})*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">CELULAR</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tcelular0" runat="server" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="tcelular0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ControlToValidate="tcelular0" ErrorMessage="Digite un numero celular valido (10 digitos)" ValidationExpression="([0-9]{10})*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">CORREO</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tcorreo0" runat="server" TextMode="Email"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="tcorreo0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">EDAD</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tedad0" runat="server" TextMode="Number"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="tedad0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">SEXO</td>
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
                    <td class="auto-style3">FECHA</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tfecha0" runat="server" TextMode="Date"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="tfecha0" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
            </table>
                    <br />
                   <asp:Button ID="Button1" runat="server" class="btn btn-primary col-sm-12" Text="ENVIAR " OnClick="Button1_Click" />
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
            <br />
                

                <br />

            <table class="auto-style17">
                <tr>
                    <td class="auto-style7"><b>PEDIDO </b></td>
                    <td class="auto-style8"><b>#<asp:Label ID="Label9" runat="server"></asp:Label>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click">Generar numero de pedido</asp:LinkButton>
                        </b></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style9">ARTICULO</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombreProducto" DataValueField="nombreProducto" Height="44px" Width="176px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombreProducto] FROM [Producto]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">CANTIDAD </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style2">
                   <asp:Button ID="Button5" runat="server" class="btn btn-primary col-sm-12" CausesValidation="False" Text="Agregar" OnClick="Button5_Click" />
                    </td>
                </tr>
               
            </table>

                <br />
                
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">VER DATOS</asp:LinkButton>
                <br />
                <br />
                <b>FACTURA</b><asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                            <b>SUBTOTAL </b><asp:Label ID="Label10" runat="server"></asp:Label>
                        <br />
                            <b>TOTAL A PAGAR</b>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                       <br />
                <br />
                    <table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style3">FORMA DE PAGO </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="dpago" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dpago_SelectedIndexChanged">
                            <asp:ListItem>Ninguno</asp:ListItem>
                            <asp:ListItem>Tarjeta de crédito/debito</asp:ListItem>
                            <asp:ListItem> Efectivo</asp:ListItem>
                            <asp:ListItem>Web</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="dpago" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
                       <br />
                <br />

                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="VistaTarjeta" runat="server">
                        <table class="auto-style18">
                            <tr>
                                <td>FECHA DE CADUCIDAD</td>
                                <td>
                                    <asp:TextBox ID="tfecha1" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="tfecha1" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>NUMERO DE TARJETA</td>
                                <td>
                                    <asp:TextBox ID="ttarjeta" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="ttarjeta" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Visa</asp:ListItem>
                                        <asp:ListItem>Mastercard</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">CVC</td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="tcvc" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="tcvc" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" class="btn btn-primary col-sm-12" OnClick="Button2_Click" Text="PAGAR" />
                                    <asp:Label ID="Label11" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="VistaEfectivo" runat="server">
                        <table class="auto-style19">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>¿CON CUANTO VAS A PAGAR?</td>
                                <td>
                                    <asp:TextBox ID="tefectivo" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" class="btn btn-primary col-sm-12" Text="PAGAR" OnClick="Button3_Click" />
                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="VistaWeb" runat="server">
                        <table class="auto-style19">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20">
                                    <asp:Button ID="Button4" runat="server" CausesValidation="false" class="btn btn-primary col-sm-12" OnClick="Button4_Click" Text="PAYPAL" />
                                    <asp:Label ID="Label13" runat="server"></asp:Label>
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

            </div>
        </div>
        </div>
    </form>
</body>
</html>
