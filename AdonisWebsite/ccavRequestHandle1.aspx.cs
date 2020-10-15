using CCA.Util;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdonisWebsite.Classes.BAL;

namespace AdonisWebsite
{
    public partial class ccavRequestHandle1 : System.Web.UI.Page
    {
        CCACrypto ccaCrypto = new CCACrypto();
        string workingKey = "6BD5810CB823883F46FB2071FA801423";//put in the 32bit alpha numeric key in the quotes provided here 	
        string ccaRequest = "";
        public string strEncRequest = "";
        public string strAccessCode = "AVDW90HB50BA02WDAB";// put the access key in the quotes provided here.
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (string name in Request.Form)
                {
                    if (name != null)
                    {
                        if (!name.StartsWith("_"))
                        {
                            ccaRequest = ccaRequest + name + "=" + Request.Form[name] + "&";
                            /* Response.Write(name + "=" + Request.Form[name]);
                              Response.Write("</br>");*/
                        }
                    }
                }
                decimal amt=0;
                string ComplNo = Session["ComplNo"].ToString();
                
                CustomerPaymentBAL cbal = new CustomerPaymentBAL();
                DataTable dt = cbal.GetCustomer(ComplNo);
                if (dt.Rows.Count > 0)
                {
                    ccaRequest += "tid=" + Session["tid"].ToString() + "&";
                    ccaRequest += "merchant_id=248690&";
                    ccaRequest += "order_id=" + ComplNo + "&";
                    //amt=Convert.ToDecimal(dt.Rows[0]["Amount"].ToString());
                    string str = Session["amount"].ToString();
                    ccaRequest += "amount="+ str+ "&";
                    ccaRequest += "currency=INR&";
                    ccaRequest += "redirect_url=https://adoniselectronics.in/ccavResponseHandler1.aspx&";
                    ccaRequest += "cancel_url=https://adoniselectronics.in/ccavResponseHandler1.aspx&";
                    ccaRequest += "billing_name=" + dt.Rows[0]["CustomerName"].ToString() + "&";
                    ccaRequest += "billing_address=" + dt.Rows[0]["Address1"].ToString() + "&";
                    ccaRequest += "billing_zip=" + dt.Rows[0]["Pincode"].ToString() + "&";
                    ccaRequest += "billing_country=India&";
                    ccaRequest += "billing_tel="+dt.Rows[0]["Mobile"].ToString() + "&";
                    ccaRequest += "billing_email="+dt.Rows[0]["Email"].ToString() + "&";
                    ccaRequest += "billing_city=" + dt.Rows[0]["City"].ToString() + "&";
                    ccaRequest += "billing_state=" + dt.Rows[0]["State"].ToString() + "&";

                }

                //Response.Write(ccaRequest);
                strEncRequest = ccaCrypto.Encrypt(ccaRequest, workingKey);

            }
        }
    }
}