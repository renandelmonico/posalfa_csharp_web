<%@ Page Title="" Language="C#" MasterPageFile="~/Adm/MasterPage.master" AutoEventWireup="true" CodeFile="Categoria.aspx.cs" Inherits="Adm_Categoria" %>

<%@ Register Src="~/Adm/BarraEdicao.ascx" TagPrefix="uc1" TagName="BarraEdicao" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="btnLista" runat="server" Text="Listagem" OnClick="btnLista_Click" />
    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />

    <asp:MultiView ID="MultiViewCategoria" runat="server">
        <asp:View ID="tabListabem" runat="server">
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TbCategoriaTableAdapter"></asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cat_id" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="cat_id" HeaderText="cat_id" InsertVisible="False" ReadOnly="True" SortExpression="cat_id" />
                    <asp:BoundField DataField="cat_nome" HeaderText="cat_nome" SortExpression="cat_nome" />
                </Columns>
            </asp:GridView>


        </asp:View>

        <asp:View ID="tabCadastro" runat="server">
            <uc1:BarraEdicao runat="server" ID="BarraEdicao" /><br />
            Nome<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </asp:View>
    </asp:MultiView>
</asp:Content>

