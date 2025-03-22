<!-- #include file="data/conexaoDB.asp" -->
<%
If IsEmpty(Session("usuario_nome")) Then
    Response.Redirect "default.asp"
End If
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="src/css/bootstrap.min.css">
    <title>Bem-vindo</title>
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-body-tertiary">
    <div class="text-center">
        <h1 class="h3">Bem-vindo, <%=Session("usuario_nome")%>!</h1>
        <p>Você está logado na plataforma.</p>
        <a href="sair.asp" class="btn btn-primary">Sair</a>
    </div>
</body>
</html>
