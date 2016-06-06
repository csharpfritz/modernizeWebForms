<%@ Page Title="My Travel Agenda" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._2_Master.Default" MasterPageFile="~/2/2.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

  <asp:GridView runat="server" ID="grid" 
    UseAccessibleHeader="true"
    SelectMethod="grid_GetData"
		ItemType="ModernizeWebForms2015.Models.Trip"
    AllowSorting="true" AutoGenerateColumns="false" Width="400">

		<Columns>
			<asp:BoundField HeaderText="Departure" DataFormatString="{0:d} {0:t}" DataField="DepartureDateTime" SortExpression="DepartureDateTime" /> 
			<asp:BoundField HeaderText="Arrival" DataFormatString="{0:d} {0:t}" DataField="ArrivalDateTime" SortExpression="ArrivalDateTime" /> 
			<asp:BoundField HeaderText="Destination" ItemStyle-HorizontalAlign="Center" DataField="Destination" SortExpression="Destination" /> 
		</Columns>

  </asp:GridView>


</asp:Content>
