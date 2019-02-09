using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            gv1.DataSource = (DataTable)Session["datatable"];
          
            gv1.DataBind();

        }
        public decimal totalprice;
        protected decimal unitprice(decimal price)
        {
            totalprice += price;
            return price;
        }

        protected decimal gettotalprice()
        {
            return totalprice;

        }

        protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dts;
            dts = Session["datatable"] as DataTable;
           
            dts.Rows[e.RowIndex].Delete();
            gv1.DataSource = dts;
            gv1.DataBind();

        }
    }
}