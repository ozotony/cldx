﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar_acpt.aspx.cs" Inherits="cld.admin.tm.registrar_acpt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ACCEPTANCE LETTER</title>
    <link rel="stylesheet" type="text/css" href="../../css/style.css" />

<link rel="stylesheet" href="../../css/jquery.ui.all.css" />
<script src="../../js/funk.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
   <div>
    <div class="container">
        <div class="sidebar">
            <a href="./registrar_unit/profile_index.aspx">MAIN PROFILE</a>
             <a href="./registrar_unit/tm_profile.aspx">PROFILE</a> 
            <a href="../../cp.aspx?x=<% Response.Write(admin); %>">CHANGE PASSWORD</a> 
            <a href="./registrar_unit/red.aspx">VIEW STATISTICS</a>
            <a href="./preview_r.aspx?d=Accepted">ACCEPTED APPS</a> 
                <a href="./preview_r.aspx?d=Refused">REFUSED APPS</a> 
                <a href="./preview_r.aspx?d=Published">PUBLISHED APPS</a>  
                <a href="./preview_r.aspx?d=Opposed">OPPOSED APPS</a> 
           
        </div>
        <div class="content">
            <div class="header">
                <div class="xmenu">
                    <div class="menu">
                        <ul>
                            <li><a href="./lo.aspx">
                                <img alt="" src="../../images/logoff.png" width="16" height="16" />Log off</a></li>
                        </ul>
                    </div>
                </div>
                
            </div>
            <div id="searchform">
              <div class="xsearchform">
            <table class="form">
        <tr>
            <td colspan="2" align="center" width="1000px">
                <strong>FEDERAL MINISTRY OF TRADE AND INVESTMENT<br />
                    COMMERCIAL LAW DEPARTMENT<br />
                    INDUSTRIAL PROPERTY OFFICE REGISTRY </strong>
            </td>
        </tr>
        <tr>
            <td width="1000px" colspan="2" align="center"  
                style="background-color:green; border-color:green;">
                <img src="../../images/coat_of_arms.png" style="width: 80px; height: 80px" />
            </td>
        </tr>
                <tr>
                    <td colspan="2" align="center" width="1000px"">
                        <strong>
                        <br />
                        ACCEPTANCE LETTER</strong>
                        <br />&nbsp;
                    </td>
                </tr>
       
        <tr>
            <td align="right" colspan="2">&nbsp;</td>
        </tr>
      
        <tr>
            <td align="center" style="width: 50%"> <strong>FILLING/APPLICATION DATE: </strong>
            </td>
            <td align="center" style="width: 50%"> <strong>REGISTRATION NUMBER:  </strong>            
           
            </td>
        </tr>
      
        <tr>
            <td align="center" style="width: 50%"><asp:Label ID="Label1" runat="server" Text="Label"><% Response.Write(c_mark.reg_date); %></asp:Label></td>
            <td  align="center" style="width: 50%"> <asp:Label ID="Label2" runat="server" Text="Label"><% Response.Write(c_mark.reg_number); %></asp:Label></td>
        </tr>
      
        <tr>
            <td align="right" colspan="2" >
                &nbsp;</td>
                  
                </tr>
      
        <tr>
            <td align="center" >
                <strong>ONLINE APPLICATION ID: </strong></td>
                  <td align="center" >
                <strong>AGENT CODE: </strong>
               </td>
                  
                </tr>
      
        <tr>
            <td align="center" >
                 <% Response.Write("OAI/TM/"+c_p.validationID); %></td>
                  <td align="center" >
                       <% Response.Write(c_rep.agent_code); %></td>
                  
                </tr>
      
        <tr>
            <td align="right" colspan="2" >
                &nbsp;</td>
                  
                </tr>
                <tr>
            <td style="background-color:#1C5E55; color:#ffffff; text-align:center; font-weight:bold;" 
                        colspan="2">
                --- APPLICANT INFORMATION ---</td>
                </tr>
                <tr>
            <td align="center" colspan="2">
                &nbsp;</td>
                </tr>
                <tr>
            <td align="center" colspan="2">
                 <strong>APPLICANT NAME: </strong></td>
                </tr>
                <tr>
            <td align="center" colspan="2">
                <% Response.Write(c_app.xname); %></td>
                </tr>
                <tr>
            <td align="right" colspan="2">
                &nbsp;</td>
                </tr>
                <tr>
            <td align="center" colspan="2">
                 <strong>ADDRESS: </strong></td>
                </tr>
                <tr>
            <td align="center" colspan="2">
                <% Response.Write(t.getFormattedAddressByID(c_app.addressID)); %></td>
                </tr>
                 <tr>
            <td align="right" colspan="2" >
                &nbsp;</td>
                  
                </tr>
                <tr>
            <td align="center" >
                 <strong>PHONE NUMBER: </strong>
                   
            </td>
               
            <td align="center">
                 <strong>E-MAIL: </strong></td>
                </tr>
                <tr>
            <td align="center" >
                 <% Response.Write(c_app_addy.telephone1); %></td>
               
            <td align="center">
               <% Response.Write(c_app_addy.email1); %></td>
                </tr>
         <tr>
            <td align="center" colspan="2" >
                &nbsp;</td>
                  
                </tr>
         <tr>
            <td align="center" colspan="2" >
                <strong>DISCLAIMER</strong></td>
                  
                </tr>
         <tr>
            <td align="center" colspan="2" >
                <% Response.Write(c_mark.disclaimer); %></td>
                  
                </tr>
        <tr>
            <td colspan="2" align="center">
                 <strong>TRADEMARK: </strong> &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" >
                <% Response.Write(c_mark.product_title); %></td>                  
                </tr>
                 <tr>
            <td align="center" colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                  <% if (c_mark.logo_pic != "")
                    {%>
                <asp:Image ID="tm_img" runat="server" />
                <% }
                    else
                    { %> NO DEVICE!!
                <% } %>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp; <strong>CLASS SPECIFICATION OF GOODS/SERVICES: </strong>&nbsp;&nbsp;
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"><% Response.Write(c_mark.nice_class); %></asp:Label>
            </td>
        </tr>
         <tr>
            <td align="right" colspan="2" >
                &nbsp;</td>
                  
                </tr>
        <tr>
            <td align="center" colspan="2">
                <strong>CLASS SPECIFICATION OF GOODS/SERVICES DESCRIPTION: </strong>
                </td>
        </tr>       
        <tr>
            <td align="center" colspan="2">
             &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
               <asp:Label ID="Label5" runat="server" Text="Label"><% Response.Write(c_mark.nice_class_desc); %></asp:Label></td>
        </tr>
       <tr>
            <td align="right" colspan="2" >
                &nbsp;</td>
                  
                </tr>
        <tr>
            <td style="background-color:#1C5E55; color:#ffffff; text-align:center; font-weight:bold;" 
                colspan="2" align="center">
            &nbsp;
                </td>
        </tr>
                
        <tr >
            <td colspan="2">
                &nbsp;</td>
        </tr>
                
        <tr>
            <td align="center" colspan="2">
                <strong>Your Trademark has been accepted and will be published/advertised in accordance with the Trademarks Act
                    <br /><br />
                <img alt="Adewasiu" src="signatures/acceptance_signature.jpg" style=" width: 130px;height: 60px;" /><br />
                <br />
                    ABDULWASIU POPOOLA
                    (FOR THE REGISTRAR)</strong></td>
        </tr>
         <tr>
            <td align="center" colspan="2">
                &nbsp;
            </td>
        </tr>
    </table>
    </div>
        </div>
        <table width="1000px">
        <tr>
        <td align="left" width="1000px">
                 <div style="float:left;width:100%;">                    
              <input type="button" name="Printform" id="Printform" value="Print" onclick="printTm('searchform');return false" class="button" />
              
                </div>
        </td>
        </tr>
        </table>
        
    </div>
</div>
</div>
    </form>
</body>
</html>
