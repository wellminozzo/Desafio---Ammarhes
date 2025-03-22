<!-- #include file="data/conexaoDB.asp" -->

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="src/css/bootstrap.min.css">
    <title>Desafio Cadastro</title>
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-body-tertiary" >
    <form id="cadastroForm" action="cadastro_user.asp" method="post" class="border p-4 rounded" style="width: 350px; border-color: #007bff; background-color: #d3d3d3" onsubmit="return validateForm()">
        <h1 class="h3 mb-3 fw-normal">Cadastrar-se</h1>
        <div class="p-2">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" name="nome" class="form-control" id="nome" value="<%=nome%>">
        </div>
        <div class="p-2">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" class="form-control" id="email" value="<%=email%>">
        </div>
        <div class="p-2">
            <label for="password" class="form-label">Senha</label>
            <input type="password" name="senha" class="form-control" id="senha" value="<%=senha%>" placeholder="Sua senha" required minlength="8">
        </div>
        <div class="p-2">
            <label for="confirmPassword" class="form-label">Confirme sua senha</label>
            <input type="password" name="confirmPassword" class="form-control" id="confirmPassword">
        </div>
        <div class="p-2">
            <button type="submit" class="btn btn-primary">Cadastrar</button>
            <a href="default.asp" class="btn btn-link">Já tem uma conta? Entrar</a>
        </div>
    </form>

<script>
    function validateForm() {
        // Verifica se as senhas coincidem
        var password = document.getElementById("senha").value;
        var confirmPassword = document.getElementById("confirmPassword").value;

        if (password !== confirmPassword) {
            alert("As senhas não coincidem!");
            return false;
        }

        // Validação de email (HTML5 já faz isso, mas podemos garantir com uma checagem extra)
        var email = document.getElementById("email").value;
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        if (!emailPattern.test(email)) {
            alert("Por favor, insira um endereço de email válido.");
            return false;
        }

        // Tudo certo
        return true;
    }
</script>

    
    
</body>
</html>