<%@ Page Language="VB" AutoEventWireup="false" CodeFile="form.aspx.vb" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Applicant Form</title>
    <link href="FormStyle.css" rel="stylesheet" type="text/css" />
</head>
<body id="validationform">
    <h1>Applicant Form</h1>
    <form id="form1" runat="server" method="get" action="display.aspx">
        <div>
            <asp:ValidationSummary
                ID="ValidationSummary"
                runat="server"
                HeaderText="Please correct the following entries" />
            <asp:TextBox
                ID="txtFirstName"
                runat="server"
                Text=""
                placeholder="First Name"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="rfvFirstName"
                runat="server"
                Display="Dynamic"
                ControlToValidate="txtFirstName"
                ErrorMessage="First Name">*
            </asp:RequiredFieldValidator>
            <asp:TextBox
                ID="txtLastName"
                runat="server"
                Text=""
                placeholder="Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="rfvLastName"
                runat="server"
                Display="Dynamic"
                ControlToValidate="txtLastName"
                ErrorMessage="Last Name">*
            </asp:RequiredFieldValidator>
            <asp:TextBox
                ID="txtSalary"
                runat="server"
                Text=""
                placeholder="Desired Yearly Salary"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="rfvSalary"
                runat="server"
                Display="Dynamic"
                ControlToValidate="txtSalary"
                ErrorMessage="Desired Salary">*
            </asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="CompareValidatorSalary"
                runat="server"
                ControlToValidate="txtSalary"
                Type="Integer"
                Operator="GreaterThan"
                ValueToCompare="0"
                ErrorMessage="Salary must be greater than 0">*
            </asp:CompareValidator>
            <p>
                Preferred department:
                <asp:DropDownList
                    ID="ddlDepartments"
                    runat="server">
                    <asp:ListItem Text="Development"></asp:ListItem>
                    <asp:ListItem Text="QA"></asp:ListItem>
                    <asp:ListItem Text="Support"></asp:ListItem>
                    <asp:ListItem Text="Data Management"></asp:ListItem>
                </asp:DropDownList>
                <p>
                    Health insurance required?
                <asp:RadioButton ID="radioYes" GroupName="insurance" runat="server" Text="Yes" />
                    <asp:RadioButton ID="radioNo" runat="server" GroupName="insurance" Text="No" />
                </p>
                <asp:TextBox
                    ID="txtInterviewDate"
                    runat="server"
                    Text=""
                    placeholder="Preferred date for interview"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rvfInterviewDate"
                    runat="server"
                    Display="Dynamic"
                    ControlToValidate="txtInterviewDate"
                    ErrorMessage="Interview Date">*
                </asp:RequiredFieldValidator>
                <asp:RangeValidator
                    ID="rvInterviewDate"
                    runat="server"
                    Display="Dynamic"
                    ControlToValidate="txtInterviewDate"
                    Type="Date"
                    ErrorMessage="Date must be between today and 4 months from today">*
                </asp:RangeValidator>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                    CausesValidation="true" PostBackUrl="~/display.aspx" />
        </div>
    </form>
</body>
</html>
