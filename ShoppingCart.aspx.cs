using Group_MaskInc_FrontEnd.GroupServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class WebForm5 : System.Web.UI.Page
    {
       Group_ServiceClient SC = new Group_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

            string Display = " ";
            dynamic products;
            
            //SC.getProduct();
            //foreach(Product p in products)
            //{
                Display = "<tr><td class='product-col'><img src ='img / product / images(18).jpg' alt=''>";
                Display = " <div class='p-title'><h5>Kids Mask</h5></div></td>";
                Display = "<td class='price-col'>R0</td><td class='quantity-col'><div class='pro-qty'>";
                Display = "<input type = 'text' value='1'> </div></td> ";
                Display = "<td class='total'>R0</td><td class='product-close'>x</td></tr>";

            //}
        }
                            
                            
                            
                                
                                   
                               
                            
                            
                           
                        
    }
}