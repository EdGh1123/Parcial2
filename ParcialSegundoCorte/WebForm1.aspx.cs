using System;
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
      
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\eduar\source\repos\p2\Parcial2\ParcialSegundoCorte\App_Data\Database1.mdf;Integrated Security=True");


   
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }
        protected void Button4_Click(object sender, EventArgs e)
        {



            string insertQuery3 = @"INSERT INTO dbo.Factura( id, vendedor, comprador, valorTotal) VALUES ( @id, @vendedor, @comprador, @valorTotal);";
            using (SqlCommand cmd = new SqlCommand(insertQuery3, conn))

            {

                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = Label55.Text;
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


        public DataTable Insertar()
        {
            DataTable table = new DataTable();
            DataRow R1;
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


           
        }



        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

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

                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = Label55.Text;
                cmd.Parameters.Add("@comprador", SqlDbType.VarChar, 50).Value = DropDownList3.SelectedValue;
                cmd.Parameters.Add("@vendedor", SqlDbType.VarChar, 50).Value = DropDownList4.SelectedValue;
                cmd.Parameters.Add("@valorTotal", SqlDbType.VarChar, 50).Value = Label2.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Label11.Text = " Su pago fue recibido";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
        
            var random = new Random();
            string ped = "SELECT MAX (npedido) FROM dbo.Pedido";
            SqlCommand cmd = new SqlCommand(ped, conn);
            conn.Open();
            int id = Convert.ToInt32(cmd.ExecuteScalar());
            int numero = random.Next(1, 9000);
            Label55.Text = "" + (id)+ numero;
            conn.Close();
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            string insertQuery3 = @"INSERT INTO dbo.Factura( id, vendedor, comprador, valorTotal) VALUES ( @id, @vendedor, @comprador, @valorTotal);";
            using (SqlCommand cmd = new SqlCommand(insertQuery3, conn))

            {

                var random = new Random();
            
                String sum = Label55.Text + random;
                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = Label55.Text;
                cmd.Parameters.Add("@comprador", SqlDbType.VarChar, 50).Value = DropDownList3.SelectedValue;
                cmd.Parameters.Add("@vendedor", SqlDbType.VarChar, 50).Value = DropDownList4.SelectedValue;
                cmd.Parameters.Add("@valorTotal", SqlDbType.VarChar, 50).Value = Label2.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Label12.Text = " Su pago fue recibido";
        }

 

        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView2.SetActiveView(Vendedor);

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView2.SetActiveView(ViewCliente);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView2.SetActiveView(Pedido);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView2.SetActiveView(Factura);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView2.SetActiveView(FormaPago);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          

        }

        
        protected void Button11_Click(object sender, EventArgs e)
        {
           
        }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void rsexo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void tfecha1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ttarjeta_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tfijo_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

