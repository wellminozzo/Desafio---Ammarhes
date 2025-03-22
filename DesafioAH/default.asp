<!-- #include file="data/conexaoDB.asp" -->

<%
strStatus = Request.Item("strStatus")
strMSG = ""

select case ucase(trim(strStatus))
    case "ADD"
        strMSG = "Usuário Cadastrado"
    case "ALT"
        strMSG = "Usuário Atualizado"
    case "EXC"
        strMSG = "Usuário Deletado"
    case Else
        strMSG = ""            
end select
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="src/css/bootstrap.min.css">
    <title>Desafio Login</title>
    
</head>

        
<body class="d-flex align-items-center justify-content-center vh-100 bg-body-tertiary ">
    <% if trim(strMSG) <> "" then %>
    <div class="alert alert-success alert-dismissible fade show position-fixed top-0 start-0 w-100" role="alert" style="z-index: 1050;">
        <%=strMSG%>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% end if %>
    <form action="processar_login.asp" method="post" class="border p-4 rounded" style="width: 350px; border-color: #007bff; background-color: #d3d3d3">
       
        <h1 class="h3 mb-3 fw-normal">Acessar a Plataforma</h1>
        <div class="p-2">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input type="email" name="email" class="form-control" id="email" value="<%=email%>">
        </div>
        <div class="p-2">
            <label for="exampleInputPassword1" class="form-label">Senha</label>
            <input type="password" name="senha" class="form-control" id="senha" value="<%=senhaHash%>" placeholder="Sua senha" required>
            <br>
            <div class="d-flex justify-content-between align-items-center">
                <button type="submit" class="btn btn-primary">Entrar</button>
                <a href="cadastro.asp" class="btn btn-link">Cadastrar-se</a>
            </div>
        </div>
    </form>

</body>
<script src="src/js/bootstrap.bundle.min.js"></script> 
</html>