using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Product_details : System.Web.UI.Page
    {
        ClassLibrary2.ShoppingEntities cont = new ClassLibrary2.ShoppingEntities();

        DataTable dt = new DataTable();
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill();
            }
        }

        void fill()
        {
            try
            {
                var context = new ClassLibrary2.ShoppingEntities();
                int parse = Convert.ToInt32(Request.QueryString["id"]);
                var query = context.Product_tbl.Where(q => q.prod_id == parse).FirstOrDefault();
                LblName.Text = Convert.ToString(query.prod_name);
                LblDescription.Text = Convert.ToString(query.prod_desc);
                LblPrice.Text = Convert.ToString(query.prod_price);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void lnkAdd_Click(object sender, EventArgs e)
        {
            string Name = LblName.Text;
            int Id = Convert.ToInt32(Request.QueryString["id"]);
            int price = Convert.ToInt32(LblPrice.Text);
            datatable(Id, price, Name, out bool check);

            if(check==true)
            {
                string cstype = "";
                
                ClientScript.RegisterStartupScript(cstype.GetType(), "myalert", "alert('" +"your item has been added to the cart "+"');", true);
            }

        }


        void datatable(int Id, int price, string Name, out bool check)
        {
            try
            {
                if (Session["datatable"] == null)
                {
                    dt.Columns.Add("prodId", System.Type.GetType("System.Int32"));
                    dt.Columns.Add("prodPrice", System.Type.GetType("System.Int32"));
                    dt.Columns.Add("prodName");
                    dr = dt.NewRow();
                    dr[0] = Id;
                    dr[1] = price;
                    dr[2] = Name;

                    dt.Rows.Add(dr);
                    Session["datatable"] = dt;
                    check = true;
                }

                else
                {
                    dt = (DataTable)(Session["datatable"]);
                    dr = dt.NewRow();
                    dr = dt.NewRow();
                    dr[0] = Id;
                    dr[1] = price;
                    dr[2] = Name;
                    dt.Rows.Add(dr);
                    check = true;

                }
                Session["datatable"] = dt;
            }
            
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                check = false;
            }
        }

       
    }
}