<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="ModernizeWebForms2015._1.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <asp:SqlDataSource runat="server" ID="myData" ConnectionString='<%$ ConnectionStrings:trips %>'
        SelectCommand="SELECT ID, DepartureDateTime, ArrivalDateTime, Destination FROM Trips WHERE ([Id] = @Id)" 
				DeleteCommand="DELETE FROM [Trips] WHERE [Id] = @Id" 
				InsertCommand="INSERT INTO [Trips] ([DepartureDateTime], [ArrivalDateTime], [Destination]) VALUES (@DepartureDateTime, @ArrivalDateTime, @Destination)" 
				UpdateCommand="UPDATE [Trips] SET [DepartureDateTime] = @DepartureDateTime, [ArrivalDateTime] = @ArrivalDateTime, [Destination] = @Destination WHERE [Id] = @Id">
        <SelectParameters>
          <asp:QueryStringParameter QueryStringField="id" DefaultValue="0" Name="Id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
          <asp:Parameter Name="DepartureDateTime" Type="datetime"></asp:Parameter>
          <asp:Parameter Name="ArrivalDateTime" Type="datetime"></asp:Parameter>
          <asp:Parameter Name="Destination" Type="string"></asp:Parameter>
          <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
      </asp:SqlDataSource>

      <asp:FormView runat="server" ID="editForm" DefaultMode="Edit" DataSourceID="myData">
        <EditItemTemplate>

          <asp:Label runat="server" Text="ID:" Width="100"></asp:Label>
          <asp:Label runat="server" ID="id" Width="100" Text='<%#: Bind("Id") %>'></asp:Label>
          <br />

          <asp:Label runat="server" Text="Departure:" Width="100"></asp:Label>
          <asp:TextBox runat="server" ID="DepartureDateTime" Text='<%#: Bind("DepartureDateTime") %>'></asp:TextBox>
          <br />

          <asp:Label runat="server" Text="Arrival:" Width="100"></asp:Label>
          <asp:TextBox runat="server" ID="ArrivalDateTime" Text='<%#: Bind("ArrivalDateTime") %>'></asp:TextBox>
          <br />

          <asp:Label runat="server" Text="Destination:" Width="100"></asp:Label>
          <asp:TextBox runat="server" ID="Destination" Text='<%#: Bind("Destination") %>'></asp:TextBox>

        </EditItemTemplate>
        <FooterTemplate>
          <asp:Button runat="server" CommandName="Update" Text="Update" />
          <asp:Button runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" OnClick="Unnamed_Click" />
        </FooterTemplate>
      </asp:FormView>

    </div>
    </form>
</body>
</html>
