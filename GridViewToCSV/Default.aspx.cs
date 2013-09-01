using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewToCSV
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewtoCSVExport.csv");
            Response.Charset = string.Empty;
            Response.ContentType = "application/text";

            GridView1.AllowPaging = false;
            GridView1.DataBind();

            StringBuilder stringBuilder = new StringBuilder();
            for (int index = 0; index < GridView1.Columns.Count; index++)
            {
                //add separator
                stringBuilder.Append(GridView1.Columns[index].HeaderText + ',');
            }
            //append new line
            stringBuilder.Append("\r\n");
            for (int index = 0; index < GridView1.Rows.Count; index++)
            {
                for (int index2 = 0; index2 < GridView1.Columns.Count; index2++)
                {
                    //add separator
                    stringBuilder.Append(GridView1.Rows[index].Cells[index2].Text + ',');
                }
                //append new line
                stringBuilder.Append("\r\n");
            }

            Response.Output.Write(stringBuilder.ToString());
            Response.Flush();
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}