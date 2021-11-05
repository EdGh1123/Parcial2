﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ParcialSegundoCorte
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        WebForm2 wb = new WebForm2();
      
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Usuario\source\repos\Parcial2\ParcialSegundoCorte\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }
        protected void dpago_SelectedIndexChanged(object sender, EventArgs e)
        {
            int opcion = dpago.SelectedIndex;
            switch (opcion)
            {
                case 0:
                    MultiView1.ActiveViewIndex = -1;
                    break;
                case 1:
                    MultiView1.SetActiveView(VistaTarjeta);
                    break;
                case 2:
                    MultiView1.SetActiveView(VistaEfectivo);
                    break;
                case 3:
                    MultiView1.SetActiveView(VistaWeb);
                    break;
            }
        }
        


        protected void Button4_Click(object sender, EventArgs e)
        {
            

           
            string insertQuery3 = @"INSERT INTO dbo.Factura( id, vendedor, comprador, valorTotal) VALUES ( @id, @vendedor, @comprador, @valorTotal);";
            using (SqlCommand cmd = new SqlCommand(insertQuery3, conn))

            {

                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = Label9.Text;
                cmd.Parameters.Add("@comprador", SqlDbType.VarChar, 50).Value = tnombre.Text + tapellido.Text;
                cmd.Parameters.Add("@vendedor", SqlDbType.VarChar, 50).Value = tnombre0.Text + tapellido0.Text;
                cmd.Parameters.Add("@valorTotal", SqlDbType.VarChar, 50).Value = Label2.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("https://www.paypal.com/co/home");
            Label13.Text = " Su pago fue recibido";
        }

        public DataTable llenarTabla()
        {
            DataTable table = new DataTable();
           
            table.Columns.Add("N° de item", typeof(int));
            table.Columns.Add("Producto", typeof(string));
            table.Columns.Add("Descripcion", typeof(string));
            table.Columns.Add("Cantidad", typeof(int));
            table.Columns.Add("Precio unitario", typeof(int));
            table.Columns.Add("Total", typeof(int));
            return table;
        }
        public int pedidon (int n)
        {
            n++;
            return n;
        }
        public int totalp(int precio)
        {
            int total;
            total = +precio;
            Label10.Text = "" + total;
            return total;
        }
       

        protected void Button5_Click(object sender, EventArgs e)
        {
            



            SqlDataAdapter sa = new SqlDataAdapter("SELECT * FROM Producto", conn);
            DataSet dataSet = new DataSet();
            sa.Fill(dataSet);
            String p = dataSet.Tables[0].Rows[DropDownList2.SelectedIndex].Field<String>("precioUnitario");
            int nitem = dataSet.Tables[0].Rows[DropDownList2.SelectedIndex].Field<int>("codigo");
            String cantmax = dataSet.Tables[0].Rows[DropDownList2.SelectedIndex].Field<String>("cantidad");
            String desc = dataSet.Tables[0].Rows[DropDownList2.SelectedIndex].Field<String>("descripcion");
            int total = 0;
            int precio = Int32.Parse(p);
            string producto = DropDownList2.SelectedValue;
            int cantidad = 0;

            cantidad = Int32.Parse(TextBox1.Text);
            total = precio * cantidad;
            if (Session["table"] == null)
            {
                DataTable table = llenarTabla();
                DataRow r1;
                r1 = table.NewRow();
                r1["N° de item"] = nitem;
                r1["Producto"] = producto;
                r1["Descripcion"] = desc;
                r1["Cantidad"] = cantidad;
                r1["Precio unitario"] = p;
                r1["Total"] = total;
                totalp(total);
                table.Rows.Add(r1);
                GridView1.DataSource = table;
                GridView1.DataBind();
                Session["table"] = table;
            }
            else
            {
                DataTable table = (Session["table"]) as DataTable;
                DataRow r1;
                r1 = table.NewRow();
                r1["N° de item"] = nitem;
                r1["Producto"] = producto;
                r1["Descripcion"] = desc;
                r1["Cantidad"] = cantidad;
                r1["Precio unitario"] = p;
                r1["Total"] = total;
                table.Rows.Add(r1);
                GridView1.DataSource = table;
                GridView1.DataBind();
                Session["table"] = table;
            }
            int suma = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                suma += Convert.ToInt32(row.Cells[5].Text);

            }
            totalp(suma);
            double iva;
            iva = Convert.ToInt32(Label10.Text) * 0.19;
            double totalf = 0;
            totalf = Convert.ToInt32(Label10.Text) + iva;
            Label2.Text = "" + totalf;

           
            string insertQuery2 = @"INSERT INTO dbo.Pedido( npedido, producto, cantidad, estado, vendedor, valorTotal) VALUES ( @npedido, @producto, @cantidad, @estado, @vendedor, @valorTotal);";
            using (SqlCommand cmd = new SqlCommand(insertQuery2, conn))

            {
                cmd.Parameters.Add("@npedido", SqlDbType.VarChar, 50).Value = Label9.Text;
                cmd.Parameters.Add("@producto", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedValue;
                cmd.Parameters.Add("@cantidad", SqlDbType.VarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@estado", SqlDbType.VarChar, 50).Value = "pendiente";
                cmd.Parameters.Add("@vendedor", SqlDbType.VarChar, 50).Value = tnombre0.Text + tapellido0.Text;
                cmd.Parameters.Add("@valorTotal", SqlDbType.VarChar, 50).Value = precio*cantidad;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
         
        }



        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
           
        {

            /*string insertQuery = @"INSERT INTO dbo.Cliente (cedula, nombre, apellido, direccion, telFijo, celular, correo, edad, sexo, fecha, formaPago ) VALUES (@cedula, @nombre, @apellido, @direccion, @telFijo, @celular, @correo, @edad, @sexo, @fecha, @formaPago );";
          using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
           {


               cmd.Parameters.Add("@cedula", SqlDbType.VarChar, 50).Value = tcedula.Text;
               cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50).Value=tnombre.Text;
               cmd.Parameters.Add("@apellido", SqlDbType.VarChar, 50).Value = tapellido.Text;
               cmd.Parameters.Add("@direccion", SqlDbType.VarChar, 50).Value = tdireccion.Text;
               cmd.Parameters.Add("@telFijo", SqlDbType.VarChar, 50).Value = tfijo.Text;
               cmd.Parameters.Add("@celular", SqlDbType.VarChar, 50).Value = tcelular.Text;
               cmd.Parameters.Add("@correo", SqlDbType.VarChar, 50).Value = tcorreo.Text;
               cmd.Parameters.Add("@edad", SqlDbType.VarChar, 50).Value = tedad.Text;
               cmd.Parameters.Add("@sexo", SqlDbType.VarChar, 50).Value = rsexo.SelectedValue;
               cmd.Parameters.Add("@fecha", SqlDbType.VarChar, 50).Value = tfecha.Text;
               cmd.Parameters.Add("@formaPago", SqlDbType.VarChar, 50).Value = dpago.SelectedValue;
               conn.Open();
               cmd.ExecuteNonQuery();
               conn.Close();
           }

           string insertQuery1 = @"INSERT INTO dbo.Vendedor(cedula, nombre, apellido, direccion, telFijo, celular, correo, edad, sexo, fecha) VALUES (@cedula, @nombre, @apellido, @direccion, @telFijo, @celular, @correo, @edad, @sexo, @fecha);";
           using (SqlCommand cmd = new SqlCommand(insertQuery1, conn))
           {

               cmd.Parameters.Add("@cedula", SqlDbType.VarChar, 50).Value = tcedula0.Text;
               cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50).Value = tnombre0.Text;
               cmd.Parameters.Add("@apellido", SqlDbType.VarChar, 50).Value = tapellido0.Text;
               cmd.Parameters.Add("@direccion", SqlDbType.VarChar, 50).Value = tdireccion0.Text;
               cmd.Parameters.Add("@telFijo", SqlDbType.VarChar, 50).Value = tfijo0.Text;
               cmd.Parameters.Add("@celular", SqlDbType.VarChar, 50).Value = tcelular0.Text;
               cmd.Parameters.Add("@correo", SqlDbType.VarChar, 50).Value = tcorreo0.Text;
               cmd.Parameters.Add("@edad", SqlDbType.VarChar, 50).Value = tedad0.Text;
               cmd.Parameters.Add("@sexo", SqlDbType.VarChar, 50).Value = rsexo0.SelectedValue;
               cmd.Parameters.Add("@fecha", SqlDbType.VarChar, 50).Value = tfecha0.Text;
               conn.Open();
               cmd.ExecuteNonQuery();
               conn.Close();
           }*/


            Label7.Text = "Sus datos fueron recibidos";
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            string insertQuery3 = @"INSERT INTO dbo.Factura( id, vendedor, comprador, valorTotal) VALUES ( @id, @vendedor, @comprador, @valorTotal);";
            using (SqlCommand cmd = new SqlCommand(insertQuery3, conn))

            {

                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = Label9.Text;
                cmd.Parameters.Add("@comprador", SqlDbType.VarChar, 50).Value = tnombre.Text+tapellido.Text;
                cmd.Parameters.Add("@vendedor", SqlDbType.VarChar, 50).Value = tnombre0.Text + tapellido0.Text;
                cmd.Parameters.Add("@valorTotal", SqlDbType.VarChar, 50).Value = Label2.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Label11.Text = " Su pago fue recibido";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string ped = "SELECT MAX (npedido) FROM dbo.Pedido";
            SqlCommand cmd = new SqlCommand(ped, conn);
            conn.Open();
            int id = Convert.ToInt32(cmd.ExecuteScalar());
            id++;
            Label9.Text = "" + (id);
            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            string insertQuery3 = @"INSERT INTO dbo.Factura( id, vendedor, comprador, valorTotal) VALUES ( @id, @vendedor, @comprador, @valorTotal);";
            using (SqlCommand cmd = new SqlCommand(insertQuery3, conn))

            {

                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = Label9.Text;
                cmd.Parameters.Add("@comprador", SqlDbType.VarChar, 50).Value = tnombre.Text + tapellido.Text;
                cmd.Parameters.Add("@vendedor", SqlDbType.VarChar, 50).Value = tnombre0.Text + tapellido0.Text;
                cmd.Parameters.Add("@valorTotal", SqlDbType.VarChar, 50).Value = Label2.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Label12.Text = " Su pago fue recibido";
        }
    }
}
