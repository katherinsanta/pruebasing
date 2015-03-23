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

        string conexion = ConfigurationManager.ConnectionStrings["cnxsiat"].ConnectionString;

       

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
            string sql;
            sql=@"select top 100 valeAsignado,idSolicitud,idConductor,direccionOrig,direccionDest,estado,horaServicio,movil,nombrePasajero                 
                   from PDV_SolicitudesTransporte
                    where cast(fechaservicio as date)='20150310'";
            DataTable tabla = new DataTable();
            SqlCommand cmd = new SqlCommand(sql, cnx);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(tabla);
            GridView1.DataSource = tabla;
            GridView1.DataBind();
            cnx.Close();


        }
    }
}