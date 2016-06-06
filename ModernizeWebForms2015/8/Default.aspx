<%@ Page Title="My Travel Agenda" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._8.Default" MasterPageFile="~/8/8.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

  <div data-ng-controller="myController">

    <kendo-grid options="gridOptions"></kendo-grid>

  </div>

  <script type="text/javascript">

    (function () {

      angular.module("form2Spa", ["kendo.directives"])
        .controller("myController", myController);

      function myController($scope) {

        $scope.gridOptions = {
          dataSource: {
            type: "odata",
            transport: {
              read: {
                url: "/api/Game",
                dataType: "json"
              },
              create: {
                url: "/api/Game",
                dataType: "json",
                type: "PUT"
              },
              update: {
                url: "/api/Game",
                dataType: "json",
                type: "POST"
              }

            },
            schema: {
              data: function(r) { return r; }, 
              total: function(r) { return r.length; },
              model: {
                id: "Id",
                fields: {
                  Id: { editable: false, nullable: false},
                  Name: { validation: { required: true}},
                  PriceUSD: { type: "number", validation: { required: true, min: 0.99}},
                  InStock: { type: "number", validation: { required: true, min: 0}}
                }
              }
            },
            pageSize: 10
          },
          sortable: true,
          editable: "popup",
          toolbar: ["create"],
          columns: [{
            field: "Id",
            editable: false
          }, {
            field: "Name"
          }, {
            field: "PriceUSD",
            title: "Price $$$"
          }, {
            field: "InStock",
            title: "# in Stock"
          },
          { command: ["edit"], title: "&nbsp;", width: "100px" }]
        }

      }

    })();

  </script>

</asp:Content>
