﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="g_applications.aspx.cs" Inherits="cld.admin.tm.search_unit.g_applications" %>

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
   

    <script data-require="angular.js@1.5.0" data-semver="1.5.0" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.js"></script>
    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-1.2.4.js"></script>
    <script src="../../../js/smart-table.min.js"></script>

    <script src="../../../js/loading-bar.js"></script>
    <link href="../../../css/loading-bar.css" rel="stylesheet" />
  
    <script src="../../../js/ui-bootstrap-tpls-0.14.3.min.js"></script>

    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-2.5.0.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="../../../js/AngularLogin22.js"></script>

    <link href="../../../css/font-awesome.min.css" rel="stylesheet" />

  

    <script src="../../../js/ng-csv.min.js"></script>

    <script src="../../../js/angular-sanitize.min.js"></script>

    <script src="../../../Scripts/alasql.min.js"></script>
    <script src="../../../Scripts/xlsx.core.min.js"></script>
       
    <link href="../../../css/sweet-alert.css" rel="stylesheet" />
    <script src="../../../js/sweet-alert.min.js"></script>


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

     <script type="text/ng-template" id="myModalContent2.html">
        <div class="modal-header">
            <h3 class="modal-title" id="modal-title"><span style="font-weight:bold ;font-size:10px ;"> Search Detail Details </span></h3>
        </div>

        <div class="modal-body">

                                   <table st-table="displayedCollection2" st-safe-src="ListAgent2" class="table table-responsive table-bordered">
        <thead>
            <tr>
                 <th  class="tbbg2">ACCEPTANCE DATE </th>
                <th st-sort="oai_no" class="tbbg2">OAI NUMBER</th>
                 <th st-sort="reg_no" class="tbbg2">FILE NUMBER</th>
                <th st-sort="req_type" class="tbbg2">APPLICANT NAME</th>
                 <th st-sort="reg_date" class="tbbg2"> PRODUCT TITLE</th>
                
                
                   <th  st-sort="xstat" class="tbbg2">STATUS</th>

                  

               

            </tr>
            <tr>
                <th colspan="12"><input st-search="" class="form-control" placeholder="global search ..." type="text" /></th>
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="row in displayedCollection2" >
               
                <td align="center">{{row.AcceptanceDate}}</td>

               
                <td align="center">{{row.oai_no}}</td>
                 <td align="center">{{row.reg_no}}</td>
                <td align="center">{{row.applicant_name}}</td>
                 <td align="center">{{row.product_title}}</td>
             
             
               
                 <td align="center">{{row.xstat}}</td>
            
                
                
  

              
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="13" class="text-center">
                    <div st-pagination="" st-items-by-page="itemsByPage" st-displayed-pages="12"></div>
                </td>
            </tr>
        </tfoot>
    </table>
          
        </div>


        <div class="modal-footer class="no-print"">


            <button ng-click="ok()" class="btn-success btn-lg btn-space" style="font-weight:bold ;font-size:10px ;" type="submit"> <i class="glyphicon glyphicon-remove no-print"></i> &nbsp Close  </button>

        </div>


    </script>
    <form id="form1" runat="server">
   <div>
    <div class="container">
        <div class="sidebar">
            <a href="../search_unit/profile.aspx">PROFILE</a> 
            <a href="../../../cp.aspx?x=<% Response.Write(admin); %>">CHANGE PASSWORD</a> 
            <a href="../search_unit/ved.aspx">VIEW STATISTICS</a>
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

                   <input id="Button1" type="button" ng-click="changeValue2()" value="UPDATE BATCH " /> 

 

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
                 <th  st-sort="xstat" class="tbbg2">REPORT</th>

                   <th  st-sort="xstat" class="tbbg2">ACTION</th>
                 <th  st-sort="xstat" class="tbbg2">SEARCH DATABASE</th>
            
          
           
                 <th  class="tbbg2">View</th>
                <th  class="tbbg2">Open New Tab</th>

               

            </tr>
            <tr>
                <th colspan="12"><input st-search="" class="form-control" placeholder="global search ..." type="text" /></th>
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
               <a target="_blank" class="icon-bar" href="../s_data_details_report2.aspx?x={{row.log_staff}}&cri=n "> <i class="fa fa-external-link"></i></a>
            </td>
              <td >
                  <label>
                                <input type="radio" ng-model="row.description"   value="Search">
                               Search
                            </label>
                 <label>
                                <input type="radio" ng-model="row.description"   value="Acceptance">
                               Acceptance
                            </label>

                   <label>
                                <input type="radio" ng-model="row.description"   value="Opposition">
                              Opposition
                            </label>
                            <label>
                                <input type="radio" ng-model="row.description"  value="Certificate">
                                Certificate
                            </label>
               
                </td>
                 <td align="center">
            <button type="button"  ng-click="submitForm3(row)" >SEARCH </button>
            </td>

                <td align="center">
               <a href="./g_application_details.aspx?x={{row.log_staff}}"><i class="fa fa-link"></i></a>
            </td>

                 <td align="center">
               
               <a target="_blank" class="icon-bar" href="./g_application_details.aspx?x={{row.log_staff}}"> <i class="fa fa-external-link"></i></a>
            </td>
                
  

              
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="13" class="text-center">
                    <div st-pagination="" st-items-by-page="itemsByPage" st-displayed-pages="12"></div>
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
