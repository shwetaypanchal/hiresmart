﻿using System;
using System.Collections.Generic;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CCA.Util;


    public partial class SubmitData : System.Web.UI.Page
    {
        CCACrypto ccaCrypto = new CCACrypto();
        string workingKey = "EDE5B97416F62E83FC9BB3B7AE65649A";//put in the 32bit alpha numeric key in the quotes provided here 	
        string ccaRequest = "";
        public string strEncRequest="";
        public string strAccessCode = "AVMD03HB07BM33DMMB";// put the access key in the quotes provided here.
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

            Response.Write(ccaRequest);
            Thread.Sleep(1500);
                strEncRequest = ccaCrypto.Encrypt(ccaRequest, workingKey);

            }
        }
    }

