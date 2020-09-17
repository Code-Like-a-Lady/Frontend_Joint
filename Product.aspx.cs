using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class Product : System.Web.UI.Page
    {
        //Service reference to use service functions 
        Group_ServiceClient SR = new Group_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Button click adds new products to database 
        protected void AddProducts_Click(object sender, EventArgs e)
        {
            //Conversion from String to Integer 
            int price = Convert.ToInt32(ProPrice.Value);
            int active = Convert.ToInt32(ProActive.Value);
            int maskID = Convert.ToInt32(ProMaskID.Value);
            int admin = Convert.ToInt32(Admin.Value);
            int quantity = Convert.ToInt32(ProQuantity.Value);
            //Service function to add products to database 
            string add = SR.addproducts(ProName.Value, ProDescription.Value, price, active, maskID, admin, quantity);

            //if adding is successful
            if (add.Equals("added"))
            {
                //redirect to the home page 
                Response.Redirect("Home.aspx");
            }
            //If product was not added to database 
            else if (add.Equals("not added"))
            {
                //Display error message to admin  
                error.Text = "Product added to database. ";
                error.Visible = true;
            }
            //If product already exists
            else if (add.Equals("error"))
            {
                //Display error message to admin 
                error.Text = "Product already exists. ";
                error.Visible = true;
            }
        }

        //Button click edits details of exising product 
        //Button click redirects to EditProduct.aspx page 
        protected void EditProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProduct.aspx");
        }

        //Button click removes an exising product 
        //Button click redirects to RemoveProduct.aspx page 
        protected void RemoveProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("RemoveProduct.aspx");
        }
    }
}