using AdonisWebsite.Classes.BAL;
using CCA.Util;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AdonisWebsite
{
    public partial class ccavResponseHandler1 : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        CustomerPaymentBAL cbal = new CustomerPaymentBAL();
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                string workingKey = "6BD5810CB823883F46FB2071FA801423";//put in the 32bit alpha numeric key in the quotes provided here
                CCACrypto ccaCrypto = new CCACrypto();
                
                string encResponse = ccaCrypto.Decrypt(Request.Form["encResp"], workingKey);
                NameValueCollection Params = new NameValueCollection();
                string[] segments = encResponse.Split('&');
                foreach (string seg in segments)
                {
                    string[] parts = seg.Split('=');
                    if (parts.Length > 0)
                    {
                        string Key = parts[0].Trim();
                        string Value = parts[1].Trim();
                        Params.Add(Key, Value);

                    }
                }

                long order_ship_tel = 0;
                double order_amt = 0.0, order_capt_amt = 0.0, order_discount = 0.0, o_fee_flat = 0, o_fee_perc = 0, o_fee_perc_value = 0, order_tds = 0, order_tax = 0;
                string status = "", res_code = "", device = "", o_fraud_status = "", o_ip = "", order_b_response = "";
                if (Params.Get("status_code") != null)
                {
                    status = Params.Get("status_code");
                }
                if (Params.Get("Amount") != null)
                {
                    order_amt = Convert.ToDouble(Params.Get("Amount"));
                }

                string order_bill_address = Params.Get("billing_address");
                string order__bill_email = Params.Get("billing_email");
                string order_bill_name = Params.Get("billing_name");
                string order_bill_state = Params.Get("billing_state");
                string order_bill_city = Params.Get("billing_city");
                long order_bill_tel = Convert.ToInt64(Params.Get("billing_tel"));
                string order_bill_zip = Params.Get("billing_zip");
                string order_curr = Params.Get("currency");
                if (Params.Get("mer_amount") != null)
                {
                    order_capt_amt = Convert.ToDouble(Params.Get("mer_amount"));
                }
                if (Params.Get("discount_value") != null)
                {
                    order_discount = Convert.ToDouble(Params.Get("discount_value"));
                }

                string order_no = Params.Get("order_id");
                string order_ship_address = Params.Get("delivery_address");
                string order_ship_city = Params.Get("deliery_city");
                string order_ship_country = Params.Get("deliery_country");
                string order_ship_email = Params.Get("billing_email");
                string order_ship_name = Params.Get("delivery_name");
                string order_ship_state = Params.Get("delivery_state");
                if (Params.Get("delivery_tel") != null)
                {
                    order_ship_tel = Convert.ToInt64(Params.Get("delivery_tel"));
                }
                string order_ship_zip = Params.Get("delivery_zip");
                string order_status = Params.Get("order_status");

                string order_status_date_time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                long reference_no = 0;
                if (Params.Get("tracking_id") != null)
                {
                    reference_no = Convert.ToInt64(Params.Get("tracking_id"));
                }
                string order_bank_ref_no = "";
                if (Params.Get("bank_ref_no") != null)
                {
                    order_bank_ref_no = Params.Get("bank_ref_no");
                }
                string order_gtw_id = Params.Get("payment_mode");
                string order_card_name = Params.Get("card_name");
                string order_note = Params.Get("billing_notes");
                string param_value1 = Params.Get("merchant_param1");
                string param_value2 = Params.Get("merchant_param2");
                string param_value3 = Params.Get("merchant_param3");

                string param_value4 = Params.Get("merchant_param4");
                string param_value5 = Params.Get("merchant_param5");
                string error_code = Params.Get("failure_message");
                string order_date_time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                if (Params.Get("response_code") != null)
                {
                    res_code = Params.Get("response_code");
                }
                if (Params.Get("service_tax") != null)
                {
                    order_tax = Convert.ToDouble(Params.Get("service_tax"));
                }

                if (Params.Get("trans_fee") != null)
                {
                    order_tax = Convert.ToDouble(Params.Get("trans_fee"));
                }
                string vault = Params.Get("vault");
                string retry = Params.Get("retry");

                cbal.UpdateRecord(status, order_amt, order_bill_address, order__bill_email, order_bill_name, order_bill_state, order_bill_tel, order_bill_zip, order_bill_city, order_capt_amt, order_curr, order_date_time, device, order_discount, o_fee_flat, o_fee_perc, o_fee_perc_value, o_fraud_status, order_amt, o_ip, order_no, order_note, order_ship_address, order_ship_city, order_ship_country, order_ship_email, order_ship_name, order_ship_name, order_ship_tel, order_ship_zip, order_status, order_status_date_time, order_tds, order_tax, reference_no, order_bank_ref_no, order_b_response, order_gtw_id, order_card_name, param_value1, param_value2, param_value3, param_value4, param_value5, status, res_code, error_code, vault, retry, "Update_E_Payment");
                


                if (order_status == "Success")
                {
                    cbal.SendMail(order_no);
                    cbal.UpdateAccount(order_amt, order_no, order_tax, o_fee_perc_value);
                    cbal.SendHttpPostNew(Params.Get("billing_tel"), order_no);
                    Response.Redirect("PaymentResponse.aspx?amt=" + order_amt+"&status=Success");
                }
                else
                {
                    Response.Redirect("PaymentResponse.aspx?amt=" + order_amt + "&status=Failure");
                }

            }
            catch(Exception ex)
            {
                Response.Write(ex.Message+" "+ex.Source+"  "+ex.TargetSite);
            }



        }
    }
}