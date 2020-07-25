Public Class arc
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        My.Response.Clear()

        Try
            Dim number As String = My.Request.QueryString("from")
            Dim body As String = My.Request.QueryString("body")
            Dim dh As String = My.Request.QueryString("dh")

            Dim smsi As New DataSet1TableAdapters.sms_inputTableAdapter
            My.Response.Write(smsi.Insert(number, body, dh))
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

        My.Response.End()

    End Sub

End Class