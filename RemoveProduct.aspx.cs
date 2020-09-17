using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class RemoveProduct : System.Web.UI.Page
    {
        //Service reference to use service functions 
        Group_ServiceClient SR = new Group_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Button click gets product to remove from database based off ID 
        protected void Confirm_Click(object sender, EventArgs e)
        {
            //Convert product ID entered to integer 
            int Prod_ID = Convert.ToInt32(ProID.Value);

            //Get product to delete using product ID
            var product = SR.getProduct(Prod_ID);

            if (!IsPostBack)
            {
                //Display product details to admin 
                ProName.Value = product.Name;
                ProDescription.Value = product.Description;
                ProPrice.Value = Convert.ToString(product.Unit_Price);
                ProActive.Value = Convert.ToString(product.Active);
                ProMaskID.Value = Convert.ToString(product.Mask_Id);
                Admin.Value = Convert.ToString(product.Admin_User_Id);
                ProQuantity.Value = Convert.ToString(product.Product_Quantity);
            }
        }

        //Button click sets product active attribute to 0
        protected void RemoveProduct_Click(object sender, EventArgs e)
        {
            //Convert product ID entered to integer 
            int Prod_ID = Convert.ToInt32(ProID.Value);

            //Service function to set product active attribute 0
            string delete = SR.deleteProduct(Prod_ID);

            //if deleting is successfull
            if (delete.Equals("Deleted"))
            {
                //Redirect to home page 
                Response.Redirect("Home.aspx");
            }
            else if (delete.Equals("Product not deleted"))
            {
                error.Text = "Product couldn't be deleted. Please try again.";
                error.Visible = true;
            }
            else if (delete.Equals("Product doesn't exist"))
            {
                error.Text = "Product does not exist.";
                error.Visible = true;
            }
        }
    }
}