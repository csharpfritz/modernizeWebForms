<%@ Page Title="My Travel Agenda" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._4.Default" MasterPageFile="~/4/4.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

  <div class="table-responsive">

    <asp:GridView runat="server" ID="grid"
      CssClass="table table-striped" UseAccessibleHeader="true"
      AllowSorting="false"
      SelectMethod="Get">
    </asp:GridView>

  </div>

</asp:Content>
