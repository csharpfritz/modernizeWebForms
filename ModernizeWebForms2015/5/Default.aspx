<%@ Page Title="My Travel Agenda" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._5.Default" MasterPageFile="~/5/5.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

  <asp:ScriptManager runat="server" EnablePageMethods="true"></asp:ScriptManager>

  <div class="table-responsive">
  

    <table id="grid" class="table table-striped"">
      <thead>
        <tr>
          <th>ID</th>
          <th>Departure Date</th>
          <th>Arrival Date</th>
          <th>Destination</th>
        </tr>
      </thead>
      <tbody data-bind="foreach: trips">
        <tr>
          <td data-bind="text: Id"></td>
          <td data-bind="text: DepartureDateTime"></td>
          <td data-bind="text: ArrivalDateTime"></td>
          <td data-bind="text: Destination"></td>
        </tr>
      </tbody>
    </table>

    <script type="text/javascript">

      var myViewModel = {};

      (function() {

        PageMethods.Get(function(result, context) {
          myViewModel.trips = ko.observableArray(result);
          console.log(result);
          ko.applyBindings(myViewModel, document.getElementById("grid"));
        });

      })();

    </script>
    
  </div>

</asp:Content>