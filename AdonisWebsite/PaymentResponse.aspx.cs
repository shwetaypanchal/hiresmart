using CCA.Util;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdonisWebsite
{
    public partial class PaymentResponse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["amt"] != "" && Request.QueryString["status"]=="Success")
            {
               lbl1.Text=" Thank you for payment of Rs." + Request.QueryString["amt"].ToString();
            }
            else if(Request.QueryString["status"] == "Failure")
            {
                lbl1.Text = "Unsuccessful payment of Rs." + Request.QueryString["amt"].ToString() + " please check with service provider";
            }
        }
    }
    }
