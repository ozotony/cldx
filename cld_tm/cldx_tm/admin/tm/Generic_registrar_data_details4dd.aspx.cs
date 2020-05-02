﻿using cld.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cld.admin.tm
{
    public partial class Generic_registrar_data_details4dd : System.Web.UI.Page
    {
        public string pwalletID = "0";
        public string admin = "";
        public cld.Classes.tm t = new cld.Classes.tm();
        public string admin_status = "9";
        public string vid = null;
        public string status = "0";
        public string xcomments = "";
        public string xrecordal = "";
        public zues z = new zues();
        public Classes.XObjs.G_Pwallet g_pwallet = new Classes.XObjs.G_Pwallet();
        public Classes.XObjs.G_App_info g_app_info = new Classes.XObjs.G_App_info();
        public Classes.XObjs.G_Applicant_info g_applicant_info = new Classes.XObjs.G_Applicant_info();
        public Classes.XObjs.Gen_Agent_info g_agent_info = new Classes.XObjs.Gen_Agent_info();
        public Classes.XObjs.G_Tm_info g_tm_info = new Classes.XObjs.G_Tm_info();
        public Classes.XObjs.G_Ass_info g_ass_info = new Classes.XObjs.G_Ass_info();
        public Classes.XObjs.G_Cert_info g_cert_info = new Classes.XObjs.G_Cert_info();
        public Classes.XObjs.G_Change_info g_change_info = new Classes.XObjs.G_Change_info();
        public Classes.XObjs.G_Merger_info g_merger_info = new Classes.XObjs.G_Merger_info();
        public Classes.XObjs.G_Renewal_info g_renewal_info = new Classes.XObjs.G_Renewal_info();
        public Classes.XObjs.G_Prelim_search_info g_prelim_search_info = new Classes.XObjs.G_Prelim_search_info();
        public Classes.XObjs.G_Other_items_info g_other_items_info = new Classes.XObjs.G_Other_items_info();

        public cld.Classes.tm.AddressService c_aos = new cld.Classes.tm.AddressService();
        public cld.Classes.tm.Applicant c_app = new cld.Classes.tm.Applicant();
        public cld.Classes.tm.Address c_app_addy = new cld.Classes.tm.Address();
        public cld.Classes.tm.MarkInfo c_mark = new cld.Classes.tm.MarkInfo();
        public cld.Classes.tm.Representative c_rep = new cld.Classes.tm.Representative();
        public cld.Classes.tm.Address c_rep_addy = new cld.Classes.tm.Address();
        public cld.Classes.tm.Stage c_stage = new cld.Classes.tm.Stage();
        public cld.Classes.XObjs.Pwallet pwallet = new cld.Classes.XObjs.Pwallet();
        public string succ = "";
        public List<zues.G_TmOffice> lt_tm_office = new List<zues.G_TmOffice>();
        public zues.Adminz lt_x_admin_details = new zues.Adminz();
        public List<Classes.XObjs.Fee_list> fee_list = new List<Classes.XObjs.Fee_list>();
        public Classes.Retriever ret = new Classes.Retriever();
        public Odyssey.Odyssey ody = new Odyssey.Odyssey();
        public Recordal Px = new Recordal();
        public List<Recordal> vd = new List<Recordal>();
        public XObjs.Registration vp = new XObjs.Registration();

        // public tm t = new tm();
        public string rbval_text = "";
        // protected RadioButtonList rbValid;
        protected int cert_show = 0; protected int merger_show = 0; protected int ass_show = 0; protected int change_show = 0;
        protected int prelim_show = 0; protected int renewal_show = 0; protected int others_show = 0;

        protected int app_succ = 0; protected int applicant_succ = 0; protected int tm_info_succ = 0;
        protected int x_succ = 0; protected string serverpath = "";
        protected string xusr = "";
        protected string xusr2 = "";
        protected string xusr3 = "";
        protected string xusr4 = "";

        protected string xusr5 = "";

        protected string xusr6 = "";

        protected string xusr7 = "";

        protected string xusr8 = "";

        protected string xusr9 = "";

        protected string xusr10 = "";

        protected string xusr11 = "";

        protected string xusr12 = "";
        protected string xusr13 = "";
        protected string xusr14 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            vupdate();

        }



        protected void Verify_Click(object sender, EventArgs e)
        {
            //if (this.rbval_text == "") { this.rbval_text = "Registered"; }
            //this.succ = this.z.a_g_tm_office(g_pwallet.xid, this.admin_status, this.rbValid.SelectedValue, this.comment.Text, "", "", "", this.admin);
            //if (this.succ != "0")
            //{
            //    base.Response.Write("<script language=JavaScript>alert('Data updated successfully')</script>");
            //    base.Response.Redirect("./Register_Manual2.aspx");
            //}
            //else
            //{
            //    base.Response.Write("<script language=JavaScript>alert('Data not verified, Please try again later')</script>");
            //}
        }
        public void vupdate()
        {

            if ((this.Request.QueryString["0001234445XXX43943OPFDSMZXUHSJFDSKFGKSDKGFSDKFSKFDKFD"] != null) &&
                    (this.Request.QueryString["0001234445XXX43943OPFDSMZXUHSJFDSKFGKSDKGFSDKFSKFDKFD"] != "")
                )
            {
                vid = Request.QueryString["0001234445XXX43943OPFDSMZXUHSJFDSKFGKSDKGFSDKFSKFDKFD"];

                //  g_pwallet = ret.getG_PwalletByValidationID(vid);

                String spwallet = ret.getCheckStatusDetails(vid);
                this.c_mark = this.t.getMarkInfoClassByUserID(spwallet);
                this.c_rep = this.t.getRepClassByUserID(spwallet);
                this.c_stage = this.t.getStageClassByUserID(spwallet);
                this.c_app = this.t.getApplicantClassByID(spwallet);





                if ((c_app.addressID != null) && (c_app.addressID != "") && (c_app.addressID != "0"))
                {
                    this.c_app_addy = this.t.getAddressClassByID(this.c_app.addressID);



                }
                if ((c_rep.addressID != null) && (c_rep.addressID != "") && (c_rep.addressID != "0"))
                {
                    this.c_rep_addy = this.t.getAddressClassByID(this.c_rep.addressID);
                }

                if ((vid != null))
                {
                    //g_tm_info = ret.getG_Tm_infoByPwalletID(g_pwallet.xid);

                    //g_app_info = ret.getG_App_infoByPwalletID(g_pwallet.xid);

                    //g_applicant_info = ret.getG_Applicant_infoByPwalletID(g_pwallet.xid);
                    //g_agent_info = ret.getGenAgentByPwalletID(g_pwallet.xid);
                    //g_ass_info = ret.getG_Ass_infoByPwalletID(g_pwallet.xid);
                    //g_cert_info = ret.getG_Cert_infoByPwalletID(g_pwallet.xid);
                    //g_change_info = ret.getG_Change_infoByPwalletID(g_pwallet.xid);
                    //g_merger_info = ret.getG_Merger_infoByPwalletID(g_pwallet.xid);
                    //g_renewal_info = ret.getG_Renewal_infoByPwalletID(g_pwallet.xid);
                    //g_prelim_search_info = ret.getG_Prelim_search_infoByPwalletID(g_pwallet.xid);
                    //g_other_items_info = ret.getG_Other_items_infoByPwalletID(g_pwallet.xid);


                    //this.lt_tm_office = this.z.getG_TmOfficeDetailsByID(g_pwallet.xid);
                    //  List<Recordal> vd = ret.getG_PwalletByID2(g_pwallet.xid);

                    zues zz2 = new zues();
                    Int32 vint = zz2.getMaxId(spwallet);
                    int num = 0;
                    String vid2 = Request.QueryString["Recordalid"];
                    vint = Convert.ToInt32(vid2);
                     vd = ret.getG_PwalletByID3(vint);
                 

                    foreach (var ddp in vd)
                    {
                        if (ddp.TRANSACTIONID.Contains("-") )
                        {
                            string[] words = ddp.TRANSACTIONID.Split('-');

                            vp = ret.getAgent(words[0]);


                        }

                        else
                        {
                          vp=ret.getAgent(ddp.TRANSACTIONID);
                        }

                        if (ddp.RECORDAL_TYPE == "Change_Name")
                        {
                            Px = ddp;
                            Px.RECORDAL_TYPE = "FORM 22";

                            xusr = "OLD APPLICANT NAME";
                            xusr2 = "NEW APPLICANT NAME";
                            xusr3 = ddp.OLD_APPLICANTNAME;
                            xusr4 = ddp.NEW_APPLICANTNAME;
                            gen_nameHis(ddp);

                        }

                        else if (ddp.RECORDAL_TYPE == "ReClassification")
                        {
                            Px = ddp;
                            Px.RECORDAL_TYPE = "T019";

                            xusr = "OLD CLASS";
                            xusr2 = "NEW CLASS";
                            xusr3 = ddp.OLDCLASS;
                            xusr4 = ddp.NEWCLASS;
                            gen_classHis(ddp);

                        }

                        else if (ddp.RECORDAL_TYPE == "Change_Address")
                        {
                            //Px = ddp;
                            //Px.RECORDAL_TYPE = "FORM 22";
                            //xusr = "OLD PRODUCT TITLE";
                            //xusr2 = "NEW PRODUCT TITLE";
                            //xusr3 = ddp.OLD_PRODUCT_TITLE;
                            //xusr4 = ddp.;
                            //gen_nameAddress(ddp);
                        }

                        else if (ddp.RECORDAL_TYPE == "Change_Rectification")
                        {
                            Px = ddp;
                            Px.RECORDAL_TYPE = "FORM 26";
                            xusr = "OLD PRODUCT TITLE";
                            xusr2 = "NEW PRODUCT TITLE";
                            xusr3 = ddp.OLD_PRODUCT_TITLE;
                            xusr4 = ddp.NEW_PRODUCT_TITLE;


                            //if (ddp.LOGO_DESC == "1" || ddp.LOGO_DESC == "3")
                            //{

                            //    dd2.Visible = true;
                            //}
                            //   gen_nameAddress(ddp);
                        }


                        else if (ddp.RECORDAL_TYPE == "Change_Assignment")
                        {
                            Px = ddp;



                            List<Recordal_Detail> xp = new List<Recordal_Detail>();
                            xp = ret.get_RecordalDetail(ddp.Detail_Id);
                            Px.RECORDAL_TYPE = "FORM 16";
                            xusr = "OLD APPLICANT NAME";
                            xusr2 = "NEW APPLICANT NAME";
                            xusr3 = xp[0].oldApplicantName;
                            xusr4 = xp[0].newApplicantName;


                            xusr5 = "OLD APPLICANT ADDRESS";
                            xusr6 = "NEW APPLICANT ADDRESS";
                            xusr7 = xp[0].oldApplicantAddress;
                            xusr8 = xp[0].newApplicantAddress;


                            xusr9 = "OLD APPLICANT NATIONALITY";
                            xusr10 = "NEW APPLICANT NATIONALITY";
                            xusr11 = ret.getCountryName(xp[0].OldApplicantNationality);
                            xusr12 = ret.getCountryName(xp[0].newApplicantNationality);

                            xusr13 = " DATE OF MERGER";
                            xusr14 = xp[0].assignment_date;

                            //if (ddp.LOGO_DESC == "1" || ddp.LOGO_DESC == "3")
                            //{

                            //    dd2.Visible = true;
                            //}
                            //   gen_nameAddress(ddp);
                        }


                        else if (ddp.RECORDAL_TYPE == "Change_Assignment2")
                        {
                            Px = ddp;



                            List<Recordal_Detail> xp = new List<Recordal_Detail>();
                            xp = ret.get_RecordalDetail(ddp.Detail_Id);
                            Px.RECORDAL_TYPE = "FORM 17";
                            xusr = "OLD APPLICANT NAME";
                            xusr2 = "NEW APPLICANT NAME";
                            xusr3 = xp[0].oldApplicantName;
                            xusr4 = xp[0].newApplicantName;


                            xusr5 = "OLD APPLICANT ADDRESS";
                            xusr6 = "NEW APPLICANT ADDRESS";
                            xusr7 = xp[0].oldApplicantAddress;
                            xusr8 = xp[0].newApplicantAddress;


                            xusr9 = "OLD APPLICANT NATIONALITY";
                            xusr10 = "NEW APPLICANT NATIONALITY";
                            try
                            {
                                xusr11 = ret.getCountryName(xp[0].OldApplicantNationality);
                            }
                            catch (Exception ee)
                            {
                                xusr11 = "";
                            }
                            try
                            {
                                xusr12 = ret.getCountryName(xp[0].newApplicantNationality);

                            }
                            catch (Exception ee)
                            {
                                xusr12 = "";
                            }

                            xusr13 = "DATE OF ASSIGNMENT";
                            xusr14 = xp[0].assignment_date;


                            //if (ddp.LOGO_DESC == "1" || ddp.LOGO_DESC == "3")
                            //{

                            //    dd2.Visible = true;
                            //}
                            //   gen_nameAddress(ddp);
                        }

                    }
                    //for (int i = 0; i < this.lt_tm_office.Count; i++)
                    //{
                    //    this.xcomments = this.xcomments + "<tr>";
                    //    this.xcomments = this.xcomments + "<td align=\"center\" colspan=\"2\">";
                    //    this.xcomments = this.xcomments + "<strong>" + this.lt_tm_office[i].xcomment.ToUpper() + "</strong><br />";
                    //    this.lt_x_admin_details = this.z.getTmAdminDetailsByID(this.lt_tm_office[i].xofficer);
                    //    string xcomments = this.xcomments;
                    //    this.xcomments = xcomments + "COMMENT BY: <strong>" + this.lt_x_admin_details.xname.ToUpper() + "( " + this.z.getRoleNameByID(this.lt_x_admin_details.xroleID).ToUpper() + " UNIT)</strong><br />   Date: <strong>" + this.lt_tm_office[i].reg_date.ToUpper() + "</strong>";
                    //    this.xcomments = this.xcomments + "</td>";
                    //    this.xcomments = this.xcomments + "</tr>";
                    //    if (lt_tm_office[i].xdoc1 != "")
                    //    {
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td colspan=\"2\" align=\"center\">";
                    //        this.xcomments = this.xcomments + "View Document 1: <a href=" + lt_tm_office[i].xdoc1 + " target='_blank'>View</a>";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //    }

                    //    if (lt_tm_office[i].xdoc2 != "")
                    //    {
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td colspan=\"2\" align=\"center\">";
                    //        this.xcomments = this.xcomments + "View Document 2: <a href=" + lt_tm_office[i].xdoc2 + " target='_blank'>View</a>";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //    }

                    //    if (lt_tm_office[i].xdoc3 != "")
                    //    {
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td colspan=\"2\" align=\"center\">";
                    //        this.xcomments = this.xcomments + "View Document 3: <a href=" + lt_tm_office[i].xdoc3 + " target='_blank'>View</a>";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //    }
                    //    this.xcomments = this.xcomments + "<tr>";
                    //    this.xcomments = this.xcomments + "<td class=\"coltbbg\" colspan=\"2\" align=\"center\">";
                    //    this.xcomments = this.xcomments + "&nbsp;";
                    //    this.xcomments = this.xcomments + "</td>";
                    //    this.xcomments = this.xcomments + "</tr>";
                    //    if (this.lt_tm_office[i].admin_status == "3")
                    //    {
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td class=\"coltbbg\" colspan=\"2\" align=\"center\">";
                    //        this.xcomments = this.xcomments + "--- SUPPORTING SEARCH DOCUMENTS ---";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td align=\"right\">";
                    //        this.xcomments = this.xcomments + "Attached Document:";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "<td>";
                    //        //if ((this.swallet.search_str != "") && (this.swallet.search_str != null))
                    //        //{
                    //        //    this.xcomments = this.xcomments + "<a href=view_searcho.aspx?x=" + this.pID + " target='_blank'>View</a>";
                    //        //}
                    //        //else
                    //        //{
                    //        //    this.xcomments = this.xcomments + "NONE";
                    //        //}
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td class=\"coltbbg\" colspan=\"2\" align=\"center\">";
                    //        this.xcomments = this.xcomments + "&nbsp;";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //    }

                    //    //////////
                    //    if (this.lt_tm_office[i].admin_status == "33")
                    //    {
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td class=\"coltbbg\" colspan=\"2\" align=\"center\">";
                    //        this.xcomments = this.xcomments + "--- SUPPORTING SEARCH 2 DOCUMENTS ---";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td align=\"right\">";
                    //        this.xcomments = this.xcomments + "Attached Document:";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "<td>";
                    //        //if ((this.swallet2.search_str != "") && (this.swallet2.search_str != null))
                    //        //{
                    //        //    this.xcomments = this.xcomments + "<a href=view_searcho2.aspx?x=" + this.pID + " target='_blank'>View</a>";
                    //        //}
                    //        //else
                    //        //{
                    //        //    this.xcomments = this.xcomments + "NONE";
                    //        //}

                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";

                    //        this.xcomments = this.xcomments + "<tr>";
                    //        this.xcomments = this.xcomments + "<td class=\"coltbbg\" colspan=\"2\" align=\"center\">";
                    //        this.xcomments = this.xcomments + "&nbsp;";
                    //        this.xcomments = this.xcomments + "</td>";
                    //        this.xcomments = this.xcomments + "</tr>";
                    //    } //////////
                    //}

                    //if (g_tm_info.logo_pic != "")
                    //{
                    //    tm_img.ImageUrl = "../admin/tm/gf/" + g_tm_info.logo_pic;

                    //    if (File.Exists(serverpath + "\\admin\\tm\\gf\\" + g_tm_info.logo_pic))
                    //    {
                    //        tm_img.Height = new Unit(120, UnitType.Pixel);
                    //        tm_img.Width = new Unit(120, UnitType.Pixel);
                    //        try
                    //        {
                    //            FileStream st = new FileStream(serverpath + "\\admin\\tm\\gf\\" + g_tm_info.logo_pic, FileMode.Open, FileAccess.Read);
                    //            System.Drawing.Image new_img = System.Drawing.Image.FromStream(st);
                    //            string ht = new_img.Height.ToString();
                    //            string wt = new_img.Width.ToString();
                    //            if ((ht != "") && (wt != "") && (ht != null) && (wt != null))
                    //            {

                    //                if (Convert.ToInt32(ht) > Convert.ToInt32(wt))
                    //                {
                    //                    tm_img.Height = new Unit(320, UnitType.Pixel);
                    //                    tm_img.Width = new Unit(240, UnitType.Pixel);
                    //                }
                    //                else
                    //                {
                    //                    tm_img.Height = new Unit(240, UnitType.Pixel);
                    //                    tm_img.Width = new Unit(320, UnitType.Pixel);
                    //                }
                    //            }
                    //            else
                    //            {
                    //                // tm_img.Height = new Unit(120, UnitType.Pixel);
                    //                // tm_img.Width = new Unit(120, UnitType.Pixel);
                    //                tm_img.Visible = false;
                    //            }
                    //        }
                    //        catch (Exception ex)
                    //        {
                    //            tm_img.Visible = false;
                    //        }
                    //    }
                    //    else
                    //    {
                    //        // tm_img.Height = new Unit(120, UnitType.Pixel);
                    //        // tm_img.Width = new Unit(120, UnitType.Pixel);
                    //        tm_img.Visible = false;
                    //    }
                    //}

                    //foreach (Classes.XObjs.Fee_list item in fee_list)
                    //{
                    //    if (item.item_code == g_pwallet.log_officer)
                    //    {
                    //        lbl_type.Text = item.item.ToUpper();
                    //    }
                    //}

                    //ShowSection(g_pwallet.log_officer);
                }

            }
        }

        public void gen_nameHis(Recordal vd)
        {
            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> RECORDAL TYPE </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong> FORM 22 </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";



            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> OLD APPLICANT NAME </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.OLD_APPLICANTNAME + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> NEW APPLICANT NAME </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.NEW_APPLICANTNAME + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> REQUEST DATE </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.RECORDAL_REQUEST_DATE + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> AMOUNT </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + String.Format("{0:N}", vd.AMOUNT) + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> TRANSACTION ID </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.TRANSACTIONID + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";




            //  return this.xrecordal;

        }

        public void gen_classHis(Recordal vd)
        {
            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> RECORDAL TYPE </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong> T019 </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";



            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> OLD CLASS </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.OLDCLASS + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> NEW CLASS </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.NEWCLASS + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> REQUEST DATE </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.RECORDAL_REQUEST_DATE + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> AMOUNT </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + String.Format("{0:N}", vd.AMOUNT) + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> TRANSACTION ID </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.TRANSACTIONID + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";




            //  return this.xrecordal;

        }

        public void gen_nameAddress(Recordal vd)
        {

            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> RECORDAL TYPE </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong> FORM 22 </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";

            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> OLD APPLICANT ADDRESS </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.OLD_APPLICANTADDRESS + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> NEW APPLICANT ADDRESS </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.NEW_APPLICANTADDRESS + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> REQUEST DATE </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.RECORDAL_REQUEST_DATE + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> AMOUNT </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + String.Format("{0:N}", vd.AMOUNT) + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";


            this.xrecordal = this.xrecordal + "<tr>";
            this.xrecordal = this.xrecordal + "<td align=\"right\" >";
            this.xrecordal = this.xrecordal + "<strong> TRANSACTION ID </strong>";

            this.xrecordal = this.xrecordal + "</td>";


            this.xrecordal = this.xrecordal + "<td align=\"left\" >";
            this.xrecordal = this.xrecordal + "<strong>" + vd.TRANSACTIONID + " </strong>";

            this.xrecordal = this.xrecordal + "</td>";
            this.xrecordal = this.xrecordal + "</tr>";






        }
    }
}