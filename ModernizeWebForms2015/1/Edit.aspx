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
        SelectCommand="SELECT ID, FromDateTime, ToDateTime, Destination FROM Trips WHERE ([Id] = @Id)" 
				DeleteCommand="DELETE FROM [Trips] WHERE [Id] = @Id" 
				InsertCommand="INSERT INTO [Trips] ([FromDateTime], [ToDateTime], [Destination]) VALUES (@FromDateTime, @ToDateTime, @Destination)" 
				UpdateCommand="UPDATE [Trips] SET [FromDateTime] = @FromDateTime, [ToDateTime] = @ToDateTime, [Destination] = @Destination WHERE [Id] = @Id">
        <SelectParameters>
          <asp:QueryStringParameter QueryStringField="id" DefaultValue="0" Name="Id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
          <asp:Parameter Name="FromDateTime" Type="datetime"></asp:Parameter>
          <asp:Parameter Name="ToDateTime" Type="datetime"></asp:Parameter>
          <asp:Parameter Name="Destination" Type="string"></asp:Parameter>
          <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
      </asp:SqlDataSource>

      <asp:FormView runat="server" ID="editForm" DefaultMode="Edit" DataSourceID="myData">
        <EditItemTemplate>

          <asp:Label runat="server" Text="ID:" Width="100"></asp:Label>
          <asp:Label runat="server" ID="id" Width="100" Text='<%#: Bind("Id") %>'></asp:Label>
          <br />

          <asp:Label runat="server" Text="From:" Width="100"></asp:Label>
          <asp:TextBox runat="server" ID="FromDateTime" Text='<%#: Bind("FromDateTime") %>'></asp:TextBox>
          <br />

          <asp:Label runat="server" Text="To:" Width="100"></asp:Label>
          <asp:TextBox runat="server" ID="ToDateTime" Text='<%#: Bind("ToDateTime") %>'></asp:TextBox>
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
