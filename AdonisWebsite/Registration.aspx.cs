using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdonisWebsite.Classes.BAL;
namespace AdonisWebsite
{
    public partial class Registration : System.Web.UI.Page
    {
        RegisterBAL rbal = new RegisterBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlstate.DataSource = rbal.SelectDropdown("GlobalAreaMaster", "controllevel=1 and type=2");
                ddlstate.DataTextField = "description";
                ddlstate.DataValueField = "code";
                ddlstate.DataBind();
                ddlstate.Items.Insert(0, new ListItem("--SELECT--"));

                ddlCity.Items.Insert(0, new ListItem("--SELECT--"));
                ddlarea.Items.Insert(0, new ListItem("--SELECT--"));
                ddlsubarea.Items.Insert(0, new ListItem("--SELECT--"));
                ddlModel.Items.Insert(0, new ListItem("--SELECT--"));

                ddlProduct.DataSource = rbal.SelectDropdown("ProductMaster", "BrandId=38 and ActivationFlag=1");
                ddlProduct.DataTextField = "ProductDescription";
                ddlProduct.DataValueField = "ProductCode";
                ddlProduct.DataBind();
                ddlProduct.Items.Insert(0, new ListItem("--SELECT--"));

                ddlstandard.Items.Insert(0, new ListItem("--SELECT--"));
            }
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            int lvl = Convert.ToInt32(ddlstate.SelectedValue);
            ddlCity.DataSource = rbal.SelectDropdown("GlobalAreaMaster", "controllevel="+lvl+" and type=3");
            ddlCity.DataTextField = "description";
            ddlCity.DataValueField = "code";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, new ListItem("--SELECT--"));
        }

        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            int lvl = Convert.ToInt32(ddlCity.SelectedValue);
            ddlarea.DataSource = rbal.SelectDropdown("GlobalAreaMaster", "controllevel=" + lvl + " and type=4");
            ddlarea.DataTextField = "description";
            ddlarea.DataValueField = "code";
            ddlarea.DataBind();
            ddlarea.Items.Insert(0, new ListItem("--SELECT--"));
        }

        protected void ddlarea_SelectedIndexChanged(object sender, EventArgs e)
        {
            int lvl = Convert.ToInt32(ddlarea.SelectedValue);
            ddlsubarea.DataSource = rbal.SelectDropdown("GlobalAreaMaster", "controllevel=" + lvl + " and type=5");
            ddlsubarea.DataTextField = "description";
            ddlsubarea.DataValueField = "code";
            ddlsubarea.DataBind();
            ddlsubarea.Items.Insert(0, new ListItem("--SELECT--"));
        }

        public void Clear()
        {
            txtFullname.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            ddlwarranty.SelectedIndex = -1;
            txtLandmark.Text = "";
            ddlstate.SelectedIndex = -1;
            ddlCity.SelectedIndex = -1;
            ddlarea.SelectedIndex = -1;
            ddlsubarea.SelectedIndex = -1;
            txtPincode.Text = "";
            ddlProduct.SelectedIndex = -1;
            ddlstandard.SelectedIndex = -1;
            ddlModel.SelectedIndex = -1;
            txtdop.Text = "";
            txtdetail.Text = "";
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            string customername = txtFullname.Text;
            long mobile = Convert.ToInt64(txtMobile.Text);
            string email = (txtEmail.Text != "" ? txtEmail.Text : "");
            string address = txtAddress.Text;
            string StandardProblem = ddlstandard.SelectedItem.Text;
            string landmark = txtLandmark.Text;           
            int state = Convert.ToInt32(ddlstate.SelectedValue);
            string state1 = ddlstate.SelectedItem.Text;
            int city = Convert.ToInt32(ddlCity.SelectedValue);
            string city1 = ddlCity.SelectedItem.Text;
            int area = Convert.ToInt32(ddlarea.SelectedValue);
            string area1 = ddlarea.SelectedItem.Text;
            int subarea = Convert.ToInt32(ddlsubarea.SelectedValue);
            string subarea1 = ddlsubarea.SelectedItem.Text;
            long pincode = Convert.ToInt64(txtPincode.Text);
            string productcode = ddlProduct.SelectedValue;

            string model = (ddlModel.SelectedItem.Text != "--SELECT--") ? ddlModel.SelectedValue : "";
            int ModelId = Convert.ToInt32(model);
            string model1 = ddlModel.SelectedItem.Text;
            int warrantystatus = Convert.ToInt32(ddlwarranty.SelectedValue);
            string warranty = ddlwarranty.SelectedItem.Text;
            string dop = txtdop.Text;
            string rm = txtdetail.Text;
            string rem = rm.Replace("'", "''");
            string mob = txtMobile.Text;
            int result = rbal.SaveCall(productcode, ModelId, dop, warrantystatus, StandardProblem, area, subarea, customername, address, 
                landmark, mobile, email, city, state,rem);

            if(result>0)
            {
                Clear();
                rbal.SendHttpPostNew(mob);
                try
                {
                    MailMessage mail = new MailMessage();
                    string str = "Dear Team Member,<br/><br/>";
                    str = "<table border=1><tr><td>Name Of Customer</td> <td>Mobile No.</td> <td>Email Id</td> <td>Address</td> <td>Landmark</td> <td>State</td> <td>City</td> <td>Area</td> <td>Subarea</td> <td>Pincode</td> <td>Product</td> <td>Model</td> <td>DateOfPurchase</td> <td>Warranty</td><td>Standard Problem</td> <td>Special Ins</td><t/tr>";
                    str += "<tr><td>" + customername + "</td> <td>"+mobile+"</td> <td>"+email+"</td> <td>"+address+"</td> <td>"+landmark+"</td> <td>"+state1+"</td> <td>"+city1+"</td> <td>"+area1+"</td> <td>"+subarea1+"</td> <td>"+pincode+"</td> <td>"+productcode+"</td> <td>"+model1+"</td> <td>"+dop+"</td> <td>"+warranty+ "</td> <td>"+StandardProblem+ "</td> <td>"+rem+"</td></tr> ";
                    str += "</table>";
                    str += "Thanking you,<br/> Adonis Electronics Pvt Ltd";
                    mail.To.Add(new MailAddress("kavya.masand@adonis.co.in"));
                    //mail.CC.Add(new MailAddress("kavya.masand@adonis.co.in"));

                    mail.From=new MailAddress("adonis.sysmail@adonis.co.in");
                    mail.Subject = "Online Complaint Registration";
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
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your complaint is initiated by system ')", true);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please check data properly and save again')", true);
            }
        }

        
        protected void ddlsubarea_SelectedIndexChanged(object sender, EventArgs e)
        {
            int lvl = Convert.ToInt32(ddlsubarea.SelectedValue);
            DataTable dt1 = new DataTable();
            dt1 = rbal.SelectSingle(lvl);
            if (dt1.Rows.Count > 0)
            {
                txtPincode.Text = dt1.Rows[0]["pincode"].ToString();
            }

        }

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            string code = ddlProduct.SelectedValue;
            ddlModel.DataSource = rbal.SelectDropdownModel(code);
            ddlModel.DataTextField = "ModelDesc";
            ddlModel.DataValueField = "ModelId";
            ddlModel.DataBind();
            ddlModel.Items.Insert(0, "--SELECT--");
            ddlstandard.DataSource = rbal.SelectDropdown("StandardProblemMaster", "ProductCode='" + code + "'");
            ddlstandard.DataTextField = "ProblemDesc";
            ddlstandard.DataValueField = "ProblemId";
            ddlstandard.DataBind();
            ddlstandard.Items.Insert(0, "--SELECT--");

            //StandardProblemMaster where ProblemCode
        }
    }
}