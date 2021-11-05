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
    public partial class WebForm2 : System.Web.UI.Page

    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Usuario\source\repos\Parcial2\ParcialSegundoCorte\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                fill();
            fill2();
            fill3();
        }
        private void fill()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Cliente", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        private void fill2()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Vendedor", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList2.DataSource = ds;
            DataList2.DataBind();
        }
        private void fill3()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Pedido", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList3.DataSource = ds;
            DataList3.DataBind();
        }
    }
}