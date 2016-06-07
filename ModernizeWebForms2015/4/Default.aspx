<%@ Page Title="My Travel Agenda" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._4.Default" MasterPageFile="~/4/4.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="bodyContent">

  <div class="table-responsive">

    <asp:GridView runat="server" ID="grid"
      CssClass="table table-striped" UseAccessibleHeader="true"
			OnCallingDataMethods="grid_CallingDataMethods"
			ItemType="ModernizeWebForms2015.Models.Trip"
      AllowSorting="false" AutoGenerateColumns="false"
      SelectMethod="Get">
		<Columns>
			<asp:BoundField HeaderText="From" DataFormatString="{0:MMM d, yyyy}" DataField="FromDateTime" SortExpression="FromDateTime" />
			<asp:BoundField HeaderText="To" DataFormatString="{0:MMM d yyyy}" DataField="ToDateTime" SortExpression="ToDateTime" />
			<asp:BoundField HeaderText="Destination" ItemStyle-HorizontalAlign="Center" DataField="Destination" SortExpression="Destination" />
			<asp:TemplateField HeaderText="Duration">
				<ItemTemplate>
					<asp:Label runat="server" Text='<%#: $"{Item.ToDateTime.Subtract(Item.FromDateTime).TotalDays.ToString("0.0")} days" %>' />
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>


    </asp:GridView>

  </div>

</asp:Content>

<%--
	
			<asp:DynamicField DataField="FromDateTime" />
			<asp:DynamicField DataField="ToDateTime" />
			<asp:DynamicField DataField="Destination" />

--%>