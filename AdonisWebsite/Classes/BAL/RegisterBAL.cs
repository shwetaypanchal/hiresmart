using AdonisWebsite.Classes.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace AdonisWebsite.Classes.BAL
{
    public class RegisterBAL
    {
        RegisterDAL rdal = new RegisterDAL();
        public DataTable SelectDropdown(string tname, string condition)
        {
            return rdal.SelectDropdown(tname, condition);
        }
        public int SaveCall(string productcode, int ModelId, string dop, int warrantystatus, string StandardProblem, int area, int subarea
           , string customername, string address, string landmark, long mobile, string email, int city, int state,string rem)
        {
            return rdal.SaveCall(productcode,ModelId,dop,warrantystatus,StandardProblem,area,subarea, customername,address,landmark,mobile,email,city,state,rem);
        }
        public DataTable SelectDropdownModel(string pCode)
        {
            return rdal.SelectDropdownModel(pCode);
        }
            public DataTable SelectSingle(int code)
        {
            return rdal.SelectSingle(code);
        }
            public void SendHttpPostNew(string mobile1)
        {

            string message1 = "We have initiated your complaint our Customer service assistant will call. ";
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
    }
}