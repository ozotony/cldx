﻿var app = angular.module("myModule", ["angular-loading-bar"]);

var serviceBaseIpo = 'http://88.150.164.30/EinaoTestEnvironment.IPO/';

var serviceBaseCld = 'http://88.150.164.30/EinaoTestEnvironment.CLD/';

app.controller('myController', ['$scope', '$http', '$rootScope', '$filter', function ($scope, $http, $rootScope, $filter) {

    GetCountries();
    function GetCountries() {
        $http({
            method: 'GET',
            url: serviceBaseIpo + 'Handlers/Getcountry.ashx'
        }).success(function (data, status, headers, config) {
            var dd = data;
            $scope.countries = data;
        }).error(function (data, status, headers, config) {
            $scope.message = 'Unexpected Error';
        });
    }
    $scope.varray = [{ name: 'First Renewal', id: 'First Renewal' }, { name: 'Subsequent Renewal', id: 'Subsequent Renewal' }]

    $scope.processing = false;

    $scope.newApplicantName = "";


    $scope.newApplicantAddress = "";


    $scope.valuedate = "";




    $scope.b = false;
    $scope.c = false;
    $scope.d = false;
    $scope.Days = 0;

    $scope.Registrar_direction = false;

    $scope.advertisements_complying = false;

    $scope.publication = false;


    $(document).ready(function () {
        var xname = $("input#xname").val();
        // var xname = "36440";

        $rootScope.xname4 = $("input#xname").val();
        // $rootScope.xname4 = '36440'
        $rootScope.xname5 = $("input#vamount").val();
        // $rootScope.xname5='12000'
        $rootScope.xname6 = $("input#vtranid").val();
        $scope.xname6a = $("input#vtype").val();
        // $rootScope.xname6 = '201412111842358'



        var Encrypt = {
            vv: xname
        }
        var formData = new FormData();
        formData.append("vv", xname);
        $http({
            method: 'POST',
            url: serviceBaseCld +'Handlers/GetApplicantRenewal.ashx',
            transformRequest: function (obj) {
                var str = [];
                for (var p in obj)
                    str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                return str.join("&");
            },
            data: Encrypt,

            //Convert the Observable Data into JSON

            headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8;' }
            //JSON.stringify({ vid: countryId })
        }).success(function (response) {
            // var content = JSON.parse(response);
            //  alert(content)
            $scope.fname = response[0].applicant_name;

            $scope.faddress = response[0].Street;

            $scope.ftitle = response[0].product_title;

         //   $scope.applicantID = response[0].applicantID;
            $scope.valuedate =response[0].reg_dt;

            //$scope.rtm = response[0].rtm;

            //$scope.xclass = response[0].xclass;



            //$scope.oai_no = response[0].oai_no;

            //$scope.CountryID = response[0].CountryID;





            //  $scope.states = data;
        }).error(function (data, status, headers, config) {
            $scope.message = 'Unexpected Error';
        });



    });






    $scope.submitForm = function () {

        //if ($scope.ApplicantName2 == null) {
        //    swal("Applicant Name Cannot Be Null", "error");

        //    return

        //}


        swal({
            title: "UPDATE RENEWAL",
            text: "CONTINUE WITH CHANGE ",
            type: "success",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55", confirmButtonText: "PROCEED!",
            cancelButtonText: "No!",
            closeOnConfirm: true,
            closeOnCancel: true
        },
function (isConfirm) {
    if (isConfirm) {
        var formData = new FormData();

        var Encrypt = {
            vv: $scope.fname,
          
            vv2: $scope.faddress,
            vv3: $scope.ftitle,
            vv4: $scope.valuedate,
            vv5: $scope.rdue_date,

            vv6: $scope.rtype,
            vv13: $rootScope.xname4,
            vv14: $rootScope.xname5,
            vv15: $rootScope.xname6,
            vv16: $scope.description
        }

        $scope.processing = true;
        formData.append("vv", JSON.stringify(Encrypt));

        if ($scope.rdue_date == "") {

            alert("You Must Select Renewal  Date")
            $scope.processing = false;
            return;

        }






        if ($scope.rtype == "") {

            alert("You Must Select   Renewal Type")
            $scope.processing = false;
            return;

        }

     

        var totalFiles = document.getElementById("File1").files.length;
        if (totalFiles == 0 ) {
            alert("Upload File")

            return;

        }

        for (var i = 0; i < totalFiles; i++) {
            var file = document.getElementById("File1").files[i];



            formData.append("FileUpload", file);
        }


        totalFiles = document.getElementById("File2").files.length;

        if (totalFiles == 0) {
            alert("Upload File")

            return;

        }

        for (var i = 0; i < totalFiles; i++) {
            var file = document.getElementById("File2").files[i];



            formData.append("FileUpload2", file);
        }


     

        $scope.processing = true;

        $http.post(serviceBaseCld +'Handlers/UpdateApplicant7.ashx', formData, {
            //  $http.post('http://localhost:49703/Handlers/UpdateApplicant5.ashx', formData, {
            transformRequest: angular.identity,
            headers: { 'Content-Type': undefined }
        })
                           .success(function (response) {


                            //   var content = JSON.parse(response);

                               if ($scope.xname6a == "backend") {

                                   window.location.href = serviceBaseCld + "admin/tm/Generic_registrar_data_details4ee.aspx?0001234445XXX43943OPFDSMZXUHSJFDSKFGKSDKGFSDKFSKFDKFD=" + response.TransactionId + "&&Recordalid=" + response.Recordal_Id;
                               }

                               else {

                                   window.location.href =serviceBaseCld +  "admin/tm/Generic_registrar_data_details4e.aspx?0001234445XXX43943OPFDSMZXUHSJFDSKFGKSDKGFSDKFSKFDKFD=" + response.TransactionId + "&&Recordalid=" + response.Recordal_Id;
                                   //    window.location.href = "http://localhost:49703/admin/tm/Generic_registrar_data_details4d.aspx?0001234445XXX43943OPFDSMZXUHSJFDSKFGKSDKGFSDKFSKFDKFD=" + $rootScope.xname6;

                               }
                           })
                           .error(function () {
                               $scope.processing = false;
                           });




    } else {
        swal("Cancelled", "Action Canceled :)", "error");

        $scope.processing = false;
    }
});



    }




    $scope.loadGroups = function () {

        $http({
            method: 'GET',
            url: serviceBaseIpo +'Handlers/Getcountry.ashx'
        }).success(function (data, status, headers, config) {
            var dd = data;
            $scope.groups = data;

        }).error(function (data, status, headers, config) {
            $scope.message = 'Unexpected Error';
        });


    };







}]);












