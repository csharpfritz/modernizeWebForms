<%@ Page Title="My Trip Agenda" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._7.Default1" MasterPageFile="~/7/7.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

  <div data-ng-controller="myController">

    <table id="grid" class="table table-striped table-hover">
      <thead>
        <tr>
          <th><a href="#" data-ng-click="orderByField='Id'; orderByAsc=!orderByAsc;">ID</a></th>
          <th><a href="#" data-ng-click="orderByField='FromDateTime'; orderByAsc=!orderByAsc;">From</a></th>
          <th><a href="#" data-ng-click="orderByField='ToDateTime'; orderByAsc=!orderByAsc;">To</a></th>
          <th><a href="#" data-ng-click="orderByField='Destination'; orderByAsc=!orderByAsc;">Destination</a></th>
        </tr>
      </thead>
      <tbody data-ng-repeat="trip in trips |orderBy:orderByField:orderByAsc">
        <tr>
          <td>{{trip.ID}}</td>
          <td>{{trip.FromDateTime| date:'mediumDate'}}</td>
          <td>{{trip.ToDateTime| date:'mediumDate'}}</td>
          <td>{{trip.Destination}}</td>
        </tr>
      </tbody>
    </table>

  </div>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="scriptsContent">


  <script type="text/javascript">

    (function() {

      var myController = function($scope, $http) {

        $scope.orderByField = "ID";
        $scope.orderByAsc = false;

        $http.get("/api/Trip")
          .success(function(data) {
          console.log(data);
            $scope.trips = data;
          });

      };

      angular.module("modernWebForms").controller("myController", myController, ['$scope', '$http']);

    })();

  </script>

</asp:Content>