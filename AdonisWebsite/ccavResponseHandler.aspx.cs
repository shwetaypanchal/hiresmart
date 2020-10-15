using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Collections.Specialized;
using CCA.Util;
using AdonisWebsite.Classes.BAL;
using System.Data;

public partial class ResponseHandler : System.Web.UI.Page
    {
    DataTable dt = new DataTable();
    CustomerPaymentBAL cbal = new CustomerPaymentBAL();
    DataRow dr;
    
    protected void Page_Load(object sender, EventArgs e)
        {
            string workingKey = "EDE5B97416F62E83FC9BB3B7AE65649A";//put in the 32bit alpha numeric key in the quotes provided here
            CCACrypto ccaCrypto = new CCACrypto();
            string encResponse = ccaCrypto.Decrypt(Request.Form["encResp"],workingKey);
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
        dt = cbal.Select();
        dr = dt.NewRow();
        for (int i = 0; i < Params.Count; i++)
        {

            //Response.Write(Params.Keys[i] + " = " + Params[i] + "<br>");
        }
        dr["status"] = Params.Get("status_code");
        dr["order_amt"] = Params.Get("amount");
        dr["order_bill_address"] = Params.Get("billing_address");
        dr["order_bill_email"] = Params.Get("billing_email");
        dr["order_bill_name"] = Params.Get("billing_name");
        dr["order_bill_state"] = Params.Get("billing_state");
        dr["order_bill_tel"] = Params.Get("billing_tel");
        dr["order_bill_zip"] = Params.Get("billing_zip");
        dr["order_bill_zip"] = Params.Get("billing_zip");
        dr["order_curr"] = Params.Get("currency");
        dr["order_capt_amt"] = Params.Get("mer_amount");
        dr["order_discount"] = Params.Get("discount_value");
        dr["order_id"] = Params.Get("order_id");
        dr["order_ship_address"] = Params.Get("delivery_address");
        dr["order_ship_city"] = Params.Get("deliery_city");
        dr["order_ship_county"] = Params.Get("deliery_country");
        dr["order_ship_email"] = Params.Get("billing_email");
        dr["order_ship_name"] = Params.Get("deliery_name");
        dr["order_ship_state"] = Params.Get("deliery_state");
        dr["order_ship_tel"] = Params.Get("deliery_tel");
        dr["order_ship_zip"] = Params.Get("deliery_zip");
        dr["order_status"] = Params.Get("order_status");
        dr["order_status_date_time"] = Params.Get("trans_date");
        dr["reference_no"] = Params.Get("tracking_id");
        dr["order_bank_ref_no"] = Params.Get("bank_ref_no");
        dr["order_gtw_id"] = Params.Get("payment_mode");
        dr["order_card_name"] = Params.Get("card_name");
        dr["order_note"] = Params.Get("billing_notes");
        dr["param_value1"] = Params.Get("merchant_param1");
        dr["param_value2"] = Params.Get("merchant_param2");
        dr["param_value3"] = Params.Get("merchant_param3");
        dr["param_value4"] = Params.Get("merchant_param4");
        dr["param_value5"] = Params.Get("merchant_param5");
        dr["error_code"] = Params.Get("failure_message");

       // cbal.UpdateRecord(dt, "Update_E_Payment");
        Response.Redirect("PaymentResponse.aspx");


    }
    }
