<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Site pós</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TbNoticiaTableAdapter" UpdateMethod="Update">
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="not_id" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="not_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="not_id" />
                <asp:BoundField DataField="not_titulo" HeaderText="Título" SortExpression="not_titulo" />
                <asp:BoundField DataField="not_texto" HeaderText="Conteúdo" SortExpression="not_texto" />
                <asp:BoundField DataField="not_data" HeaderText="Data" SortExpression="not_data" />
                <asp:BoundField DataField="not_imagem" HeaderText="Imagem" SortExpression="not_imagem" />
                <asp:BoundField DataField="cat_id" HeaderText="Categoria" SortExpression="cat_id" />
            </Columns>
        </asp:GridView>
    </form>
    
</body>
</html>
