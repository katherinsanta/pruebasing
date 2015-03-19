using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;  

namespace pruebas_ing_ingreso
{
    public partial class _in : System.Web.UI.Page
    {

        string conexion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                
                    //RadioButton1.Text;
            }
            else
            {
                lblprueba.Text = RadioButton2.Text;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnx = new SqlConnection(conexion);
            cnx.Open();
            lblprueba.Text = "conectado";
        }
    }
}