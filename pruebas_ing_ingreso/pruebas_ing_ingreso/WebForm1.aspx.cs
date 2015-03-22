﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pruebas_ing_ingreso
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
             

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if ( e.Row.RowType==DataControlRowType.DataRow)
            {
                int estado=(int)DataBinder.Eval (e.Row.DataItem, "estado");
                if (estado == 9 )
                { 
                        e.Row.ForeColor = System.Drawing.Color.Green;
                        e.Row.BackColor = System.Drawing.Color.Yellow;
                        
                }
                else if (estado==2)
                {
                    e.Row.ForeColor = System.Drawing.Color.Yellow;
                    e.Row.BackColor = System.Drawing.Color.Red;
                
                
                }
            }
        }
    }
}