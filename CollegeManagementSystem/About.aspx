<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CollegeManagementSystem.NewStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .box1 {
            margin: 10px 5px 10px 68px;
            width: 100%;
        }

        .box2 {
            margin: 10px 5px 10px 65px;
            width: 100%;
        }

        .box3 {
            margin: 10px 5px 10px 70px;
            width: 100%;
        }

        .box4 {
            margin: 10px 5px 10px 40px;
            width: 100%;
        }

        .box5 {
            margin: 10px 5px 30px 80px;
            width: 100%;
        }
    </style>

    <section id="corpo">
        <br />
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="box1"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server" CssClass="box2"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Birth Date"></asp:Label>
        <asp:TextBox ID="txtBirthDate" runat="server" CssClass="box3"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
        <asp:TextBox ID="txtEmailAddr" runat="server" CssClass="box4"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Country"></asp:Label>
        <asp:TextBox ID="txtCountry" runat="server" CssClass="box5"></asp:TextBox>
        <br />
        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" Height="44px" Width="102px" />
    </section>

</asp:Content>
