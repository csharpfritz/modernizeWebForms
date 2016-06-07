<%@ Page Title="My Travel Agenda" Async="false" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._2_Master.Default" MasterPageFile="~/2/2.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

	<asp:GridView runat="server" ID="grid"
		DataKeyNames="ID"
 		AllowSorting="true" AutoGenerateColumns="false" Width="400px">

		<Columns>
			<asp:BoundField HeaderText="Departure" DataFormatString="{0:MMM d, yyyy}" DataField="FromDateTime" SortExpression="FromDateTime" />
			<asp:BoundField HeaderText="Arrival" DataFormatString="{0:MMM d, yyyy}" DataField="ToDateTime" SortExpression="ToDateTime" />
			<asp:BoundField HeaderText="Destination" ItemStyle-HorizontalAlign="Center" DataField="Destination" SortExpression="Destination" />
			<asp:TemplateField HeaderText="Duration">
				<ItemTemplate>
					<asp:Label runat="server" Text='<%#: DateTime.Parse(Bind("ToDateTime")).Subtract(DateTime.Parse(Bind("FromDateTime"))).TotalDays.ToString("0.0") %>' />
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>

  </asp:GridView>


</asp:Content>
