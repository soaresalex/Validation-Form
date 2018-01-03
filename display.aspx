<%@ Page Language="VB" AutoEventWireup="false" CodeFile="display.aspx.vb" Inherits="display" %>
<%@ PreviousPageType VirtualPath="~/form.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Completed Form</title>
    <link href="FormStyle.css" rel="stylesheet" type="text/css" />
</head>
<body id="displayForm">
    <h1>Applicant Form</h1>
    <form id="form1" runat="server">
        <div>
            <p>First Name:
                <asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label></p>
            <p>Last Name:
                <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label></p>
            <p>Desired Yearly Salary:
                <asp:Label ID="lblSalary" runat="server" Text=""></asp:Label></p>
            <p>Desired Department:
                <asp:Label ID="lblDepartment" runat="server" Text=""></asp:Label></p>
            <p>Do you require health insurance?
                <asp:Label ID="lblInsurance" runat="server" Text=""></asp:Label></p>
            <p>Preferred date for interview:
                <asp:Label ID="lblInterviewDate" runat="server" Text=""></asp:Label></p>
        </div>
    </form>
</body>
</html>
