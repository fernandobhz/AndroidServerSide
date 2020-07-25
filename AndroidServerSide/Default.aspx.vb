Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Me.IsPostBack Then
            Dim q As New DataSet1TableAdapters.QueriesTableAdapter
            Me.TextBox1.Text = q.ScalarQuery()
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim q As New DataSet1TableAdapters.QueriesTableAdapter
        q.InsertQuery(Me.TextBox1.Text)
    End Sub

End Class