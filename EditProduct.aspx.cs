using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class EditProduct : System.Web.UI.Page
    {
        //Service reference to use service functions 
        Group_ServiceClient SR = new Group_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Button click gets details of existing product off ID 
        protected void EditProducts_Click(object sender, EventArgs e)
        {
            //Ask admin the product they wish to edit 
            int product_ID = Convert.ToInt32(ProID.Value);
            //Get product based off ID 
            var product = SR.getProduct(product_ID);
            //If its NOT the initial visit to page
            if (!IsPostBack)
            {
                //Display product info to admin 
                ProName.Value = product.Name;
                ProDescription.Value = product.Description;
                ProPrice.Value = Convert.ToString(product.Unit_Price);
                ProActive.Value = Convert.ToString(product.Active);
                ProMaskID.Value = Convert.ToString(product.Mask_Id);
                Admin.Value = Convert.ToString(product.Admin_User_Id);
                ProQuantity.Value = Convert.ToString(product.Product_Quantity);
            }
        }

        //Button click edits details of exising product
        protected void UpdateProducts_Click(object sender, EventArgs e)
        {
            //Get the product id  
            int product_ID = Convert.ToInt32(ProID.Value);
            //Conversion from String to Integer 
            int price = Convert.ToInt32(ProPrice.Value);
            int active = Convert.ToInt32(ProActive.Value);
            int maskID = Convert.ToInt32(ProMaskID.Value);
            int admin = Convert.ToInt32(Admin.Value);
            int quantity = Convert.ToInt32(ProQuantity.Value);

            string edit = SR.editproduct(ProName.Value, ProDescription.Value, price, product_ID, active, maskID, admin, quantity);

            //if edit is successful
            if (edit.Equals("updated"))
            {
                Response.Redirect("Home.aspx");
            }
            //if edit is unsuccessful
            else if (edit.Equals("unsuccessful update"))
            {
                error.Text = "Product edit changes not saved. ";
                error.Visible = true;
            }
            //if product doesn't exist. 
            else if (edit.Equals("product does not exist"))
            {
                error.Text = "Product doesn't exist.";
                error.Visible = true;
            }
        }
    }
}