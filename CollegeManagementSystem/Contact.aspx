<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CollegeManagementSystem.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="941px" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="StudentId" HeaderText="StudentId" InsertVisible="False" ReadOnly="True" SortExpression="StudentId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:BoundField DataField="EmailAddr" HeaderText="EmailAddr" SortExpression="EmailAddr" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeEderConnectionString %>" SelectCommand="SELECT [StudentId], [FirstName], [LastName], [BirthDate], [EmailAddr], [Country] FROM [Students] ORDER BY [FirstName]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Students] WHERE [StudentId] = @original_StudentId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([BirthDate] = @original_BirthDate) OR ([BirthDate] IS NULL AND @original_BirthDate IS NULL)) AND (([EmailAddr] = @original_EmailAddr) OR ([EmailAddr] IS NULL AND @original_EmailAddr IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL))" InsertCommand="INSERT INTO [Students] ([FirstName], [LastName], [BirthDate], [EmailAddr], [Country]) VALUES (@FirstName, @LastName, @BirthDate, @EmailAddr, @Country)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [BirthDate] = @BirthDate, [EmailAddr] = @EmailAddr, [Country] = @Country WHERE [StudentId] = @original_StudentId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([BirthDate] = @original_BirthDate) OR ([BirthDate] IS NULL AND @original_BirthDate IS NULL)) AND (([EmailAddr] = @original_EmailAddr) OR ([EmailAddr] IS NULL AND @original_EmailAddr IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_StudentId" Type="Int32" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="original_BirthDate" />
        <asp:Parameter Name="original_EmailAddr" Type="String" />
        <asp:Parameter Name="original_Country" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="BirthDate" />
        <asp:Parameter Name="EmailAddr" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="BirthDate" />
        <asp:Parameter Name="EmailAddr" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="original_StudentId" Type="Int32" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="original_BirthDate" />
        <asp:Parameter Name="original_EmailAddr" Type="String" />
        <asp:Parameter Name="original_Country" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
