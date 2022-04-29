using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabAss6
{
    public partial class CurrencyConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)//输入人民币
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                lblResult.Text = Convert.ToString(Convert.ToDouble(t1.Text) * 0.15);
            }


        }
    }
}