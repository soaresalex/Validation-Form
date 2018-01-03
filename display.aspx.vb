
Partial Class display
    Inherits System.Web.UI.Page

    Private Sub display_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblFirstName.Text = PreviousPage.FirstName
        lblLastName.Text = PreviousPage.LastName
        lblSalary.Text = PreviousPage.DesiredSalary
        lblDepartment.Text = PreviousPage.Department
        lblInsurance.Text = PreviousPage.HealthInsurance
        lblInterviewDate.Text = PreviousPage.InterviewDate
    End Sub
End Class
