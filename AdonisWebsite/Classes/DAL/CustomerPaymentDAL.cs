using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
namespace AdonisWebsite
{
    public class CustomerPaymentDAL
    {
        double ServiceBasicAmount, ServiceTax1, ServiceTax1F, ServiceTax1O, BasicAmount1, ServiceTax2F, ServiceTax2O, BasicAmount2, ServiceTax2;
        SqlConnection con = new SqlConnection("Data Source=103.224.241.125;User ID=sa;password=Prod_server1;Initial Catalog=TestCRM; Pooling=true;Max Pool Size=350;connect timeout = 20");
        SqlConnection conFA = new SqlConnection("Data Source=103.224.241.125;User ID=sa;password=Prod_server1;Initial Catalog=AdonisFA2008;Pooling=true;Max Pool Size=350;connect timeout=120");
        public DataTable GetCustomer(string ComplNo)
        {
            SqlCommand cmd = new SqlCommand("GetCustomerData", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ComplNo", ComplNo);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        internal DataTable SelectByVal(string ComplNo)
        {
            SqlCommand cmd = new SqlCommand("select * from E_Payment where order_id='" + ComplNo + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        internal DataTable Select()
        {
            SqlCommand cmd = new SqlCommand("select top(1)* from E_Payment", con);
            SqlDataAdapter sqlData = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sqlData.Fill(dt);
            return dt;
        }



        internal void UpdateRecord(string status, double order_amt, string o_add, string o_email, string o_name, string o_state, long o_tel, string o_zip, string o_city, double o_c_amt, string o_curr, string o_dt_tm, string device, double o_disc, double o_fee_flat, double o_fee_perc, double o_fee_perc_value, string o_fraud_status, double o_g_amt, string o_ip, string o_no, string o_note, string s_add, string s_city, string s_country, string s_email, string s_name, string s_state, long s_tel, string s_zip, string o_status, string o_s_dt_tm, double order_tds, double order_tax, long ref_no, string o_b_ref_no, string order_b_response, string o_g_id, string card_name, string p_val1, string p_val2, string p_val3, string p_val4, string p_val5, string status_msg, string res_code, string e_desc, string vault, string rt, string strProcName)
        {
            SqlParameter objParam = new SqlParameter();
            SqlCommand objCmd = new SqlCommand(strProcName, con);
            try
            {
                con.Close();

                objCmd.CommandTimeout = 100;
                objCmd.CommandType = CommandType.StoredProcedure;
                if (status == "null")
                {
                    status = "";
                    objCmd.Parameters.AddWithValue("@status", status);
                }
                objCmd.Parameters.AddWithValue("@order_amt", order_amt);
                objCmd.Parameters.AddWithValue("@order_bill_address", o_add);
                objCmd.Parameters.AddWithValue("@order__bill_email", o_email);
                objCmd.Parameters.AddWithValue("@order_bill_name", o_name);
                objCmd.Parameters.AddWithValue("@order_bill_state", o_state);
                objCmd.Parameters.AddWithValue("@order_bill_tel", o_tel);
                objCmd.Parameters.AddWithValue("@order_bill_zip", o_zip);
                objCmd.Parameters.AddWithValue("@order_bill_city", o_city);
                objCmd.Parameters.AddWithValue("@order_capt_amt", o_c_amt);
                objCmd.Parameters.AddWithValue("@order_curr", o_curr);
                objCmd.Parameters.AddWithValue("@order_date_time", Convert.ToDateTime(o_dt_tm));
                objCmd.Parameters.AddWithValue("@order_device_type", device);
                objCmd.Parameters.AddWithValue("@order_discount", o_disc);
                objCmd.Parameters.AddWithValue("@order_fee_flat", o_fee_flat);
                objCmd.Parameters.AddWithValue("@order_fee_perc", o_fee_perc);
                objCmd.Parameters.AddWithValue("@order_fee_perc_value", o_fee_perc_value);
                objCmd.Parameters.AddWithValue("@order_fraud_status", o_fraud_status);

                objCmd.Parameters.AddWithValue("@order_gross_amt", o_g_amt);
                objCmd.Parameters.AddWithValue("@order_ip", o_ip);
                objCmd.Parameters.AddWithValue("@order_no", o_no);
                objCmd.Parameters.AddWithValue("@order_note", o_note);
                objCmd.Parameters.AddWithValue("@order_ship_address", s_add);
                objCmd.Parameters.AddWithValue("@order_ship_city", s_city);
                objCmd.Parameters.AddWithValue("@order_ship_country", s_country);
                objCmd.Parameters.AddWithValue("@order_ship_email", s_email);
                objCmd.Parameters.AddWithValue("@order_ship_name", s_name);
                objCmd.Parameters.AddWithValue("@order_ship_state", s_state);
                objCmd.Parameters.AddWithValue("@order_ship_tel", s_tel);
                objCmd.Parameters.AddWithValue("@order_ship_zip", s_zip);
                objCmd.Parameters.AddWithValue("@order_status", o_status);
                objCmd.Parameters.AddWithValue("@order_status_date_time", Convert.ToDateTime(o_s_dt_tm));
                objCmd.Parameters.AddWithValue("@order_tds", order_tds);
                objCmd.Parameters.AddWithValue("@order_tax", order_tax);
                objCmd.Parameters.AddWithValue("@reference_no", ref_no);
                objCmd.Parameters.AddWithValue("@order_bank_ref_no", o_b_ref_no);
                objCmd.Parameters.AddWithValue("@order_gtw_id", o_g_id);
                objCmd.Parameters.AddWithValue("@order_bank_response", order_b_response);
                objCmd.Parameters.AddWithValue("@order_card_name", card_name);
                objCmd.Parameters.AddWithValue("@param_value1", p_val1);
                objCmd.Parameters.AddWithValue("@param_value2", p_val2);
                objCmd.Parameters.AddWithValue("@param_value3", p_val3);
                objCmd.Parameters.AddWithValue("@param_value4", p_val4);
                objCmd.Parameters.AddWithValue("@param_value5", p_val5);
                objCmd.Parameters.AddWithValue("@status_message", status_msg);
                objCmd.Parameters.AddWithValue("@response_code", res_code);
                objCmd.Parameters.AddWithValue("@error_desc", e_desc);
                objCmd.Parameters.AddWithValue("@vault", vault);
                objCmd.Parameters.AddWithValue("@retry", rt);
                con.Open();
                objCmd.ExecuteNonQuery();
            }
            catch (Exception ex) {
                throw ex;
            }

            finally
            {
                objCmd.Connection.Close();
                con.Close();
            }
        }

        internal void UpdateAccount(double totamt, string ComplNo, double tax, double fee_perc_value)
        {
            string VoucherNo = "";
            int k = totamt.ToString().Length;
            string dt = DateTime.Now.ToString();

            //int remainder = Convert.ToInt32(totamt.ToString().Substring(k - 2, 2));
            //decimal decval = Convert.ToDecimal(totamt.ToString().Substring(k - 2, 2)) / 100;
            //decimal numval = Convert.ToDecimal(totamt);
            //long strnum = Convert.ToInt64(numval - decval);
            //string Rs = ConvertNumberToWord(strnum);
            //string paise = ConvertNumberToWord(remainder);
            string finYear = GetCurrentFinancialYear();
            string BranchId = "";
            SqlDataAdapter da1 = new SqlDataAdapter("select * from ComplaintHeader where ComplNo='" + ComplNo + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                BranchId = dt1.Rows[0]["BranchId"].ToString();
            }
            string MainBranchId = "";
            SqlDataAdapter daMainBr = new SqlDataAdapter("select * from BranchMaster where BranchId='" + BranchId + "'", con);
            DataTable dtMainBr = new DataTable();
            daMainBr.Fill(dtMainBr);
            if (dtMainBr.Rows.Count > 0)
            {
                if (dtMainBr.Rows[0]["BranchType"].ToString() == "7" || dtMainBr.Rows[0]["BranchType"].ToString() == "12")
                {
                    MainBranchId = dtMainBr.Rows[0]["ReportingToBranch"].ToString();
                }
                else
                {
                    MainBranchId = dtMainBr.Rows[0]["BranchId"].ToString();
                }
            }
            conFA.Open();
            SqlTransaction Trans = conFA.BeginTransaction(IsolationLevel.ReadCommitted);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conFA;
            Cmd.Transaction = Trans;
            try
            {
                Cmd.CommandText = "Select count(VoucherNO) from CashBankReceipt2008 Where VoucherNo Like 'BR%' And " +
                "BranchId = '" + MainBranchId + "' And LedgerCode = 301005 And financialyear = '" + finYear+"'";
                int intNextNo = Convert.ToInt32(Cmd.ExecuteScalar());
                Cmd.CommandText = "Select substring(Prefix,3,4)As Prefix From BranchPrefixMaster Where BranchId = '" + MainBranchId + "'";
                string strPrefix = Convert.ToString(Cmd.ExecuteScalar());
                Cmd.CommandText = "Select BankID from BankMaster Where  BranchID ='38' and LedgerCode='304061'";
                string BnkID = Convert.ToString(Cmd.ExecuteScalar());
                BnkID = BnkID.PadLeft(4, '0');
                //string AmtWords = Rs + " And " + paise + " Paise Only ";
                string BRNo = "";
                if (intNextNo == 0)
                {
                    BRNo = strPrefix + BnkID + "0001";
                }
                else
                {
                    Cmd.CommandText = "select Max(substring(VoucherNO,11,5)) + 1 As VoucherNo from CashBankReceipt2008 " +
                        " Where VoucherNo Like 'BR%' And BranchId = '" + MainBranchId + "'" +
                        " And LedgerCode='301005' And financialyear =" + finYear;

                    BRNo = Convert.ToString(Convert.ToInt32(Cmd.ExecuteScalar()));

                    BRNo = BRNo.PadLeft(4, '0');
                    BRNo = strPrefix + BnkID + BRNo;
                }
                VoucherNo = "BR" + BRNo;
                double net = totamt - fee_perc_value - tax;
                //debit to icici 304061
                Cmd.CommandText = "update LedgerDetail2008 SET CurrentDebit = CurrentDebit + " + net + "  Where BranchId =38 And LedgerCode = '304061' And FinancialYear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                Cmd.CommandText = "Update LedgerDetail2008 SET ClosingBalance = OpeningBalance + CurrentDebit - CurrentCredit Where BranchId = 38 And LedgerCode = '304061' And FinancialYear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                //credit to sundry 301005
                Cmd.CommandText = "Update LedgerDetail2008 SET CurrentCredit = CurrentCredit +" + totamt + " Where BranchId = '" + MainBranchId + "' And LedgerCode = '301005'  And financialyear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                Cmd.CommandText = "Update LedgerDetail2008 SET ClosingBalance = OpeningBalance + CurrentDebit - CurrentCredit Where BranchId = '" + MainBranchId + "' And LedgerCode = '301005'  And financialyear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                //ccavenue charge 800008 with debitEntry
                Cmd.CommandText = "Update LedgerDetail2008 SET CurrentDebit = CurrentDebit +" + fee_perc_value + " Where BranchId = 38 And LedgerCode = '800008'  And financialyear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                Cmd.CommandText = "Update LedgerDetail2008 SET ClosingBalance = OpeningBalance + CurrentDebit - CurrentCredit Where BranchId = 38 And LedgerCode ='800008'  And financialyear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                // tax ledger 355050 with debitEntry
                Cmd.CommandText = "Update LedgerDetail2008 SET CurrentDebit = CurrentDebit +" + tax + " Where BranchId = 38 And LedgerCode = '355050'  And financialyear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                Cmd.CommandText = "Update LedgerDetail2008 SET ClosingBalance = OpeningBalance + CurrentDebit - CurrentCredit Where BranchId = 38 And LedgerCode = '355050'  And financialyear = '" + finYear + "'";
                Cmd.ExecuteNonQuery();

                Cmd.CommandText = "INSERT INTO CashBankReceipt2008(BranchId, VoucherNo, VoucherDate, VoucherAmount,VoucherType, " +
        "LedgerCode,PIFNo,PaymentMode, LastUpdate,FinancialYear,UserId,AmtInWords)VALUES" +
        "(38, '" + VoucherNo + "',getdate(), " + net + ", '237', 304061, '0', '237', getdate(),'" + finYear + "', 618, '')";

               Cmd.ExecuteNonQuery();

                // Cashbankreceiptdetails entry 
                Cmd.CommandText = "INSERT INTO CashBankReceiptDetail2008(VoucherNo, BranchId,DivisionCode,MainLedgerCode, SubLedgerCode, " +
"Narration,Amount,EntryType,ChequeNo,ChequeDate,BankName,FinancialYear,CostCode,DeptCode,TransBranch,DocumentDate) " +
"VALUES('" + VoucherNo + " ', '38', 276,'301005', '', 'Online Payment receive against " + ComplNo + "', " + net + ", 'CR', '','', '','"+finYear+"', '" + MainBranchId + "', 0, '" + MainBranchId + "', getdate())";
               Cmd.ExecuteNonQuery();

                if (conFA.State == ConnectionState.Open)
                {
                    Trans.Commit();
                }
            }
            catch (System.Data.SqlClient.SqlException sqlEx)
            {
                Trans.Rollback();
                if (sqlEx.Number == 2627)
                {
                    throw sqlEx;
                }
                else
                {
                    throw sqlEx;
                }
            }
            catch (Exception ex)
            {
                Trans.Rollback();
                throw ex;
            }
            finally
            {
                conFA.Close();
            }

            #region second account updatation
            string PCRNo = "", UserId = "";
            string ETCR = "";

            SqlDataAdapter da = new SqlDataAdapter("select top(1)* from AdonisFA2008.dbo.PcrLedger where Productcode in(select ProductCode from ComplaintHeader where ComplNo='" + ComplNo + "')", con);
            DataTable dtPcrLedger = new DataTable();

            da.Fill(dtPcrLedger);
            if (dtPcrLedger.Rows.Count == 0)
            {
                //tdMsgAssist.Text = "<script>alert('No Ledgers Mapped for PCR')</script>";
                return;
            }

            DataTable dtETCR = SelectByVal(ComplNo);
            if (dtETCR.Rows.Count > 0)
            {
                ETCR = dtETCR.Rows[0]["EPRNo"].ToString();
            }

            string AllocationNo = "", Model = "", ModelSerial = "";

            //Get AllocationNo, ModelCode and ModelSerialNo
            SqlDataAdapter daGetData = new SqlDataAdapter("SELECT TestCRM.dbo.ProductMaster.ProductCode, TestCRM.dbo.ModelMaster.ModelId, " +
"TestCRM.dbo.ComplAllocDetails.AllocationNo, TestCRM.dbo.ModelMaster.ModelCode,TestCRM.dbo.ComplaintHeader.ModelSerialNo,TestCRM.dbo.ComplaintHeader.ComplNo," +
"TestCRM.dbo.ComplaintHeader.RegDateTime FROM  TestCRM.dbo.ProductMaster INNER JOIN TestCRM.dbo.ModelMaster ON TestCRM.dbo.ProductMaster.ProductCode = TestCRM.dbo.ModelMaster.ProductCode" +
" INNER JOIN TestCRM.dbo.ComplaintHeader ON TestCRM.dbo.ProductMaster.ProductCode = TestCRM.dbo.ComplaintHeader.ProductCode" +
" INNER JOIN TestCRM.dbo.CustDealerMaster ON TestCRM.dbo.ComplaintHeader.CustomerId = TestCRM.dbo.CustDealerMaster.CustomerId INNER JOIN TestCRM.dbo.ComplAllocDetails ON " +
"TestCRM.dbo.ComplaintHeader.ComplNo = TestCRM.dbo.ComplAllocDetails.ComplNo AND TestCRM.dbo.ModelMaster.ModelId = TestCRM.dbo.ComplaintHeader.ModelId AND " +
"TestCRM.dbo.ComplaintHeader.ComplNo = '" + ComplNo + "' And TestCRM.dbo.ComplaintHeader.BranchId = '" + BranchId + "' Order By TestCRM.dbo.ComplAllocDetails.AllocationNo", conFA);

            DataTable dtGetData = new DataTable();
            daGetData.Fill(dtGetData);

            if (dtGetData.Rows.Count > 0)
            {
                AllocationNo = dtGetData.Rows[0]["AllocationNo"].ToString();
                Model = dtGetData.Rows[0]["ModelId"].ToString(); ;
                ModelSerial = dtGetData.Rows[0]["ModelSerialNo"].ToString();
            }
            //get accountant officer from branch
            SqlDataAdapter daUser = new SqlDataAdapter("select * from usermaster where RefrenceId in (select EmpId from TestCRM.dbo.EmployeeMaster where BranchId='" + MainBranchId + "') and ActivationFlag = 1 and OperationalLevel = 24 and DesignationCode in (66)", conFA);
            DataTable dtUser = new DataTable();
            daUser.Fill(dtUser);
            if (dtUser.Rows.Count > 0)
            {   
                UserId = dtUser.Rows[0]["UserId"].ToString();
            }

            conFA.Open();
            SqlTransaction Trans1 = conFA.BeginTransaction(IsolationLevel.ReadCommitted);
            SqlCommand Cmd1 = new SqlCommand();
            Cmd1.Connection = conFA;
            Cmd1.Transaction = Trans1;

            DataTable dtJVDtlLedgr;

            try
            {
                #region Getting and Setting EPR no
                string strQry = "Select count(*) from PCR2008 Where PCRNo Like 'EPR%' and BranchId = " + BranchId + " And FinancialYear ='" + finYear + "'";
                Cmd1.CommandText = strQry;
                int intNextNo = Convert.ToInt32(Cmd1.ExecuteScalar());

                strQry = "Select substring(Prefix,3,4) as Prefix From BranchPrefixMaster Where BranchId = " + MainBranchId;
                Cmd1.CommandText = strQry;
                string strPrefix = Convert.ToString(Cmd1.ExecuteScalar());

                if (intNextNo == 0)
                {
                    PCRNo = strPrefix + "00001";
                }
                else
                {
                    strQry = "select Max(substring(PCRNO,8,5)) As PCRNO from PCR2008 Where PCRNo Like 'EPR%' And BranchId = "
                                + BranchId + " And FinancialYear ='" + finYear + "'";

                    Cmd1.CommandText = strQry;
                    PCRNo = Convert.ToString(Convert.ToInt32(Cmd1.ExecuteScalar()) + 1);

                    PCRNo = PCRNo.PadLeft(5, '0');
                    PCRNo = strPrefix + PCRNo;
                }
                string VoucherNo1 = "EPR" + PCRNo;
                #endregion


                string SGST9 = "", CGST9 = "";

                #region Setting tax amount and basic amount
                //int Rate;


                double gstper = (18 / 100);
                ServiceTax2 = (Convert.ToDouble(totamt) * gstper);

                BasicAmount2 = System.Math.Round(Convert.ToDouble(totamt) - (System.Math.Round(ServiceTax2, 2)));

                SGST9 = Convert.ToString(System.Math.Round((ServiceTax2) / 2, 2));
                CGST9 = Convert.ToString(System.Math.Round((ServiceTax2) / 2, 2));

                #endregion
                #region inserting into PCR
                double TotalPCRAmount = Convert.ToDouble(BasicAmount2);
                string tdate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                string strSQL = "insert into PCR2008(PCRNo,BranchId,PCRDate,VisitNo,CRNo,EWCCode,EWCValidFrom,EWCValidTo,EWCNo,ServiceCharges," +
                            " ServiceDiscount,ServiceChargeBasic,Transport,MaterialCharges,MaterialDiscount, BasicAmount,SalesTax,EWCAmtReceived,DealerCommission," +
                            " CustomerDiscount,EWCBasic,ServiceTax,TotalEWCAmount,AccAmount,TotalPCRAmount, FinancialYear, LastUpdate, UserId,CallNo," +
                            " InstallationCharges,Model, ModelSerialNo,InstBasic,TransBasic,ST,ST_EC_F,ST_EC_O,PrLedgerId,Mat1Charges,Mat1Basic,Mat2Charges,Mat2Basic," +
                            " AccHSNId,SpareHSNId,Mat1HSNId,Mat2HSNId,TaxSGST14,TaxCGST14,TaxSGST9,TaxCGST9," +
                            " TaxSGST6,TaxCGST6,TaxSGST2Half,TaxCGST2Half,GSTIN)" +
                            " VALUES ('"
                            + VoucherNo1 + "'," + BranchId + ",GETDATE(),'" + AllocationNo + "','" + ETCR + "','','','','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"
                            + totamt + ",'" + finYear + "',GETDATE()," + UserId + ",'" + ComplNo + "',"
                            + totamt + ",'" + Model + "','" + ModelSerial + "'," + BasicAmount2 + ",0," + ServiceTax1
                            + ",0,0,0,0,0,0,0,1,2,9,46,0,0," + SGST9 + "," + CGST9
                            + ",0,0,0,0,'')";

                Cmd1.CommandText = strSQL;
                Cmd1.ExecuteNonQuery();
                #endregion
                #region JV and JD Entries
                strSQL = "select Max(VoucherNo) from JVHeader2008 where journaltype='JD' and BranchId=" + BranchId + " and financialyear='" + finYear
                            + "' and Convert(datetime,convert(varchar(12),voucherdate,101))=Convert(datetime,convert(varchar(12),getdate(),101))";

                Cmd1.CommandText = strSQL;
                object objMxVN = Cmd1.ExecuteScalar();

                if (objMxVN != System.DBNull.Value)//jd found in jvheader2008 updating the amount
                {
                    strSQL = "select Max(VoucherNo) from JVHeader2008 where journaltype='JD' "
                            + " and BranchId=" + BranchId + " and financialyear= '" + finYear + "'";

                    Cmd1.CommandText = strSQL;
                    string strMxVN = Convert.ToString(Cmd1.ExecuteScalar());

                    strSQL = "update JVHeader2008 set Amount=Amount +" + totamt + " where journaltype='JD' and BranchId=" + BranchId
                            + " and VoucherNo='" + strMxVN + "' And FinancialYear = '" + finYear + "'";

                    Cmd1.CommandText = strSQL;
                    Cmd1.ExecuteNonQuery();
                }
                else//if JD not in jvheader2008 --creation of JD Voucherno
                {
                    strSQL = "select case when max(substring(VoucherNo,7,len(VoucherNo)-6)) is null then 1 else max(substring(VoucherNo,7,len(VoucherNo)-6)) +1 end from JVHeader2008 "
                            + " where  BranchId =" + BranchId + " And journaltype='JD' and financialyear='" + finYear + "'";

                    Cmd1.CommandText = strSQL;
                    object objSubVchrNo = Cmd1.ExecuteScalar();

                    string strSubVchrNo;
                    if (objSubVchrNo == System.DBNull.Value)
                    {
                        strSubVchrNo = "00001";
                    }
                    else
                    {
                        strSubVchrNo = Convert.ToString(objSubVchrNo).PadLeft(5, '0');
                    }
                    //check for prfx is with branhcid or mainbranchid
                    strSQL = "select substring(Prefix,3,4) From BranchPrefixMaster Where BranchId =" + BranchId;

                    Cmd1.CommandText = strSQL;
                    string strPrfx = Convert.ToString(Cmd1.ExecuteScalar());

                    strSubVchrNo = "JD" + strPrfx + strSubVchrNo;//Creating JD Voucherno

                    // new insertion of JVheader2008 with amount

                    strQry = "insert into JVHeader2008(BranchId, VoucherNo, VoucherDate, FinancialYear, JournalType,Userid,lastupdate,Amount,AmtInWords)"
                            + " values ('" + BranchId + "','" + strSubVchrNo + "',getdate(),'" + finYear + "', "
                            + " 'JD','" + UserId + "',getdate(),'" + totamt + "','')";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();
                }

                strQry = "select Max(VoucherNo) from JVHeader2008 where journaltype='JD' and BranchId='" + BranchId + "' And FinancialYear = '" + finYear + "'";

                Cmd1.CommandText = strQry;
                string strMVN = Convert.ToString(Cmd1.ExecuteScalar());

                strQry = "select JvoId From JVHeader2008 where VoucherNo = '" + strMVN + "' And BranchId =" + BranchId + " and  financialyear='" + finYear + "'";

                Cmd1.CommandText = strQry;
                string strJVoID = Convert.ToString(Cmd1.ExecuteScalar());

                strQry = "Select distinct jvoid from JVDetails2008 where  jvoid= '" + strJVoID + "' and LedgerCode='301005'";

                Cmd1.CommandText = strQry;
                string strJJVoID = Convert.ToString(Cmd1.ExecuteScalar());
                string Narration = "AGAINST CALL NO." + ComplNo + " & " + VoucherNo + " DATED " + DateTime.Now.ToShortDateString();
                if (strJJVoID == "")// If JVOID is Null Insertion
                {

                    //305100 - SUNDRY DEBTORS SERVICE - DR
                    strQry = "insert into JVDetails2008(DocDate,JvoId, TransBranchId , LedgerCode,  SubLedgerCode, CRDR, CostCode,  Amount, GrossTDS,UserId, LastUpdate,Narration) values (getdate(),'" +
                        strJVoID + "','" + BranchId + "',301005,null,'DR','" + MainBranchId + "','" + totamt + "',0,'" + UserId + "',getdate(),'" + Narration + "')";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();
                    //
                    strQry = "update LedgerDetail2008 set CurrentDebit=CurrentDebit + " + totamt + ", ClosingBalance=ClosingBalance + "
                        + totamt + " Where LedgerCode = 301005 and BranchId=" + MainBranchId + " And FinancialYear = '" + finYear + "'";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();

                    #endregion
                    #region updating ledger
                    if (dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString() != "")
                    {
                        strQry = "insert into JVDetails2008(DocDate,JvoId, TransBranchId , LedgerCode,  SubLedgerCode, CRDR, CostCode,  Amount, GrossTDS,UserId, LastUpdate,Narration) values (getdate(),'" + strJVoID + "'," + BranchId + ",'" + dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString() + "',null,'CR'," + BranchId + ",'" +
                            BasicAmount2 + "',0,'" + UserId + "',getdate(),'" + Narration + "')";
                        Cmd1.CommandText = strQry;
                        Cmd1.ExecuteNonQuery();

                        strQry = "update LedgerDetail2008 set CurrentCredit= CurrentCredit + " + BasicAmount2 + ", ClosingBalance=ClosingBalance - "
                            + BasicAmount2 + " Where LedgerCode ='" + dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString() + "' and BranchId=" + BranchId + " And FinancialYear = '" + finYear + "'";

                        Cmd1.CommandText = strQry;
                        Cmd1.ExecuteNonQuery();
                    }

                    //TaxSGST9 Ledgercode

                    strQry = "insert into JVDetails2008(DocDate,JvoId, TransBranchId , LedgerCode,  SubLedgerCode,CRDR, CostCode,  Amount, GrossTDS,UserId, LastUpdate,Narration) values (getdate(),'" +
                        strJVoID + "','" + BranchId + "','" + "400369" + "',null,'CR','" + BranchId + "','" + SGST9 + "',0,'" + UserId + "',getdate(),'" + Narration + "')";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();

                    strQry = "update LedgerDetail2008 set CurrentCredit= CurrentCredit + '" + SGST9 + "', ClosingBalance=ClosingBalance - '" + SGST9 + "' "
                        + " Where LedgerCode ='" + "400369" + "' and BranchId=" + BranchId + " And FinancialYear = '" + finYear + "'";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();

                    //TaxCGST9 Ledgercode

                    strQry = "insert into JVDetails2008(DocDate,JvoId, TransBranchId , LedgerCode,  SubLedgerCode,CRDR, CostCode,  Amount, GrossTDS,UserId, LastUpdate,Narration) values (getdate(),'"
                        + strJVoID + "'," + BranchId + ",'" + "400368" + "',null,'CR'," + BranchId + ",'" + CGST9 + "',0,'" + UserId + "',getdate(),'" + Narration + "')";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();

                    strQry = "update LedgerDetail2008 set CurrentCredit= CurrentCredit + '" + CGST9 + "', ClosingBalance=ClosingBalance - '" + CGST9 + "' "
                        + " Where LedgerCode ='" + "400368" + "' and BranchId=" + BranchId + " And FinancialYear = '" + finYear + "'";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();

                    #endregion
                }
                else // JVOID Found-- UpDate the Records
                {
                    string cnt = "";
                    dtJVDtlLedgr = new DataTable();
                    strQry = "Select Id,LedgerCode from JVDetails2008 where jvoid='" + strJVoID + "' ";
                    SqlDataAdapter dbAdapter = new SqlDataAdapter();
                    dbAdapter.SelectCommand = Cmd1;
                    Cmd1.CommandText = strQry;
                    dbAdapter.Fill(dtJVDtlLedgr);
                    dbAdapter.Dispose();
                    #region updating ledger
                    //305100	SUNDRY DEBTORS SERVICE Ledger  DR
                    strQry = "update jvdetails2008 set Amount= Amount + " + totamt + " where jvoid='" + strJVoID
                            + "' And  CRDR='DR' And TransBranchId=" + BranchId + " And LedgerCode='301005'";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();
                    //ask
                    strQry = "update LedgerDetail2008 set CurrentDebit=CurrentDebit + " + totamt + ", ClosingBalance=ClosingBalance + "
                        + totamt + " Where LedgerCode = 301005 and BranchId=" + BranchId + " And FinancialYear = '" + finYear + "' ";

                    Cmd1.CommandText = strQry;
                    Cmd1.ExecuteNonQuery();



                    //InstallationCharges LedgerCode
                    if (BasicAmount2 != 0)
                    {
                        if (dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString() != "")
                        {
                            cnt = Convert.ToString(dtJVDtlLedgr.Compute("sum(Id)", "LedgerCode=" + dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString()));
                            if (cnt == "")
                            {
                                strQry = "insert into JVDetails2008(DocDate,JvoId, TransBranchId , LedgerCode,  SubLedgerCode, CRDR, CostCode,  Amount, GrossTDS,UserId, LastUpdate,Narration) values (getdate(),'"
                                    + strJVoID + "'," + BranchId + ",'" + dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString() + "',null,'CR'," + BranchId + ",'" + BasicAmount2 + "',0,'" +
                                    UserId + "',getdate(),'" + Narration + "')";

                                Cmd1.CommandText = strQry;
                                Cmd1.ExecuteNonQuery();
                            }
                            else
                            {
                                strQry = "update JVDetails2008 set  Amount= Amount + " + BasicAmount2 + " where jvoid='" + strJVoID
                                    + "' And CRDR='CR' And TransBranchId=" + BranchId + " And  LedgerCode='" + dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString() + "'";

                                Cmd1.CommandText = strQry;
                                Cmd1.ExecuteNonQuery();
                            }

                            strQry = "update LedgerDetail2008 set CurrentCredit= CurrentCredit + " + BasicAmount2 + ", ClosingBalance=ClosingBalance - "
                                + BasicAmount2 + " Where LedgerCode ='" + dtPcrLedger.Rows[0]["InstChgsLedgerCode"].ToString() + "' and BranchId=" + BranchId + " " +
                                "And FinancialYear = '" + finYear + "'";

                            Cmd1.CommandText = strQry;
                            Cmd1.ExecuteNonQuery();
                        }
                    }
                    //400369
                    //TaxSGST9 Ledgercode
                    if (SGST9 != "0")
                    {
                        //							if(dtPcrLedger.Rows[0]["SalesTaxLedgerCode"].ToString() !="")
                        //							{
                        cnt = Convert.ToString(dtJVDtlLedgr.Compute("sum(Id)", "LedgerCode='400369'"));
                        if (cnt == "")
                        {
                            strQry = "insert into JVDetails2008(DocDate,JvoId, TransBranchId , LedgerCode,  SubLedgerCode, CRDR, CostCode,  Amount, GrossTDS,UserId, LastUpdate,Narration) values (getdate(),'"
                                + strJVoID + "'," + BranchId + ",'" + "400369" + "',null,'CR'," + BranchId + ",'" + SGST9 + "',0,'" + UserId + "',getdate(),'" + Narration + "')";

                            Cmd1.CommandText = strQry;
                            Cmd1.ExecuteNonQuery();
                        }
                        else
                        {
                            strQry = "update JVDetails2008 set Amount=Amount + " + SGST9 + " where jvoid='" + strJVoID
                                + "' And CRDR='CR' And TransBranchId=" + BranchId + " And LedgerCode='" + "400369" + "' ";

                            Cmd1.CommandText = strQry;
                            Cmd1.ExecuteNonQuery();
                        }
                        strQry = "update LedgerDetail2008 set CurrentCredit= CurrentCredit + " + SGST9 + ", ClosingBalance=ClosingBalance -"
                            + SGST9 + " Where LedgerCode = '" + "400369" + "'  and BranchId=" + BranchId + " And FinancialYear = '" + finYear + "'";

                        Cmd1.CommandText = strQry;
                        Cmd1.ExecuteNonQuery();
                        //}
                    }
                    //400368
                    //TaxCGST9 Ledgercode
                    if (CGST9 != "0")
                    {

                        cnt = Convert.ToString(dtJVDtlLedgr.Compute("sum(Id)", "LedgerCode='400368'"));
                        if (cnt == "")
                        {
                            strQry = "insert into JVDetails2008(DocDate,JvoId, TransBranchId , LedgerCode,  SubLedgerCode, CRDR, CostCode,  Amount, GrossTDS,UserId, LastUpdate,Narration) values (getdate(),'" +
                                strJVoID + "'," + BranchId + ",'" + "400368" + "',null,'CR'," + BranchId + ",'" + CGST9 + "',0,'" + UserId + "',getdate(),'" + Narration + "')";

                            Cmd1.CommandText = strQry;
                            Cmd1.ExecuteNonQuery();
                        }
                        else
                        {
                            strQry = "update JVDetails2008 set Amount=Amount + " + CGST9 + " where jvoid='" + strJVoID
                                + "' And CRDR='CR' And TransBranchId=" + BranchId + " And LedgerCode='" + "400368" + "' ";

                            Cmd1.CommandText = strQry;
                            Cmd1.ExecuteNonQuery();
                        }
                        strQry = "update LedgerDetail2008 set CurrentCredit= CurrentCredit + " + CGST9 + ", ClosingBalance=ClosingBalance -"
                            + CGST9 + " Where LedgerCode = '" + "400368" + "'  and BranchId=" + BranchId + " And FinancialYear = '" + finYear + "'";

                        Cmd1.CommandText = strQry;
                        Cmd1.ExecuteNonQuery();
                    }
                    #endregion
                }
                if (conFA.State == ConnectionState.Open)
                {
                    Trans1.Commit();
                }

            }
            catch (System.Data.SqlClient.SqlException sqlEx)
            {
                Trans1.Rollback();
                if (sqlEx.Number == 2627)
                {
                    throw sqlEx;
                }
                else
                {
                    throw sqlEx;
                }
            }
            catch (Exception ex)
            {
                Trans1.Rollback();
                throw ex;
            }
            finally
            {
                conFA.Close();
            }
            #endregion
        
    }


        public DataTable GetSelectByQuery(string str)
        {
            try
            {

                SqlCommand objCmd = new SqlCommand(str, conFA);
                objCmd.CommandTimeout = 200;
                SqlDataAdapter objDtAdap = new SqlDataAdapter(objCmd);
                DataTable objDt = new DataTable();

                if (objCmd.Connection.State == ConnectionState.Open) { objCmd.Connection.Close(); }
                objCmd.Connection.Open();
                objDtAdap.Fill(objDt);
                objCmd.Connection.Close();
                return objDt;
            }
            catch (Exception ex) { throw ex; }
        }
       

       
        public string GetCurrentFinancialYear()
        {
            int CurrentYear = DateTime.Today.Year;
            int PreviousYear = DateTime.Today.Year - 1;
            int NextYear = DateTime.Today.Year + 1;
            string PreYear = PreviousYear.ToString();
            string NexYear = NextYear.ToString();
            string CurYear = CurrentYear.ToString();
            string FinYear = null;

            if (DateTime.Today.Month > 3)
                FinYear = CurYear + "-" + NexYear;
            else
                FinYear = PreYear + "-" + CurYear;
            return FinYear.Trim();
        }
        private string ConvertNumberToWord(long nNumber)
        {
            long CurrentNumber = nNumber;
            string sReturn = "";

            if (CurrentNumber >= 1000000000)
            {
                sReturn = sReturn + " " + GetWord(CurrentNumber / 1000000000, "Billion");
                CurrentNumber = CurrentNumber % 1000000000;
            }
            if (CurrentNumber >= 10000000)
            {
                sReturn = sReturn + " " + GetWord(CurrentNumber / 10000000, "Crore");
                CurrentNumber = CurrentNumber % 10000000;
            }
            if (CurrentNumber >= 100000)
            {
                sReturn = sReturn + " " + GetWord(CurrentNumber / 100000, "lakh");
                CurrentNumber = CurrentNumber % 100000;
            }
            if (CurrentNumber >= 1000)
            {
                sReturn = sReturn + " " + GetWord(CurrentNumber / 1000, "Thousand");
                CurrentNumber = CurrentNumber % 1000;
            }
            if (CurrentNumber >= 100)
            {
                sReturn = sReturn + " " + GetWord(CurrentNumber / 100, "Hundred");
                CurrentNumber = CurrentNumber % 100;
            }
            if (CurrentNumber >= 20)
            {
                sReturn = sReturn + " " + GetWord(CurrentNumber, "");
                CurrentNumber = CurrentNumber % 10;
            }
            else if (CurrentNumber > 0)
            {
                sReturn = sReturn + " " + GetWord(CurrentNumber, "");
                CurrentNumber = 0;
            }
            return sReturn.Replace("  ", " ").Trim();
        }

        private string GetWord(long nNumber, string sPrefix)
        {
            long nCurrentNumber = nNumber;
            string sReturn = "";
            while (nCurrentNumber > 0)
            {
                if (nCurrentNumber > 100)
                {
                    sReturn = sReturn + " " + GetWord(nCurrentNumber / 100, "Hundred");
                    nCurrentNumber = nCurrentNumber % 100;
                }
                else if (nCurrentNumber >= 20)
                {
                    sReturn = sReturn + " " + GetTwentyWord(nCurrentNumber / 10);
                    nCurrentNumber = nCurrentNumber % 10;
                }
                else
                {
                    sReturn = sReturn + " " + GetLessThanTwentyWord(nCurrentNumber);
                    nCurrentNumber = 0;
                }
            }
            sReturn = sReturn + " " + sPrefix;
            return sReturn;
        }

        private string GetTwentyWord(long nNumber)
        {
            string sReturn = "";
            switch (nNumber)
            {
                case 2:
                    sReturn = "Twenty";
                    break;
                case 3:
                    sReturn = "Thirty";
                    break;
                case 4:
                    sReturn = "Forty";
                    break;
                case 5:
                    sReturn = "Fifty";
                    break;
                case 6:
                    sReturn = "Sixty";
                    break;
                case 7:
                    sReturn = "Seventy";
                    break;
                case 8:
                    sReturn = "Eighty";
                    break;
                case 9:
                    sReturn = "Ninety";
                    break;
            }
            return sReturn;
        }

        private string GetLessThanTwentyWord(long nNumber)
        {
            string sReturn = "";
            switch (nNumber)
            {
                case 1:
                    sReturn = "One";
                    break;
                case 2:
                    sReturn = "Two";
                    break;
                case 3:
                    sReturn = "Three";
                    break;
                case 4:
                    sReturn = "Four";
                    break;
                case 5:
                    sReturn = "Five";
                    break;
                case 6:
                    sReturn = "Six";
                    break;
                case 7:
                    sReturn = "Seven";
                    break;
                case 8:
                    sReturn = "Eight";
                    break;
                case 9:
                    sReturn = "Nine";
                    break;
                case 10:
                    sReturn = "Ten";
                    break;
                case 11:
                    sReturn = "Eleven";
                    break;
                case 12:
                    sReturn = "Twelve";
                    break;
                case 13:
                    sReturn = "Thirteen";
                    break;
                case 14:
                    sReturn = "Forteen";
                    break;
                case 15:
                    sReturn = "Fifteen";
                    break;
                case 16:
                    sReturn = "Sixteen";
                    break;
                case 17:
                    sReturn = "Seventeen";
                    break;
                case 18:
                    sReturn = "Eighteen";
                    break;
                case 19:
                    sReturn = "Nineteen";
                    break;
            }
            return sReturn;
        }

    }
}