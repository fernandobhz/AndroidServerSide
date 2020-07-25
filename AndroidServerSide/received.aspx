<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="received.aspx.vb" Inherits="AndroidServerSide.received" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="number" HeaderText="number" 
                    SortExpression="number" />
                <asp:BoundField DataField="body" HeaderText="body" SortExpression="body" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="AndroidServerSide.DataSet1TableAdapters.sms_inputTableAdapter" 
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="body" Type="String" />
                <asp:Parameter Name="_date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="body" Type="String" />
                <asp:Parameter Name="_date" Type="DateTime" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
