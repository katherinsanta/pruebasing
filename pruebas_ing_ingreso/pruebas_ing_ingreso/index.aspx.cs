using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


//http://www.c-sharpcorner.com/UploadFile/ee01e6/track-user-activity-while-performing-crud-operation-in-datab/ ejemplos de conexion ojo 



namespace pruebas_ing_ingreso
{
    public partial class _in : System.Web.UI.Page
    {
      SqlConnection conexion=new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
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
            try
            {
                conexion.Open();

            }
            catch (SqlException sqlex)
            {

            }
            catch (Exception ex)
            { 
            
            
            }

            Label2.Text = " ";
        }
    }
}