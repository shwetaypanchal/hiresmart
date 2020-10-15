using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdonisWebsite
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage(txtEmail.Text, "customer.care@adonis.co.in");
                mail.Subject = txtSubject.Text;
                mail.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtMessage.Text;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp3.netcore.co.in";
                smtp.EnableSsl = true;
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                NetworkCred.UserName = "customer.care@adonis.co.in";
                NetworkCred.Password = "%tgbVFR42021$";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mail);
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Error : " + ex.Message + "');</script>");
            }
        
        }
    }
}