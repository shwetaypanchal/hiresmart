using AdonisWebsite.Classes.BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdonisWebsite
{
    public partial class ServiceRequest : System.Web.UI.Page
    {
        RegisterBAL rbal = new RegisterBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                ddlstate.DataSource = rbal.SelectDropdown("GlobalAreaMaster", "controllevel=1 and type=2");
                ddlstate.DataTextField = "description";
                ddlstate.DataValueField = "code";
                ddlstate.DataBind();
                ddlstate.Items.Insert(0, new ListItem("--SELECT--"));

                ddlCity.Items.Insert(0, new ListItem("--SELECT--"));
                ddlarea.Items.Insert(0, new ListItem("--SELECT--"));
                ddlsubarea.Items.Insert(0, new ListItem("--SELECT--"));

            }
        }

        protected void rblSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            string val = rblSelect.SelectedValue.ToString();
            if(val=="Normal")
            {
                normalPnel.Visible = true;
                chPanel.Visible = false;
            }
            else if(val=="HC")
            {
                normalPnel.Visible = false;
                chPanel.Visible = true;
            }
            else
            {
                normalPnel.Visible = false;
                chPanel.Visible = false;
            }
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            int lvl = Convert.ToInt32(ddlstate.SelectedValue);
            ddlCity.DataSource = rbal.SelectDropdown("GlobalAreaMaster", "controllevel=" + lvl + " and type=3");
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

        protected void ddlQnt_SelectedIndexChanged(object sender, EventArgs e)
        {

            double dprice=0.0, price = 0.0;
            int val = Convert.ToInt32(ddlQnt.SelectedValue.ToString());
            switch (val)
            {
                case 0:
                    price = 0.0;
                    break;
                case 1:
                    
                    dprice = val * 750.00;
                    break;
                case 2:
                    
                    dprice = val*675.00;
                        break;
                case 3:
                    dprice = val*600.00;
                    break;
                case 4:
                    dprice =val* 525.00;
                    break;
                    
                default:
                    dprice = val * 450.00;
                    break;
            }
            price = val * 750;
            txtPrice.Text = price.ToString();
            lblDiscountvalue.Text = dprice.ToString();
        }
    }
}