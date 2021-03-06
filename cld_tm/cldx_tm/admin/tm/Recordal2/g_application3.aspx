﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="g_application3.aspx.cs" Inherits="cld.admin.tm.Recordal2.g_application3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" data-ng-app="myModule">
<head id="Head1" runat="server">
    <title>GENERIC DATA</title>
    <link href="../../../css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../../../css/style.css" />

<link rel="stylesheet" href="../../../css/jquery.ui.all.css" />

<script type="text/javascript" src="../../../js/jquery.js"></script>

<script type="text/javascript" src="../../../ui/jquery.cookie.js"></script>

<script type="text/javascript" src="../../../ui/jquery.ui.core.js"></script>

<script type="text/javascript" src="../../../ui/jquery.ui.widget.js"></script>

<script type="text/javascript" src="../../../ui/jquery.ui.datepicker.js"></script>

<script type="text/javascript" src="../../../ui/jquery.ui.position.js"></script>
    <script src="../../../js/angular.min.js"></script>
    <script src="../../../js/smart-table.min.js"></script>

    <script src="../../../js/loading-bar.js"></script>
    <link href="../../../css/loading-bar.css" rel="stylesheet" />
    <script src="../../../js/AngularLogin22.js"></script>

    <link href="../../../css/font-awesome.min.css" rel="stylesheet" />

  

    <script src="../../../js/ng-csv.min.js"></script>

    <script src="../../../js/angular-sanitize.min.js"></script>

    <script src="../../../Scripts/alasql.min.js"></script>
    <script src="../../../Scripts/xlsx.core.min.js"></script>

<script type="text/javascript" src="../../../ui/jquery.ui.autocomplete.js"></script>
<script src="../../../js/funk.js" type="text/javascript"></script>


<script type="text/javascript">
    $(function () {
        $("table tr:nth-child(even)").addClass("striped");
    });
</script>

<script type="text/javascript">
    $(function () {
        $("#datepickerFrom").datepicker();
    });
    $(function () {
        $("#datepickerTo").datepicker();
    });		
		
</script>

<script type="text/javascript">
    $(function () {
        var availableTags = [""];
        $("#kword").autocomplete({
            source: availableTags
        });
    });
</script>
</head>
<body ng-controller="myController2">
    <form id="form1" runat="server">
   <div>
    <div class="container">
        <div class="sidebar no-print">
                 <a href="./profile.aspx">PROFILE</a> 
             
              
            </div>
        <div class="content">
            <div class="header">
                <div class="xmenu">
                    <div class="menu">
                        <ul>
                            <li><a href="../lo.aspx">
                                <img alt="" src="../../../images/logoff.png" width="16" height="16" />Log off</a></li>
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
            <table width="100%" id="searchform">
          <tr>
            <td  class="tbbg">WELCOME TO THE GENERIC UNIT</td>
          </tr>
          <tr >
            <td align="center">
            <asp:Button ID="btnReloadPage" runat="server" Text="RELOAD PAGE" class="button" 
                    onclick="btnReloadPage_Click" />
              </td>
          </tr>
         
          <tr>
            <td class="tbbg">&nbsp;PLEASE SEARCH FOR ENTRIES BELOW</td>
          </tr>
          
          <tr class="stripedout">
            <td align="center" ><%--<%Response.Write(criteria); %>--%></td>
          </tr>
          
          <tr >
            <td align="center" class="tbbg"><%--<asp:DropDownList ID="selectSearchCriteria" runat="server" AutoPostBack="False">
                <asp:ListItem Text="TRADEMARK" Value="product_title"></asp:ListItem>
                <asp:ListItem Text="ONLINE ID" Value="app_number"></asp:ListItem>
                <asp:ListItem Text="APPLICANT NAME" Value="applicant_name"></asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;

              key word:&nbsp;
              <input name="kword" type="text" id="kword"  size="50"   value="" runat="server"/>
              
              From :
              <input type="text" id="datepickerFrom" runat="server"/>
              &nbsp;
              To :
              <input type="text" id="datepickerTo" runat="server"/>
              &nbsp;--%></td>
          </tr>
         <tr >
            <td align="center">            
                <asp:Button ID="btnSearch" runat="server" Visible="false" Text="SEARCH" class="button" 
                    onclick="btnSearch_Click"   />
                <br />
              <%--  Total Records :<strong> <%=x_cnt%></strong>--%>
              </td>
            </tr>          
         
       
             <tr >
            <td style="text-align:center;" >
                <asp:GridView ID="gvX" runat="server" AllowPaging="True" AutoGenerateColumns="False" CaptionAlign="Left" CellPadding="4" EnableModelValidation="True" ForeColor="#000000" GridLines="Both" HorizontalAlign="Left" onrowcommand="gvX_RowCommand"   onpageindexchanging="gvX_PageIndexChanging"    style="margin-top: 0px; width:100%; font-size:12px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="S/N">
                            <ItemTemplate>
                                 <%#Container.DataItemIndex+1 %>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Width="30px" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="oai_no" HeaderText="ONLINE REQUEST ID.">
                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>

                         <asp:BoundField DataField="req_type" HeaderText="REQUEST TYPE">
                        <HeaderStyle HorizontalAlign="Left" Width="250px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>

                         <asp:BoundField DataField="reg_date" HeaderText="REQUEST DATE" >
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>

                        <asp:BoundField DataField="xname" HeaderText="APPLICANT NAME" ReadOnly="True">
                        <HeaderStyle HorizontalAlign="Left" Width="200px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>

                        <asp:BoundField DataField="tm_title" HeaderText="TITLE OF PRODUCT">
                        <HeaderStyle HorizontalAlign="Left" Width="200px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                       
                        <asp:BoundField DataField="xclass" HeaderText="CLASS">
                        <HeaderStyle HorizontalAlign="Left" Width="30px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>

                         <asp:BoundField DataField="xstat" HeaderText="STATUS">
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        
                        <asp:TemplateField HeaderText="" Visible="false" >
                             <ItemTemplate>
                             <asp:Label ID="lblLogStaff" runat="server" Text='<%#Eval("log_staff") %>'  ></asp:Label>                              
                             </ItemTemplate>
                              <HeaderStyle HorizontalAlign="Left" Width="10px"/>
                             <ItemStyle HorizontalAlign="Left" />
                             </asp:TemplateField>

                          <asp:TemplateField HeaderText="VIEW" >
                             <ItemTemplate>
                              <asp:ImageButton ID="btnXEdit" ImageUrl="../../../images/search.gif" runat="server" Height="16px" CommandName="TmViewClick"  CommandArgument='<%#Eval("log_staff") %>'  />
                             </ItemTemplate>
                              <HeaderStyle HorizontalAlign="Left" Width="20px"/>
                             <ItemStyle HorizontalAlign="Left" />
                             </asp:TemplateField>
                        <asp:TemplateField HeaderText="VIEW" >
                             <ItemTemplate>
                              <asp:HyperLink ID="btnnewTab" Text="New Tab" runat="server" Target="_blank" NavigateUrl='<%# string.Format("./g_application_details.aspx?x={0}", Eval("log_staff")) %>' />
                             </ItemTemplate>
                              <HeaderStyle HorizontalAlign="Left" Width="40px"/>
                             <ItemStyle HorizontalAlign="Left" />
                             </asp:TemplateField>
                      
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>


                          <table st-table="displayedCollection" st-safe-src="ListAgent" class="table table-responsive table-bordered">
        <thead>
            <tr>
                 <th  class="tbbg2">S/N</th>
                <th st-sort="oai_no" class="tbbg2">OAI NUMBER</th>
                 <th st-sort="reg_no" class="tbbg2">FILE NUMBER</th>
                <th st-sort="req_type" class="tbbg2">REQUEST TYPE</th>
                 <th st-sort="reg_date" class="tbbg2"> REQUEST DATE</th>
                 <th st-sort="xname" class="tbbg2">APPLICANT NAME</th>
                 <th  st-sort="tm_title" class="tbbg2">TITLE OF PRODUCT</th>
                   <th  st-sort="xclass" class="tbbg2">CLASS</th>
                   <th  st-sort="xstat" class="tbbg2">STATUS</th>

             
            
          
           
                 <th  class="tbbg2">View</th>
                <th  class="tbbg2">Open New Tab</th>

               

            </tr>
            <tr>
                <th colspan="11"><input st-search="" class="form-control" placeholder="global search ..." type="text" /></th>
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="row in displayedCollection" >
               
                <td align="center">{{row.Sn}}</td>

               
                <td align="center">{{row.oai_no}}</td>
                 <td align="center">{{row.reg_no}}</td>
                <td align="center">{{row.req_type}}</td>
                 <td align="center">{{row.reg_date}}</td>
                <td align="center">{{row.xname}}</td>
                <td align="center">{{row.tm_title}}</td>
                 <td align="center">{{row.xclass}}</td>
                 <td align="center">{{row.xstat}}</td>
              

               
                
                 

                <td align="center">
               <a href="./g_application_detail2.aspx?x={{row.log_staff}}"><i class="fa fa-link"></i></a>
            </td>

                 <td align="center">
               
               <a target="_blank" class="icon-bar" href="./g_application_detail2.aspx?x={{row.log_staff}}"> <i class="fa fa-external-link"></i></a>
            </td>
                
  

              
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="11" class="text-center">
                    <div st-pagination="" st-items-by-page="itemsByPage" st-displayed-pages="11"></div>
                </td>
            </tr>
        </tfoot>
    </table>
               <button type="button" ng-click="Export()" >Export To Excel</button>
               <%-- <button type="button" ng-csv="ListAgent"  csv-header="getHeader()" filename="test.csv">Export To Excel</button>--%>

                  <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                 </td>
            </tr>
             <tr >
            <td align="center">            
                &nbsp;</td>
            </tr>
             <tr >
            <td align="center">&nbsp;</td>
            </tr>
             <tr >
            <td align="center">&nbsp;</td>
            </tr>
          </table>
    </div>
</div>
</div>
    </form>
</body>
</html>