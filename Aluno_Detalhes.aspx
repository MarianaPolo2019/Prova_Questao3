<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aluno_Detalhes.aspx.cs" Inherits="Prova_Questao3.Aluno_Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <label>Cadastrar Funcionário: </label>
            <div class="row" style="margin-left:15px">
                <div class="col-md-4">
                    <label>Nome: </label>
                    <asp:TextBox ID="txtNome" runat="server" Enabled="false" CssClass="form-control" MaxLength="200"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Sexo: </label>
                    <asp:DropDownList ID="ddlSexo" runat="server"  Enabled="false" CssClass="form-control">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label>Data de Nascimento: </label>
                    <asp:TextBox ID="txtDataNasc" Enabled="false"  CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                               
            </div>
            <div class="row" style="image-resolution:unset">
                <div class="col-md-4">
                    <label>RA: </label>
                    <asp:TextBox ID="txtRA"  CssClass="form-control" Enabled="false" MaxLength="50" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Ano de Ingresso:</label>
                    <asp:TextBox ID="txtAnoIn"  CssClass="form-control" Enabled="false"  runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Curso:</label>
                    <asp:TextBox ID="txtCurso" Enabled="false" CssClass="form-control" MaxLength="12" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="row" style="margin-top:15px">
                
                
                <div class="col-md-6">
                    <label>Email: </label>
                    <asp:TextBox ID="txtEmail" Enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Logradouro: </label>
                    <asp:TextBox ID="txtLog" Enabled="false" CssClass="form-control" MaxLength="100" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Número: </label>
                    <asp:TextBox ID="txtNum" Enabled="false" CssClass="form-control" MaxLength="5" runat="server" ></asp:TextBox>
                </div>                
            </div>

            <div class="row" style="margin-top:15px">
                <div class="col-md-3">
                    <label>Bairro:</label>
                    <asp:TextBox ID="txtBairro" Enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Cidade: </label>
                    <asp:TextBox ID="txtCidade" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>UF: </label>
                    <asp:TextBox ID="txtUF" Enabled="false" CssClass="form-control" MaxLength="2" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Complemento: </label>
                    <asp:TextBox ID="txtComple" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4 text-center">
                        <asp:LinkButton ID="lnkListar" CssClass="btn btn-secondary" runat="server" Text="Listar" href="Aluno_Listar.aspx"/>           
                </div>
                <div class="col-md-4 text-center">
                        <asp:LinkButton ID="lnkAdicionar" CssClass="btn btn-secondary" runat="server" Text="Adicionar Aluno" href="Aluno_Inserir.aspx"/>           
                </div>
            </div>

                       

        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
