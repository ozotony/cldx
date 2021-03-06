﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="g_ipo_appstatus.aspx.cs" Inherits="cld.gf.g_ipo_appstatus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>GENERAL REQUEST FORM STATUS</title>

<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/funk.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
<!--

function btnReprint_onclick() {

}

// -->
</script>
</head>
<body>
    <form id="form1" runat="server">
<table align="center" width="1200px">
            <tr >
                <td >                  
               
                 
           
            <table align="center" width="100%" class="form"> 
        <tr>
            <td colspan="2" align="center" >
                <img alt="Coat Of Arms" height="79" src="../images/coat_of_arms.png" 
                        width="85" /></td>
        </tr>
       
        
        <tr>
            <td colspan="2" align="center" style=" font-size:11pt;">
                 FEDERAL REPUBLIC OF NIGERIA<br />
                    FEDERAL MINISTRY OF INDUSTRY, TRADE AND INVESTMENT<br />
                    COMMERCIAL LAW DEPARTMENT<br />
                    TRADEMARKS, PATENTS AND DESIGNS REGISTRY<br />
                     </td>
        </tr>
       
        
        <tr>
             <td colspan="2" style="font-size:16pt;line-height:115%;" align="center">
                        REQUEST FORM APPLICATION STATUS
                </td>
        </tr>
       
        
        <tr>
             <td colspan="2" style="font-size:18pt;line-height:115%;" align="center">
                        &nbsp;</td>
        </tr>
       
         <% if(showt==0) {%>
        <tr>
            <td colspan="2" align="left" class="tbbg">
                &nbsp;PLEASE ENTER YOUR TRANSACTION OR APPLICATION NUMBER TO CHECK YOUR STATUS</td>
        </tr>
       
        
        <tr>
            <td align="justify" colspan="2">
               
                Dear Customer,<br />
                <br />
                you have requested to fill the online form. however, your application 
                encountered some problems.<br />
                <br />
                kindly enter your transaction id to check the status and proceed to complete the 
                request form to successfully complete your request.<br />
                <br />
                contact <a   href="mailto:customersupport@iponigeria.com" style="color: rgb(1, 134, 186);">customersupport@iponigeria.com</a> or call 08092194426
                   
                    </td>                
        </tr>
        
        
        <tr>
            <td align="right" colspan="2">
                &nbsp;</td>
                
        </tr>
        
        
        <tr>
            <td align="right">
                &nbsp;
                REFERENCE /APPLICATION NUMBER: &nbsp;
                  </td>
                
            <td style="width: 50%;">
            <asp:TextBox ID="xref" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
                </td>
        </tr>
        
        <tr>
            <td style="background-color:#999999; text-align:center;" colspan="2">
               
               </td>
        </tr>


        <tr>
            <td align="center" colspan="2">
               
                <asp:Button ID="Save" runat="server" Text="Check Status" OnClick="Save_Click" class="button" />
               
            </td>
        </tr>


    </table>
            <% }%>
            <% if (showt == 1)
               {%>
               <div id="searchform">
               <div class="xsearchform">
                <table align="center" class="form" id="table1">                  
                   
                    <tr>
                        <td width="100%" colspan="2" class="tbbg">
                            <strong>---STATUS INFORMATION---</strong>
                        </td>
                    </tr>
                    <% if (refill == 0)
                       { %>
                    <tr>
                        <td width="100%" align="justify" colspan="2">
                         Dear 
                            <% if (g_agent_info.xid != null) { Response.Write(g_agent_info.xname); } else { Response.Write("Agent"); } %>, 
                            <br /> We will like to inform you that your application ("<% Response.Write(g_tm_info.reg_number); %>") is currently at the <strong>  "<% Response.Write(status); %> Office"</strong> with the status : <strong>"<% Response.Write(data_status); %>"</strong><br />
                            Regards,
                        </td>
                    </tr>
                    <% }
                       else if(refill==1){ %>
                      
                      <tr>
                        <td width="100%" align="justify" colspan="2">
                         Dear 
                            <% if (g_agent_info.xid != null) { Response.Write(g_agent_info.xname); } else { Response.Write("Agent"); } %>, 
                            <br /> We will like to inform you that your application ("<% Response.Write(g_tm_info.reg_number); %>") 
                            has not been completed successfully!!!<br /> Please click 
                            on the &quot;COMPLETE APPLICATION&quot; button below to update the trademark 
                            details<br />
                            Regards,
                        </td>
                    </tr>
                    <% } %>
                    <tr>
                        <td style="background-color:#999999; text-align:center;" colspan="2">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width:50%">
                            <strong>&nbsp;THE TRADEMARK REGISTRY,<br />
                                &nbsp;COMMERCIAL LAW DEPARTMENT NIGERIA,<br />
                                &nbsp;FEDERAL MINISTRY OF TRADE AND INVESTMENT,<br />
                                &nbsp;FEDERAL CAPITAL TERRITORY,<br />
                                &nbsp;ABUJA,NIGERIA </strong>
                        </td>
                        <td align="right">
                            <strong>REGISTRAR OF TRADEMARKS&nbsp;&nbsp; </strong>
                           
                        </td>
                    </tr>
                   
                    <tr>
                        <td style="background-color:#999999; text-align:center;" colspan="2"> </td>
                    </tr>
                    
                </table>
               </div>
                </div>
             
               <table width="100%">
               <tr>
               <td align="center">
                <input type="button" name="Printform" id="Printform" value="PRINT" onclick="printAssessment(document.getElementById('searchform'));return false" class="button" />
                <% if (refill == 0)
                   { %>                      
             <asp:Button ID="BtnReprintAck" runat="server" Text="REPRINT ACKNOWLEDGEMENT FORM"  CssClass="button" onclick="BtnReprintAck_Click" />
              
                        <% } else if (refill == 1)
                   { %>
                        <input type="button" name="btnCompleteTrademark" id="btnCompleteTrademark" 
                       value="COMPLETE APPLICATION"  
                       onclick="doView('./g_tm_refill.aspx?0001234445XXX43943OPFDSMZXUHSJFDSK88999DKGFSDKFSKFDKFD=<% Response.Write(Session["agt"].ToString()); %>&0001234445XXX43943OPFDSMZXUHSJFDSKFGKSDKGFSDKFSKFDKFD=<% Response.Write(g_pwallet.validationID); %>');" 
                       class="button" />
                       <% }%>
                        <asp:Button ID="BtnCheckStatus" runat="server" Text="REFRESH SEARCH"  CssClass="button" onclick="BtnCheckStatus_Click"/>
                <asp:Button ID="btnDashBoard" runat="server" Text="Back to Dashboard" class="button" onclick="btnDashBoard_Click" />
               </td>
               </tr>
               </table>
               
            <% }%>

        </td>
    </tr>
    </table>
 </form>
</body>
</html>