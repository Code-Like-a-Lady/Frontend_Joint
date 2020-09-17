using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class AddMaskType : System.Web.UI.Page
    {
        //Service reference to use service functions 
        Group_ServiceClient SR = new Group_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Button click adds new Mask to database 
        protected void AddMask_Click(object sender, EventArgs e)
        {
            //Conversion from String to Integer 
            int admin = Convert.ToInt32(MaskAdmin.Value);

            //Service function to add Mask to database
            string mask_type = SR.addtype(MaskName.Value, MaskDescription.Value, admin);

            //if adding is successful
            if (mask_type.Equals("added"))
            {
                //redirect to the home page 
                Response.Redirect("Home.aspx");
            }
            //If Mask was not added to database 
            else if (mask_type.Equals("not added"))
            {
                //Display error message to admin  
                error.Text = "Mask type added to database. ";
                error.Visible = true;
            }
            //If Mask already exists
            else if (mask_type.Equals("error"))
            {
                //Display error message to admin 
                error.Text = "Mask type already exists. ";
                error.Visible = true;
            }
        }

        //Button click edits details of exising product 
        //Button click redirects to EditProduct.aspx page 
        protected void EditMaskType_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditMaskType.aspx");
        }
    }
}