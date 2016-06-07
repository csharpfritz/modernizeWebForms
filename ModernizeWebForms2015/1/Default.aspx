<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernizeWebForms2015._1_WorstCase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>

      <asp:Label ID="title" runat="server" Text="My Travel Agenda" 
          Font-Bold="True" Font-Size="24pt" Font-Underline="True">

      </asp:Label>

			<br />
			<br />

			<asp:SqlDataSource ID="data" runat="server"
				ConnectionString="<%$ ConnectionStrings:trips %>"
				SelectCommand="SELECT ID, FromDateTime, ToDateTime, Destination FROM Trips">
      </asp:SqlDataSource>

      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="data" CellPadding="4">
        <Columns>
          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
          <asp:BoundField DataField="FromDateTime" DataFormatString="{0:MMM d, yyyy}" HeaderText="From" SortExpression="FromDateTime" />
          <asp:BoundField DataField="ToDateTime" DataFormatString="{0:MMM d, yyyy}" HeaderText="To" SortExpression="ToDateTime" />
          <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
          <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Edit.aspx?id={0}" Text="Edit" />
        </Columns>
      </asp:GridView>



    </div>

  </form>

</body>
</html>
