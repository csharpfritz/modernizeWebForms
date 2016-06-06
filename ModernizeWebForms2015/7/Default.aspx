<%@ Page Title="Board Games Inventory" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._7.Default1" MasterPageFile="~/7/7.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

  <div data-ng-controller="myController">

    <table id="grid" class="table table-striped table-hover">
      <thead>
        <tr>
          <th><a href="#" data-ng-click="orderByField='Id'; orderByAsc=!orderByAsc;">ID</a></th>
          <th><a href="#" data-ng-click="orderByField='Name'; orderByAsc=!orderByAsc;">Name</a></th>
          <th><a href="#" data-ng-click="orderByField='PriceUSD'; orderByAsc=!orderByAsc;">Price USD</a></th>
          <th><a href="#" data-ng-click="orderByField='InStock'; orderByAsc=!orderByAsc;">In Stock</a></th>
        </tr>
      </thead>
      <tbody data-ng-repeat="game in games |orderBy:orderByField:orderByAsc">
        <tr>
          <td>{{game.Id}}</td>
          <td>{{game.Name}}</td>
          <td>{{game.PriceUSD}}</td>
          <td>{{game.InStock}}</td>
        </tr>
      </tbody>
    </table>

  </div>

  <script type="text/javascript">

    (function() {

      var myController = function($scope, $http) {

        $scope.orderByField = "Id";
        $scope.orderByAsc = false;

        $http.get("/api/BoardGame")
          .success(function(data) {
          console.log(data);
            $scope.games = data;
          });

      };

      angular.module("form2Spa").controller("myController", myController, ['$scope', '$http']);

    })();

  </script>

</asp:Content>