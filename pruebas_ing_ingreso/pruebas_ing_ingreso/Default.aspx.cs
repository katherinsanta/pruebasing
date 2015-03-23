using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    string conexion = ConfigurationManager.ConnectionStrings["cnxsiat"].ConnectionString;

    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = "llll";
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

       
      
        Label1.Text = DateTime.Now.ToString();
        SqlConnection cnx = new SqlConnection(conexion);
        cnx.Open();
        //lblprueba.Text = "conectado";
        string sql;
        sql = @"   select 
        direccionOrig, direccionDest, nombrePasajero,
        observaciones, fechaServicio, estado, valeAsignado, nombreConductor,
        horaServicio, movil, placa, idPasajero 
        from   PDV_SolicitudesTransporte
        where      
        CONVERT(DATETIME,CONVERT(CHAR(10),fechaServicio,120) + ' ' + CONVERT(CHAR(5),horaServicio,108)) >= DATEADD(mi,-45,GETDATE()) 
          and
        CONVERT(DATETIME,CONVERT(CHAR(10),fechaServicio,120) + ' ' + CONVERT(CHAR(5),horaServicio,108)) <= DATEADD(mi,75,GETDATE())
        and estado in (2,9,5) order by horaServicio asc";
        DataTable tabla = new DataTable();
        SqlCommand cmd = new SqlCommand(sql, cnx);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(tabla);
        GridView1.DataSource = tabla;
        GridView1.DataBind();
        cnx.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int estado = (int)DataBinder.Eval(e.Row.DataItem, "estado");
            if (estado == 9)
            {
                e.Row.ForeColor = System.Drawing.Color.Green;
                e.Row.BackColor = System.Drawing.Color.Yellow;

            }
            //else if (estado == 2)
            //{
            //    e.Row.ForeColor = System.Drawing.Color.Yellow;
            //    e.Row.BackColor = System.Drawing.Color.Red;
                

            //}
           
        }
    }
}