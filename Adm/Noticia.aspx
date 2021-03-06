﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Adm/MasterPage.master" AutoEventWireup="true" CodeFile="Noticia.aspx.cs" Inherits="Adm_Noticia" %>

<%@ Register Src="~/Adm/BarraEdicao.ascx" TagPrefix="uc1" TagName="BarraEdicao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="btnLista" runat="server" Text="Listagem" OnClick="btnLista_Click" />
    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
    <asp:MultiView ID="MultiViewNoticia" runat="server">
        <asp:View ID="tabListagem" runat="server">
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TbNoticiaTableAdapter"></asp:ObjectDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="not_id" DataSourceID="ObjectDataSource1" AllowSorting="true" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="not_id" HeaderText="not_id" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="not_id" />
                    <asp:BoundField DataField="not_titulo" HeaderText="Notícia" SortExpression="not_titulo" />

                    <asp:CommandField HeaderText="Selecionar" SelectText="Selecionar" ButtonType="Button" ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
        </asp:View>

        <asp:View ID="tabCadastro" runat="server">
            <uc1:BarraEdicao runat="server" ID="BarraEdicao" /><br />
            <asp:HiddenField ID="campoID" runat="server" />
            Titulo<br />
            <asp:TextBox ID="txtNotTitulo" runat="server"></asp:TextBox><br />
            Texto<br />
            <asp:TextBox id="txtNotTexto" TextMode="multiline" Columns="50" Rows="5" runat="server" /><br />
            Data<br />
            <asp:Calendar ID="txtNotData" runat="server"></asp:Calendar><br />
            URL da Imagem<br />
            <asp:TextBox ID="txtNotImagem" runat="server"></asp:TextBox><br />
            Categoria<br />
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TbCategoriaTableAdapter">
            </asp:ObjectDataSource>
            <asp:DropDownList ID="txtCatId" DataSourceID="ObjectDataSource2" DataTextField="cat_nome" runat="server" DataValueField="cat_id" AutoPostBack="True"></asp:DropDownList>
        </asp:View>
    </asp:MultiView>
</asp:Content>
