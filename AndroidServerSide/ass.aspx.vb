Public Class ass
    Inherits System.Web.UI.Page

    Private db As New AssModelContainer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        My.Response.Clear()

        Dim r As New AllRequests
        r.Page = "ass.aspx"
        r.Request = Request.RawUrl
        r.Required = Now

        db.AllRequests.Add(r)
        db.SaveChanges()

        If String.IsNullOrEmpty(Request.QueryString("result")) Then
            If 1 = 1 Then
                Dim s As New SMSOutput
                db.SMSOutput.Add(s)
                db.SaveChanges()

                s.Message = String.Format("Message {0} - {1}", s.Id, Now.ToString("yyyy-MM-dd-HH-mm-ss"))
                s.Number = "3191990751"

                r.Response = String.Format("SMS:{0}:{1}:{2}", s.Id, s.Number, s.Message)
                Response.Write(r.Response)
                db.SaveChanges()
            End If
        Else
            Dim CommandId As Integer = Request.QueryString("command_id")
            Dim s As SMSOutput = db.SMSOutput.SingleOrDefault(Function(X) X.Id = CommandId)

            If s Is Nothing Then
                r.Response = String.Format("Command {0} not found", CommandId)
                Response.Write(r.Response)
            Else
                s.Result = Request.QueryString("result")
                db.SaveChanges()
            End If
        End If

        db.SaveChanges()

        My.Response.End()
    End Sub

End Class