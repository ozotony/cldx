﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_aos.aspx.cs" Inherits="cld.admin.tm.x_unit.add_aos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="../../../css/style.css" rel="stylesheet" type="text/css" />
<script src="../../../js/funk.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
        <div class="sidebar">
            </div>
        <div class="content">
            <div class="header">
                <div class="xmenu">
                    <div class="menu">
                    <ul>
                                           
                    </ul>
                </div>
                </div>
                <div class="xlogo">
                    <div class="xlogo_l">
                    </div>
                    <div class="xlogo_r">
                    </div>
                </div>
            </div>

  <table align="center" width="100%" class="form">
   <% if (showsucc == "1")
                   { %>
     <tr>
            <td colspan="2" align="center">
               <strong><% Response.Write(succ_text); %>    
                </strong><br />
                <asp:Button ID="Back" runat="server" Text="Back To Application Status Check" 
                    class="button" onclick="Back_Click" />
                <asp:Button ID="BackProfile" runat="server" Text="Back To Profile" 
                    class="button" onclick="BackProfile_Click" />
            </td>
        </tr>
           <% } else{ %>
        <tr>
            <td colspan="2" align="left" class="tbbg">
                PLEASE UPDATE THE &quot;ADDRESS OF SERVICE&quot; DETAILS BELOW
            </td>
        </tr>
       
         <% if (state_row == "0")
            { %>
        <tr>
            <td width="22%">
                &nbsp;STATE:             </td>
            <td>
                <asp:DropDownList ID="xselectState" runat="server" CssClass="textbox" 
                    DataSourceID="ds_State" DataTextField="name" DataValueField="ID" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="ds_State" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cldConnectionString %>" 
                    SelectCommand="SELECT * FROM [state]">
                </asp:SqlDataSource>
                <% if (state_text == "1")
                   { %>                
                <asp:TextBox ID="xstate" runat="server" Width="100px" CssClass="textbox"></asp:TextBox>
                &nbsp;<img src="../../../images/checkmark.gif" alt="" width="16px" height="16px"   />
                <% } if (enable_Save == "0")
                   { %>
                <img src="../../../images/checkmark.gif" alt="" width="16px" height="16px" />  
                             <% }  %>
            </td>
        </tr>
         <% } %>
        <tr>
            <td width="22%" class="style1">
                &nbsp;ADDRESS:
            </td>
            <td class="style1">
                <asp:TextBox ID="xaddress" runat="server" Width="400px" CssClass="textbox" 
                    Height="50px" TextMode="MultiLine"></asp:TextBox>
                <% if (address_text == "1")
                   { %>
                &nbsp;&nbsp;<img src="../../../images/checkmark.gif" alt="" width="16px" height="16px" />
                <% } if (enable_Save == "0")
                   { %>
                <img src="../../../images/checkmark.gif" alt="" width="16px" height="16px"  />
                <% }%>
            </td>
        </tr>
       
        <tr>
            <td>
                &nbsp;
                ZIP CODE: &nbsp;</td>
            <td>
            <asp:TextBox ID="xzip" runat="server" Width="100px" CssClass="textbox"></asp:TextBox>
               </td>
        </tr>
        <tr>
            <td>
                                &nbsp;
                                TELEPHONE: &nbsp;</td>
            <td>
            <asp:TextBox ID="xtelephone" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
                 <% if (telephone_text == "1")
                   { %>
                &nbsp;<img src="../../../images/checkmark.gif" alt="" width="16px" height="16px" />
                <% } if (enable_Save == "0")
                   { %><img src="../../../images/checkmark.gif" alt="" width="16px" height="16px" />
                <% }%>     </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;
                E-MAIL:
                </td>
            <td>
            <asp:TextBox ID="xemail" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
            <% if (email_text == "1")
                   { %>
                &nbsp;<img src="../../../images/checkmark.gif" alt="" width="16px" height="16px" />
                <% } if (enable_Save == "0")
                   { %><img src="../../../images/checkmark.gif" alt="" width="16px" height="16px" />
                <% }%>     </td>
        </tr>
        
       <tr>
            <td>
                 <asp:Label ID="appID" runat="server" ForeColor="White"></asp:Label>
                  <asp:Label ID="addressID" runat="server" ForeColor="White"></asp:Label>
                  </td>
            <td>
                <asp:Button ID="UpdateApplicant" runat="server" Text="Update Address" 
                    class="button" onclick="UpdateApplicant_Click"  />
                                   
            </td>
        </tr> 
          <% } %>     
    </table>
     
        </div>
    </div>
</div>
    </form>
</body>
</html>
