using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Net;
using System.Text;
using System.IO;

namespace AdonisWebsite.Classes.BAL
{

    public class CustomerPaymentBAL
    {
        CustomerPaymentDAL cdal = new CustomerPaymentDAL();
        public DataTable GetCustomer(string ComplNo)
        {
            return cdal.GetCustomer(ComplNo);
        }

        internal void UpdateRecord(string status, double order_amt, string o_add, string o_email, string o_name, string o_state, long o_tel, string o_zip, string o_city, double o_c_amt, string o_curr, string o_dt_tm, string device, double o_disc, double o_fee_flat, double o_fee_perc, double o_fee_perc_value, string o_fraud_status, double o_g_amt, string o_ip, string o_no, string o_note, string s_add, string s_city, string s_country, string s_email, string s_name, string s_state, long s_tel, string s_zip, string o_status, string o_s_dt_tm, double order_tds, double order_tax, long ref_no, string o_b_ref_no, string order_b_response, string o_g_id, string card_name, string p_val1, string p_val2, string p_val3, string p_val4, string p_val5, string status_msg, string res_code, string e_desc, string vault, string rt, string strProcName)
        {
            cdal.UpdateRecord(status, order_amt,o_add,  o_email,  o_name,  o_state, o_tel,  o_zip,  o_city,  o_c_amt,  o_curr,  o_dt_tm,  device,  o_disc,  o_fee_flat,  o_fee_perc,  o_fee_perc_value,  o_fraud_status,  o_g_amt,  o_ip,  o_no,  o_note,  s_add,  s_city,  s_country,  s_email,  s_name,  s_state,s_tel,  s_zip,  o_status,  o_s_dt_tm,  order_tds,  order_tax, ref_no, o_b_ref_no,  order_b_response,  o_g_id,  card_name,  p_val1,  p_val2,  p_val3,  p_val4,  p_val5,  status_msg,  res_code,  e_desc,  vault,  rt,  strProcName);
        }
        internal DataTable Select()
        {
            return cdal.Select();
        }
        internal void SendMail(string ComplNo)
        {
            DataTable dt = cdal.SelectByVal(ComplNo);
            string email = null, amount = null, eprNo = null;
            if(dt.Rows.Count>0)
            {
                if(dt.Rows[0]["order_status"].ToString()=="Success")
                {
                    email = dt.Rows[0]["order_ship_email"].ToString();
                    amount = dt.Rows[0]["order_amt"].ToString();
                    eprNo = dt.Rows[0]["EPRNo"].ToString();
                }
            }

            if(email!=null)
            {
                try
                {
                    MailMessage mail = new MailMessage("adonis.sysmail@adonis.co.in", email);
                    string str = "Dear Sir/Madam,<br/><br/>";
                    str = "We confirm the reciept of payment of RS "+amount+" against call no "+ComplNo+" vide receipt No "+eprNo+".<br/>";
                    str += "  Thank you for making online payment.<br/><br/><br/>";
                    str += "Thanking you,<br/> Adonis Electronics Pvt Ltd";
                    mail.Subject = "Payment Successfully Receive";
                    mail.Body = str;
                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp3.netcore.co.in";
                    smtp.EnableSsl = true;
                    System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                    NetworkCred.UserName = "adonis.sysmail@adonis.co.in";
                    NetworkCred.Password = "%tgbVFR42021$";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mail);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void SendHttpPostNew(string mobile1, string Complno)
        {
            DataTable dt = cdal.SelectByVal(Complno);
            string amount = null, eprNo = null;
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["order_status"].ToString() == "Success")
                {
                    amount = dt.Rows[0]["order_amt"].ToString();
                    eprNo = dt.Rows[0]["EPRNo"].ToString();
                }
            }

            string message1 = "Call No:"+Complno+" Amount recieved Rs."+amount+" Reciept No."+eprNo+". Please show this to service engineer";
            //Your user name
            string user = "AdonisEL";
            //Your authentication key
            string key = "b0d793d479XX";
            //Multiple mobiles numbers separated by comma
            //string mobile = "+91" + mobile;
            string mobile = "+91" + mobile1;
            //Sender ID,While using route4 sender id should be 6 characters long.
            string senderid = "ADONIS";
            //Your message to send, Add URL encoding here.
            string message = HttpUtility.UrlEncode(message1);

            //Prepare you post parameters
            StringBuilder sbPostData = new StringBuilder();
            sbPostData.AppendFormat("user={0}", user);
            sbPostData.AppendFormat("&key={0}", key);
            sbPostData.AppendFormat("&mobile={0}", mobile);
            sbPostData.AppendFormat("&message={0}", message);
            sbPostData.AppendFormat("&senderid={0}", senderid);
            sbPostData.AppendFormat("&accusage={0}", "1");

            try
            {
                //Call Send SMS API
                string sendSMSUri = "http://103.233.79.246/submitsms.jsp?";
                //Create HTTPWebrequest
                HttpWebRequest httpWReq = (HttpWebRequest)WebRequest.Create(sendSMSUri);
                //Prepare and Add URL Encoded data
                UTF8Encoding encoding = new UTF8Encoding();
                byte[] data = encoding.GetBytes(sbPostData.ToString());
                //Specify post method
                httpWReq.Method = "POST";
                httpWReq.ContentType = "application/x-www-form-urlencoded";
                httpWReq.ContentLength = data.Length;
                using (Stream stream = httpWReq.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
                //Get the response
                HttpWebResponse response = (HttpWebResponse)httpWReq.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                string responseString = reader.ReadToEnd();

                //Close the response
                reader.Close();
                response.Close();
            }
            catch (Exception)
            {
                //MessageBox.Show(ex.Message.ToString());
                //new CallService().logerrors(ex.Message.ToString());
            }

        }

        internal void UpdateAccount(double totamt, string ComplNo, double tax, double fee_perc_value)
        {
            cdal.UpdateAccount(totamt, ComplNo, tax, fee_perc_value);
        }
    }
}