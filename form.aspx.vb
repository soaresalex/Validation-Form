
Partial Class form
    Inherits System.Web.UI.Page

    Private Sub form_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            rvInterviewDate.MinimumValue = Today.ToShortDateString
            rvInterviewDate.MaximumValue = Today.AddDays(40).ToShortDateString
        End If
    End Sub

    Public ReadOnly Property FirstName() As String
        Get
            Return txtFirstName.Text
        End Get
    End Property

    Public ReadOnly Property LastName() As String
        Get
            Return txtLastName.Text
        End Get
    End Property

    Public ReadOnly Property DesiredSalary() As String
        Get
            Return "$" + txtSalary.Text
        End Get
    End Property

    Public ReadOnly Property Department() As String
        Get
            Return ddlDepartments.Text
        End Get
    End Property

    Public ReadOnly Property HealthInsurance() As String
        Get
            If radioYes.Checked = True Then
                Return "Yes"
            Else
                Return "No"
            End If
        End Get
    End Property

    Public ReadOnly Property InterviewDate() As String
        Get
            Return txtInterviewDate.Text
        End Get
    End Property
End Class
