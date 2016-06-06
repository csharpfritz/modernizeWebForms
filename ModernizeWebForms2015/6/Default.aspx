<%@ Page Title="My Travel Agenda" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._6.Default" MasterPageFile="~/6/6.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

    <table id="grid" class="table table-striped">
      <thead>
        <tr>
          <th><a href="#" class="sortHeader" data-bind="click: function() { sort('Id')}">ID</a></th>
          <th><a href="#" class="sortHeader" data-bind="click: function() { sort('Name')}">Name</a></th>
          <th><a href="#" class="sortHeader" data-bind="click: function() { sort('PriceUSD')}">Price USD</a></th>
          <th><a href="#" class="sortHeader" data-bind="click: function() { sort('InStock')}">In Stock</a></th>
        </tr>
      </thead>
      <tbody data-bind="foreach: games">
        <tr>
          <td data-bind="text: Id"></td>
          <td data-bind="text: Name"></td>
          <td data-bind="text: PriceUSD"></td>
          <td data-bind="text: InStock"></td>
        </tr>
      </tbody>
    </table>

  <script src="app.js" type="text/javascript"></script>

</asp:Content>