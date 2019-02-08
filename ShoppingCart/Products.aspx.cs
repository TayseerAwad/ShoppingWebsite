using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var context = new ClassLibrary2.ShoppingEntities();
                int query = Convert.ToInt32(Request.QueryString["id"]);
                var source = context.Product_tbl.Where(q=>q.cat_id==query ).ToList();
                dtProducts.DataSource = source;
                dtProducts.DataBind();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}