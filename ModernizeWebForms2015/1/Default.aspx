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

			<asp:SqlDataSource ID="data" runat="server"
				ConnectionString="<%$ ConnectionStrings:trips %>"
				SelectCommand="SELECT ID, DepartureDateTime, ArrivalDateTime, Destination FROM Trips">
      </asp:SqlDataSource>

      <a href="Add.aspx">Add New</a>

      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="data">
        <Columns>
          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
          <asp:BoundField DataField="DepartureDateTime" HeaderText="Departure" SortExpression="DepartureDateTime" />
          <asp:BoundField DataField="ArrivalDateTime" HeaderText="ArrivalDateTime" SortExpression="ArrivalDateTime" />
          <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
          <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Edit.aspx?id={0}" Text="Edit" />
        </Columns>
      </asp:GridView>



    </div>

  </form>

</body>
</html>
