<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aluno_Inserir.aspx.cs" Inherits="Prova_Questao3.Aluno_Inserir" %>

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
                    <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Sexo: </label>
                    <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label>Data de Nascimento: </label>
                    <asp:TextBox ID="txtDataNasc" textmode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                               
            </div>
            <div class="row" style="image-resolution:unset">
                <div class="col-md-4">
                    <label>RA: </label>
                    <asp:RequiredFieldValidator ID="rfvRA" ControlToValidate="txtRA" ErrorMessage="*" ForeColor="Red" runat="server" ></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtRA"  CssClass="form-control" MaxLength="50" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Ano de Ingresso:</label>
                    <asp:RequiredFieldValidator ID="rfvAnoIn" ControlToValidate="txtAnoIn" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtAnoIn"  CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Curso:</label>
                    <asp:RequiredFieldValidator ID="rfvCurso" ControlToValidate="txtCurso" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCurso" T CssClass="form-control" MaxLength="12" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="row" style="margin-top:15px">
                
                
                <div class="col-md-6">
                    <label>Email: </label>
                    <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Logradouro: </label>
                    <asp:RequiredFieldValidator ID="rfvLog" ControlToValidate="txtLog" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtLog" CssClass="form-control" MaxLength="100" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Número: </label>
                    <asp:RequiredFieldValidator ID="rfvNum" ControlToValidate="txtNum" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNum" CssClass="form-control" MaxLength="5" runat="server" ></asp:TextBox>
                </div>                
            </div>

            <div class="row" style="margin-top:15px">
                <div class="col-md-3">
                    <label>Bairro:</label>
                    <asp:RequiredFieldValidator ID="rfvBairro" ControlToValidate="txtBairro" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtBairro" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Cidade: </label>
                    <asp:RequiredFieldValidator ID="rfvCidade" ControlToValidate="txtCidade" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCidade"  CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>UF: </label>
                    <asp:RequiredFieldValidator ID="rfvUF" ControlToValidate="txtUF" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUF" CssClass="form-control" MaxLength="2" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Complemento: </label>
                    <asp:TextBox ID="txtComple" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row" style="margin-left:15px">
                <div class="col-md-4">
                    <asp:Label ID="lblResultado" runat="server"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="btnCadastrar" CssClass="btn btn-primary" Text="Cadastrar" runat="server" OnClick="btnCadastrar_Click1"/>
                <div class="col-md-4 text-center">
                        <asp:LinkButton ID="lnkListar" CssClass="btn btn-secondary" runat="server" Text="Listar" href="Aluno_Listar.aspx"/>           
                </div>
                </div>
                
            </div>

            

        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

