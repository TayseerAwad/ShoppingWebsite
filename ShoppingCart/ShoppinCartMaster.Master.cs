using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace ShoppingCart
{

    public partial class ShoppinCartMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            fill();
        }

        void fill()
        {
            var context = new ClassLibrary2.ShoppingEntities();
            links2.Controls.Clear();
            string category = string.Empty;
           foreach (var items in context.Categorytbls)
            {
                category += "<li><a href=\"Products.aspx?id=" + items.cate_id + "\">" + items.cate_name.ToString() + "</a></li>";
            }
            links2.InnerHtml = category;
            //Test

       
        public double CellSpacing { get; set; }
    }
}