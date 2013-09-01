<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewToCSV.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" InsertVisible="False" SortExpression="EmployeeID"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode"></asp:BoundField>
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NorthwindConnectionString %>' SelectCommand="SELECT [EmployeeID], [FirstName], [LastName], [Address], [City], [PostalCode], [Country] FROM [Employees]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Export to CSV" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
