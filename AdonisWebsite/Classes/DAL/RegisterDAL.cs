using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace AdonisWebsite.Classes.DAL
{ 
    public class RegisterDAL
    {
       //SqlConnection con = new SqlConnection("Data Source=103.224.241.29;User ID=sa;password=Rpt_server1;Initial Catalog=TestCRM; Pooling=true;Max Pool Size=350;connect timeout = 20");
       SqlConnection con = new SqlConnection("Data Source=103.224.241.125;User ID=sa;password=Prod_server1;Initial Catalog=TestCRM; Pooling=true;Max Pool Size=350;connect timeout = 20");
        public DataTable SelectDropdown(string tablename,string condition)
        {
            ///controllevel="+lvl+" and type="+type
            SqlDataAdapter da = new SqlDataAdapter("select * from "+tablename+" where "+condition, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable SelectDropdownModel(string pCode)
        {
            ///controllevel="+lvl+" and type="+type
            SqlDataAdapter da = new SqlDataAdapter("select Modelid,ModelCode+' '+ModelDescription as 'ModelDesc' from ModelMaster where ModelStatus=1 and ProductCode='"+pCode+"'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable SelectSingle(int code)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from GlobalAreaMaster where code="+code, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int SaveCall(string productcode,int ModelId,string dop,int warrantystatus,string StandardProblem,int area,int subarea
           ,string customername,string address,string landmark,long mobile,string email,int city,int state,string rem)
        {
            int res = 0;
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [TestCRM].[dbo].[OnlineComplaint]"+
           "([BrandId],[CallType],[ProductCode],[ModelId],[ModelSerialNo],[dop],[WarrantyStatus],[ApptDateTime],[StandardProblem],"+
           "[SpecialIns],[Accessories],[DealerCode],[Class],[Area],[SubArea],[CustomerName],[Address],[LandMark],[Phone],[Mobile],"+
           "[Email],[Type],[CityCode],[StateCode],remark) values(38,6,@productCode,@ModelId,null,@dop,@warrantystatus,getdate(),@StandardProblem," +
           "@specialins,'SET',null,707,@area,@subarea,@customername,@address,@landmark,@phone,@mobile,@email,45,@city,@state,@rem)", con);
                cmd.Parameters.AddWithValue("@productcode", productcode);
                cmd.Parameters.AddWithValue("@ModelId", ModelId);
                cmd.Parameters.AddWithValue("@dop", Convert.ToDateTime(dop));
                cmd.Parameters.AddWithValue("@warrantystatus", warrantystatus);
                cmd.Parameters.AddWithValue("@StandardProblem", StandardProblem);
                cmd.Parameters.AddWithValue("@area", area);
                cmd.Parameters.AddWithValue("@subarea", subarea);
                cmd.Parameters.AddWithValue("@customername", customername);
                cmd.Parameters.AddWithValue("@address", address);
                cmd.Parameters.AddWithValue("@landmark", landmark);
                cmd.Parameters.AddWithValue("@phone", mobile);
                cmd.Parameters.AddWithValue("@mobile", mobile);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@city", city);
                cmd.Parameters.AddWithValue("@state", state);
                cmd.Parameters.AddWithValue("@rem", rem);
                cmd.Parameters.AddWithValue("@specialins", rem);
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();

                res = cmd.ExecuteNonQuery();
                con.Close();

            }
            catch(Exception ex)
            {
                throw ex;
            }
            return res;

        }
    }
}