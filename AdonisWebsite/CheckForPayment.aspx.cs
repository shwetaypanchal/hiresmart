using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CCA.Util;
using AdonisWebsite.Classes.BAL;

namespace AdonisWebsite
{
    
    public partial class CheckForPayment : System.Web.UI.Page
    {
        
        CCACrypto chkSum = new CCACrypto();
      
        CustomerPaymentBAL cbal = new CustomerPaymentBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ComplNo"] != "")
            {
                string ComplNo = Request.QueryString["ComplNo"].ToString();
                lblComplNo.Text = ComplNo;
                DataTable dt = cbal.GetCustomer(ComplNo);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        
                        if (dr["order_status"].ToString() != "Success" && dr["CallStatus"].ToString()=="69")
                        {
                            lblCustomerName.Text = dr["CustomerName"].ToString();
                            lblAddress.Text = dr["Address1"].ToString();
                            lblpincode.Text = dr["Pincode"].ToString();
                            lblEmail.Text = dr["Email"].ToString();
                            lblMobile.Text = dr["Mobile"].ToString();
                            lblProduct.Text = dr["ProductDescription"].ToString();
                            lblModel.Text = dr["ModelDescription"].ToString();
                            lblAmount.Text = dr["Amount"].ToString();
                            Session["tid"] = dr["tid"].ToString();
                            Session["amount"]= dr["Amount"].ToString();
                        }
                        
                    }
                }
                else
                {
                    lblComplNo.Text = "Your payment has been done already Or please check with nearest service center. ";
                    btnSubmit.Visible = false;
                }


                //lblAmount.Text = "10";
                Session["ComplNo"] = lblComplNo.Text;
               
            
            }
        }
    

        //protected void btnPay_Click(object sender, EventArgs e)
        //{
        //    double amt = Convert.ToDouble(lblAmount.Text);

        //    //248690
        //   // Response.Redirect("https://test.ccavenue.com/transaction/transaction.do?command=initiateTransaction");



        //}
    }
}