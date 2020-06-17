<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aluno_Listar.aspx.cs" Inherits="Prova_Questao3.Aluno_Listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />

    <script src="Scripts/jquery-3.0.0.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js">
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center text-primary">
        <h2>Listagem de Alunos</h2>
    </div>
<p>
        <asp:Repeater ID="rptAlunos" runat="server" OnItemDataBound="rptAlunos_ItemDataBound">
            <HeaderTemplate>
                <table class="table table-hover" id="sisDataTable">
                    <thead>
                        <tr>
                            <td style="width:10%"><strong>ID</strong></td>
                            <td style="width:50%"><strong>Nome</strong></td>
                            <td style="width:10%; text-align:center"><strong>Curso</strong></td>
                            <td style="width:20%; text-align:center"><strong>Detalhes</strong></td>
                        </tr>
                    </thead>
               
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "id_a") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "nome_a") %>
                    </td>
                    <td id="sttcli" style="text-align:center">
                        <%# DataBinder.Eval(Container.DataItem, "Curso_a") %>
                        
                    </td>
                    <td style="text-align:center">
                        <asp:LinkButton ID="lnkDetalhes" runat="server">
                            <a href="<%# Eval("id_a", "aluno_detalhes.aspx?id_a={0}") %>">
                                <span class="fas fa-eye"></span>
                            </a>
                        </asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </p>
    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" Text="" ID="lblMsg"></asp:Label>
        </div>
    </div>
        <div class="row" style="margin-bottom">
            <div class="col-md-4 text-center">
                        <asp:LinkButton ID="lnkInserir" CssClass="btn btn-secondary" runat="server" Text="Cadastrar" href="Aluno_Inserir.aspx"/>           
                </div>
        </div>

    <script>

        $('#sisDataTable').dataTable({
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Portuguese-Brasil.json"
            }
        });
    </script>
    </form>
</body>
</html>
